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
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weblibre/core/routing/routes.dart';
import 'package:weblibre/features/geckoview/features/browser/domain/services/browser_addon.dart';
import 'package:weblibre/features/settings/presentation/widgets/settings_detail.dart';
import 'package:weblibre/l10n/app_localizations.dart';

List<SettingsSectionDefinition> buildExtensionsSettingsSections(
  BuildContext context,
) {
  final l10n = AppLocalizations.of(context)!;
  return [
    SettingsSectionDefinition(
      title: l10n.extensions,
      entries: [
        SettingsEntryDefinition(
          title: l10n.manageExtensions,
          subtitle: l10n.browseInstalledAndAvailableExtensions,
          keywords: const ['addons', 'browser extensions'],
          child: _ManageExtensionsTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.customCollection,
          subtitle: l10n.useCustomMozillaAddonCollection,
          keywords: const ['addons'],
          child: _AddonCollectionTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.updates,
      entries: [
        SettingsEntryDefinition(
          title: l10n.automaticUpdates,
          subtitle: l10n.automaticExtensionUpdatesEvery12Hours,
          keywords: const ['addons'],
          child: _AutoUpdateTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.security,
      entries: [
        SettingsEntryDefinition(
          title: l10n.allowUnsignedExtensions,
          subtitle: l10n.unsignedExtensionsNotVerifiedByMozilla,
          keywords: const ['addons'],
          child: _AllowUnsignedExtensionsTile(),
        ),
      ],
    ),
  ];
}

class ExtensionsSettingsScreen extends StatelessWidget {
  const ExtensionsSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SettingsDetailScaffold(
      title: l10n.extensions,
      subtitle: l10n.extensionsSettingsSubtitle,
      icon: MdiIcons.puzzleOutline,
      sections: buildExtensionsSettingsSections(context),
    );
  }
}

class _ManageExtensionsTile extends StatelessWidget {
  const _ManageExtensionsTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      leading: Icon(
        MdiIcons.puzzleEdit,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      title: Text(l10n.manageExtensions),
      subtitle: Text(l10n.browseInstalledAndAvailableExtensions),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await const AddonManagerRoute().push<void>(context);
      },
    );
  }
}

class _AddonCollectionTile extends StatelessWidget {
  const _AddonCollectionTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      leading: Icon(
        MdiIcons.folderMultiple,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      title: Text(l10n.customCollection),
      subtitle: Text(l10n.useCustomMozillaAddonCollection),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await AddonCollectionRoute().push(context);
      },
    );
  }
}

class _AutoUpdateTile extends ConsumerWidget {
  const _AutoUpdateTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final autoUpdate = ref.watch(addonAutoUpdateProvider);

    return autoUpdate.when(
      data: (enabled) => SwitchListTile.adaptive(
        title: Text(l10n.automaticUpdates),
        subtitle: Text(l10n.automaticExtensionUpdatesEvery12Hours),
        secondary: const Icon(Icons.system_update_alt),
        value: enabled,
        onChanged: (value) async {
          await ref
              .read(addonAutoUpdateProvider.notifier)
              .setEnabled(enabled: value);
        },
      ),
      loading: () => SwitchListTile.adaptive(
        title: Text(l10n.automaticUpdates),
        subtitle: Text(l10n.automaticExtensionUpdatesEvery12Hours),
        secondary: const Icon(Icons.system_update_alt),
        value: true,
        onChanged: null,
      ),
      error: (error, stack) => ListTile(
        leading: const Icon(Icons.error_outline),
        title: Text(l10n.automaticUpdates),
        subtitle: Text(l10n.extensionSettingFailedToLoad(error.toString())),
      ),
    );
  }
}

class _AllowUnsignedExtensionsTile extends ConsumerWidget {
  const _AllowUnsignedExtensionsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final allowUnsigned = ref.watch(allowUnsignedExtensionsProvider);

    return allowUnsigned.when(
      data: (allowed) => Column(
        children: [
          SwitchListTile.adaptive(
            title: Text(l10n.allowUnsignedExtensions),
            subtitle: Text(l10n.unsignedExtensionsNotVerifiedByMozilla),
            secondary: const Icon(Icons.extension_off),
            value: allowed,
            onChanged: (value) async {
              if (value) {
                final confirmed = await _showAllowUnsignedConfirmationDialog(
                  context,
                );
                if (confirmed != true) return;
              }
              await ref
                  .read(allowUnsignedExtensionsProvider.notifier)
                  .setAllowUnsigned(allow: value);
            },
          ),
          if (allowed)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(
                    context,
                  ).colorScheme.errorContainer.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.warning_amber,
                      color: Theme.of(context).colorScheme.error,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        l10n.unsignedExtensionTrustWarning,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onErrorContainer,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
      loading: () => SwitchListTile.adaptive(
        title: Text(l10n.allowUnsignedExtensions),
        subtitle: Text(l10n.unsignedExtensionsNotVerifiedByMozilla),
        secondary: const Icon(Icons.extension_off),
        value: false,
        onChanged: null,
      ),
      error: (error, stack) => ListTile(
        leading: const Icon(Icons.error_outline),
        title: Text(l10n.allowUnsignedExtensions),
        subtitle: Text(l10n.extensionSettingFailedToLoad(error.toString())),
      ),
    );
  }
}

Future<bool?> _showAllowUnsignedConfirmationDialog(BuildContext context) {
  return showDialog<bool>(
    context: context,
    builder: (context) => const _AllowUnsignedConfirmationDialog(),
  );
}

class _AllowUnsignedConfirmationDialog extends HookWidget {
  const _AllowUnsignedConfirmationDialog();

  static const _countdownSeconds = 15;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final remaining = useState(_countdownSeconds);

    useEffect(() {
      final timer = Timer.periodic(const Duration(seconds: 1), (_) {
        if (remaining.value > 0) {
          remaining.value--;
        }
      });
      return timer.cancel;
    }, []);

    final theme = Theme.of(context);
    final canConfirm = remaining.value == 0;

    return AlertDialog(
      icon: Icon(
        Icons.warning_amber_rounded,
        color: theme.colorScheme.error,
        size: 40,
      ),
      title: Text(l10n.allowUnsignedExtensionsQuestion),
      content: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '${l10n.unsignedExtensionsSecurityWarning}\n\n',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.error,
              ),
            ),
            TextSpan(text: '${l10n.unsignedExtensionsRiskDetails}\n\n'),
            TextSpan(text: l10n.unsignedExtensionsDeveloperOnly),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(l10n.cancel),
        ),
        FilledButton(
          onPressed: canConfirm ? () => Navigator.of(context).pop(true) : null,
          style: FilledButton.styleFrom(
            backgroundColor: theme.colorScheme.error,
            foregroundColor: theme.colorScheme.onError,
          ),
          child: Text(
            canConfirm ? l10n.allow : l10n.allowAfterSeconds(remaining.value),
          ),
        ),
      ],
    );
  }
}
