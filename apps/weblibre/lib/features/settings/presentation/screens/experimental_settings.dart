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
import 'package:flutter/material.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weblibre/features/settings/presentation/controllers/save_settings.dart';
import 'package:weblibre/features/settings/presentation/widgets/settings_detail.dart';
import 'package:weblibre/features/user/data/models/engine_settings.dart';
import 'package:weblibre/features/user/domain/presentation/dialogs/quit_browser_dialog.dart';
import 'package:weblibre/features/user/domain/repositories/engine_settings.dart';
import 'package:weblibre/l10n/app_localizations.dart';
import 'package:weblibre/utils/exit_app.dart';

List<SettingsSectionDefinition> buildExperimentalSettingsSections(
  BuildContext context,
) {
  final l10n = AppLocalizations.of(context)!;
  return [
    SettingsSectionDefinition(
      title: l10n.runtimeAndStartup,
      entries: [
        SettingsEntryDefinition(
          title: l10n.isolatedContentProcess,
          subtitle: l10n.runWebContentInIsolatedProcess,
          keywords: const ['restart'],
          child: _IsolatedProcessEnabledTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.appZygoteProcess,
          subtitle: l10n.preloadContentServiceForFasterIsolatedStartup,
          keywords: const ['restart', 'android 10'],
          child: _AppZygoteProcessEnabledTile(),
        ),
      ],
    ),
  ];
}

class ExperimentalSettingsScreen extends StatelessWidget {
  const ExperimentalSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SettingsDetailScaffold(
      title: l10n.experimental,
      subtitle: l10n.experimentalSettingsSubtitle,
      icon: MdiIcons.flaskOutline,
      sections: buildExperimentalSettingsSections(context),
    );
  }
}

class _IsolatedProcessEnabledTile extends HookConsumerWidget {
  const _IsolatedProcessEnabledTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final isolatedProcessEnabled = ref.watch(
      engineSettingsWithDefaultsProvider.select(
        (s) => s.isolatedProcessEnabled,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.isolatedContentProcess),
      subtitle: Text(l10n.isolatedContentProcessRequiresRestart),
      secondary: const Icon(MdiIcons.shieldCheck),
      value: isolatedProcessEnabled,
      onChanged: (value) async {
        await ref
            .read(saveEngineSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.isolatedProcessEnabled(value),
            );
        if (context.mounted) {
          await _showRestartDialog(context);
        }
      },
    );
  }
}

class _AppZygoteProcessEnabledTile extends HookConsumerWidget {
  const _AppZygoteProcessEnabledTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final appZygoteProcessEnabled = ref.watch(
      engineSettingsWithDefaultsProvider.select(
        (s) => s.appZygoteProcessEnabled,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.appZygoteProcess),
      subtitle: Text(l10n.appZygoteProcessRequiresAndroidAndRestart),
      secondary: const Icon(MdiIcons.rocketLaunch),
      value: appZygoteProcessEnabled,
      onChanged: (value) async {
        await ref
            .read(saveEngineSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.appZygoteProcessEnabled(value),
            );
        if (context.mounted) {
          await _showRestartDialog(context);
        }
      },
    );
  }
}

Future<void> _showRestartDialog(BuildContext context) async {
  final result = await showQuitBrowserDialog(context);
  if (result == true && context.mounted) {
    await exitApp(ProviderScope.containerOf(context));
  }
}
