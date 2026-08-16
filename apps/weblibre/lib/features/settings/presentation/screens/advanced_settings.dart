/*
 * Copyright (c) 2024-2026 Fabian Freund.
 *
 * This file is part of WebLibre
 * (see https://weblibre.eu).
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:flutter_mozilla_components/flutter_mozilla_components.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weblibre/core/providers/app_state.dart';
import 'package:weblibre/core/routing/routes.dart';
import 'package:weblibre/features/settings/presentation/controllers/save_settings.dart';
import 'package:weblibre/features/settings/presentation/dialogs/user_agent_restart_dialog.dart';
import 'package:weblibre/features/settings/presentation/widgets/custom_list_tile.dart';
import 'package:weblibre/features/settings/presentation/widgets/settings_detail.dart';
import 'package:weblibre/features/user/data/models/engine_settings.dart';
import 'package:weblibre/features/user/data/models/general_settings.dart';
import 'package:weblibre/features/user/domain/providers.dart';
import 'package:weblibre/features/user/domain/repositories/cache.dart';
import 'package:weblibre/features/user/domain/repositories/engine_settings.dart';
import 'package:weblibre/features/user/domain/repositories/general_settings.dart';
import 'package:weblibre/l10n/app_localizations.dart';
import 'package:weblibre/utils/exit_app.dart';
import 'package:weblibre/utils/ui_helper.dart';

List<SettingsSectionDefinition> buildAdvancedSettingsSections(
  BuildContext context,
) {
  final l10n = AppLocalizations.of(context)!;
  return [
    SettingsSectionDefinition(
      title: l10n.contentAndIdentity,
      keywords: const ['engine'],
      entries: [
        SettingsEntryDefinition(
          title: l10n.enableJavaScript,
          subtitle: l10n.turnWebsiteScriptingOnOff,
          keywords: const ['javascript'],
          child: const _JavaScriptTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.customUserAgent,
          subtitle: l10n.overrideBrowserUserAgent,
          keywords: const ['ua'],
          child: const _UserAgentTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.useThirdPartyCaCertificates,
          subtitle: l10n.allowAndroidCaStoreCertificates,
          keywords: const ['certificates', 'enterprise roots', 'ca'],
          child: const _EnterpriseRootsTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.experimental,
      entries: [
        SettingsEntryDefinition(
          title: l10n.experimentalFeatures,
          subtitle: l10n.experimentalFeaturesSubtitle,
          keywords: const ['runtime', 'startup'],
          child: const _ExperimentalSettingsTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.developerTools,
      keywords: const ['debug'],
      entries: [
        SettingsEntryDefinition(
          title: l10n.unmountEngineOffScreen,
          subtitle: l10n.freeEngineUnderOverlay,
          keywords: const ['geckoview', 'memory', 'performance', 'suspend'],
          child: const _UnmountGeckoViewOffRouteTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.iconCache,
          subtitle: l10n.storedFavicons,
          keywords: const ['favicons', 'cache'],
          child: const _IconCacheTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.mlDownloads,
          subtitle: l10n.downloadedAiModelsRuntimeFiles,
          keywords: const ['ai', 'ml', 'models', 'onnx', 'cache'],
          child: const _MlCacheTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.errorLogs,
          subtitle: l10n.viewCopyLogsIssueReporting,
          keywords: const ['logs'],
          child: const _ErrorLogsTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.dartVm,
          subtitle: l10n.copyDartVmServiceUrl,
          keywords: const ['service url'],
          child: const _DartVmTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.resetUi,
          subtitle: l10n.rebuildEntireBrowserUi,
          keywords: const ['refresh ui'],
          child: const _ResetUITile(),
        ),
      ],
    ),
  ];
}

class AdvancedSettingsScreen extends StatelessWidget {
  const AdvancedSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SettingsDetailScaffold(
      title: l10n.advanced,
      subtitle: l10n.advancedSettingsSubtitle,
      icon: MdiIcons.tuneVertical,
      sections: buildAdvancedSettingsSections(context),
    );
  }
}

class _JavaScriptTile extends HookConsumerWidget {
  const _JavaScriptTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final javascriptEnabled = ref.watch(
      engineSettingsWithDefaultsProvider.select((s) => s.javascriptEnabled),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.enableJavaScript),
      subtitle: Text(l10n.javascriptDisabledWarning),
      // ignore: deprecated_member_use use this icon for now
      secondary: const Icon(MdiIcons.languageJavascript),
      value: javascriptEnabled,
      onChanged: (value) async {
        await ref
            .read(saveEngineSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.javascriptEnabled(value),
            );
      },
    );
  }
}

class _UserAgentTile extends HookConsumerWidget {
  const _UserAgentTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final userAgent = ref.watch(
      engineSettingsWithDefaultsProvider.select((s) => s.userAgent),
    );

    final userAgentTextController = useTextEditingController(
      text: userAgent,
      keys: [userAgent],
    );

    return ListTile(
      leading: const Icon(MdiIcons.cardAccountDetails),
      title: TextField(
        controller: userAgentTextController,
        decoration: InputDecoration(
          labelText: l10n.customUserAgent,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: 'Mozilla/5.0 …',
        ),
        onSubmitted: (value) async {
          await ref
              .read(saveEngineSettingsControllerProvider.notifier)
              .save(
                (currentSettings) => currentSettings.copyWith.userAgent(value),
              );

          if (context.mounted) {
            final restart = await showUserAgentRestartDialog(context);

            if (restart == true) {
              await exitApp(ref.container);
            }
          }
        },
      ),
    );
  }
}

class _EnterpriseRootsTile extends HookConsumerWidget {
  const _EnterpriseRootsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final enterpriseRootsEnabled = ref.watch(
      engineSettingsWithDefaultsProvider.select(
        (s) => s.enterpriseRootsEnabled,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.useThirdPartyCaCertificates),
      subtitle: Text(l10n.thirdPartyCertificatesAndroidCaStore),
      secondary: const Icon(MdiIcons.certificate),
      value: enterpriseRootsEnabled,
      onChanged: (value) async {
        await ref
            .read(saveEngineSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.enterpriseRootsEnabled(value),
            );
      },
    );
  }
}

class _ExperimentalSettingsTile extends StatelessWidget {
  const _ExperimentalSettingsTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      title: Text(l10n.experimentalFeatures),
      subtitle: Text(l10n.experimentalFeaturesSubtitle),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      leading: const Icon(MdiIcons.flaskOutline),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await ExperimentalSettingsRoute().push(context);
      },
    );
  }
}

class _UnmountGeckoViewOffRouteTile extends HookConsumerWidget {
  const _UnmountGeckoViewOffRouteTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final unmountGeckoViewOffRoute = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.unmountGeckoViewOffRoute,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.unmountEngineOffScreen),
      subtitle: Text(l10n.unmountEngineOffScreenDescription),
      secondary: const Icon(Icons.memory),
      value: unmountGeckoViewOffRoute,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.unmountGeckoViewOffRoute(value),
            );
      },
    );
  }
}

class _IconCacheTile extends HookConsumerWidget {
  const _IconCacheTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final size = ref.watch(
      iconCacheSizeMegabytesProvider.select((value) => value.value),
    );

    return CustomListTile(
      title: l10n.iconCache,
      subtitle: l10n.storedFavicons,
      prefix: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Icon(
          Icons.image,
          size: 24,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: DefaultTextStyle(
          style: GoogleFonts.robotoMono(
            textStyle: DefaultTextStyle.of(context).style,
          ),
          child: Table(
            columnWidths: const {0: FixedColumnWidth(100)},
            children: [
              TableRow(
                children: [
                  Text(l10n.size),
                  Text('${size?.toStringAsFixed(2) ?? 0} MB'),
                ],
              ),
            ],
          ),
        ),
      ),
      suffix: FilledButton.icon(
        onPressed: () async {
          await ref.read(cacheRepositoryProvider.notifier).clearCache();
        },
        icon: const Icon(Icons.delete),
        label: Text(l10n.clear),
      ),
    );
  }
}

class _MlCacheTile extends HookWidget {
  const _MlCacheTile();

  Future<bool> _confirmClear(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.clearMlDownloadsQuestion),
        content: Text(l10n.clearMlDownloadsDescription),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(l10n.clear),
          ),
        ],
      ),
    );

    return result ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isClearing = useState(false);

    return CustomListTile(
      title: l10n.mlDownloads,
      subtitle: l10n.downloadedAiModelsRuntimeFiles,
      prefix: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Icon(
          Icons.memory,
          size: 24,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
      suffix: FilledButton.icon(
        onPressed: isClearing.value
            ? null
            : () async {
                if (!await _confirmClear(context)) {
                  return;
                }

                isClearing.value = true;
                try {
                  await GeckoMlService().clearMlCache();

                  if (context.mounted) {
                    showInfoMessage(context, l10n.mlDownloadsCleared);
                  }
                } catch (e) {
                  if (context.mounted) {
                    showErrorMessage(
                      context,
                      l10n.failedToClearMlDownloads(e.toString()),
                    );
                  }
                } finally {
                  if (context.mounted) {
                    isClearing.value = false;
                  }
                }
              },
        icon: isClearing.value
            ? const SizedBox.square(
                dimension: 18,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : const Icon(Icons.delete),
        label: Text(isClearing.value ? l10n.clearing : l10n.clear),
      ),
    );
  }
}

class _ErrorLogsTile extends StatelessWidget {
  const _ErrorLogsTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      leading: Icon(
        Icons.bug_report,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      title: Text(l10n.errorLogs),
      subtitle: Text(l10n.viewCopyLogsIssueReporting),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await ErrorLogsRoute().push(context);
      },
    );
  }
}

class _DartVmTile extends StatelessWidget {
  const _DartVmTile();

  @override
  Widget build(BuildContext context) {
    if (!kDebugMode) return const SizedBox.shrink();
    final l10n = AppLocalizations.of(context)!;

    return CustomListTile(
      title: l10n.dartVm,
      subtitle: l10n.copyDartVmServiceUrl,
      prefix: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Icon(
          Icons.bug_report,
          size: 24,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
      suffix: FilledButton.icon(
        onPressed: () async {
          final serviceProtocolInfo = await Service.getInfo();

          await Clipboard.setData(
            ClipboardData(
              text: serviceProtocolInfo.serverUri?.toString() ?? 'Error',
            ),
          );

          if (context.mounted) {
            showInfoMessage(context, l10n.serviceUrlCopied);
          }
        },
        icon: const Icon(Icons.copy),
        label: Text(l10n.copy),
      ),
    );
  }
}

class _ResetUITile extends ConsumerWidget {
  const _ResetUITile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    return CustomListTile(
      title: l10n.resetUi,
      subtitle: l10n.rebuildEntireBrowserUi,
      prefix: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Icon(
          Icons.bug_report,
          size: 24,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
      suffix: FilledButton.icon(
        onPressed: () {
          ref.read(appStateKeyProvider.notifier).reset();
        },
        icon: const Icon(Icons.restore),
        label: Text(l10n.reset),
      ),
    );
  }
}
