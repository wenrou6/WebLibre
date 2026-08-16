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
import 'package:flutter_mozilla_components/flutter_mozilla_components.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nullability/nullability.dart';
import 'package:weblibre/core/routing/routes.dart';
import 'package:weblibre/features/geckoview/features/browser/presentation/dialogs/delete_data.dart';
import 'package:weblibre/features/intent_gatekeeper/domain/entities/intent_source_policy.dart';
import 'package:weblibre/features/intent_gatekeeper/domain/services/package_label_resolver.dart';
import 'package:weblibre/features/settings/presentation/controllers/save_settings.dart';
import 'package:weblibre/features/settings/presentation/widgets/sections.dart';
import 'package:weblibre/features/settings/presentation/widgets/settings_detail.dart';
import 'package:weblibre/features/user/data/models/engine_settings.dart';
import 'package:weblibre/features/user/data/models/general_settings.dart';
import 'package:weblibre/features/user/domain/presentation/dialogs/quit_browser_dialog.dart';
import 'package:weblibre/features/user/domain/repositories/engine_settings.dart';
import 'package:weblibre/features/user/domain/repositories/general_settings.dart';
import 'package:weblibre/l10n/app_localizations.dart';
import 'package:weblibre/utils/exit_app.dart';

List<SettingsSectionDefinition> buildPrivacySecuritySettingsSections(
  BuildContext context,
) {
  final l10n = AppLocalizations.of(context)!;

  return [
    SettingsSectionDefinition(
      title: l10n.trackingProtection,
      keywords: const ['privacy'],
      entries: [
        SettingsEntryDefinition(
          title: l10n.enhancedTrackingProtection,
          subtitle: l10n.chooseTrackingProtectionAggressiveness,
          keywords: const ['etp', 'standard', 'strict', 'custom'],
          child: const _EnhancedTrackingProtectionSection(),
        ),
        SettingsEntryDefinition(
          title: l10n.contentBlockingDatabase,
          subtitle: l10n.contentBlockingDatabaseSummary,
          keywords: const ['ads', 'trackers', 'content blocking'],
          child: const _ContentBlockingDatabaseTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.bounceTrackingProtection,
          subtitle: l10n.bounceTrackingProtectionSummary,
          keywords: const ['redirect trackers'],
          child: const _BounceTrackingProtectionTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.queryParameterStripping,
          subtitle: l10n.queryParameterStrippingSummary,
          keywords: const ['utm'],
          child: const _QueryParameterStrippingSection(),
        ),
        SettingsEntryDefinition(
          title: l10n.trackingProtectionExceptions,
          subtitle: l10n.trackingProtectionExceptionsSubtitle,
          keywords: const ['exceptions'],
          child: const _TrackingProtectionExceptionsTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.ublockFilterListsAndHardenings,
          subtitle: l10n.ublockFilterListsAndHardeningsSubtitle,
          keywords: const ['ublock', 'filters'],
          child: const _UBlockFilterListsTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.fingerprinting,
      entries: [
        SettingsEntryDefinition(
          title: l10n.browserLanguages,
          subtitle: l10n.chooseLanguagesWebsitesCanSee,
          keywords: const ['locale'],
          child: const _BrowserLanguagesTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.fingerprintProtection,
          subtitle: l10n.fingerprintProtectionSubtitle,
          keywords: const ['privacy'],
          child: const _FingerprintProtectionTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.resistFingerprinting,
          subtitle: l10n.resistFingerprintingSubtitle,
          keywords: const ['rfp'],
          child: const _ResistFingerprintingTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.connectionSecurity,
      entries: [
        SettingsEntryDefinition(
          title: l10n.blockInsecureHttpConnections,
          subtitle: l10n.blockInsecureHttpConnectionsSummary,
          keywords: const ['https only'],
          child: const _HttpsOnlyModeSection(),
        ),
        SettingsEntryDefinition(
          title: l10n.dnsOverHttps,
          subtitle: l10n.encryptDnsLookups,
          keywords: const ['doh'],
          child: const _DnsTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.networkProtection,
      entries: [
        SettingsEntryDefinition(
          title: l10n.localNetworkAccess,
          subtitle: l10n.localNetworkAccessSummary,
          keywords: const ['lan'],
          child: const _LnaEnabledTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.blockLocalNetworkRequests,
          subtitle: l10n.blockLocalNetworkRequestsSummary,
          keywords: const ['lan'],
          child: const _LnaBlockingTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.blockLocalNetworkTrackers,
          subtitle: l10n.blockLocalNetworkTrackersSummary,
          keywords: const ['lan'],
          child: const _LnaBlockTrackersTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.privacySignalsAndModes,
      entries: [
        SettingsEntryDefinition(
          title: l10n.incognitoMode,
          subtitle: l10n.incognitoModeSummary,
          keywords: const ['private mode'],
          child: const _IncognitoModeSection(),
        ),
        SettingsEntryDefinition(
          title: l10n.screenshotProtection,
          subtitle: l10n.screenshotProtectionSummary,
          keywords: const ['screenshots'],
          child: const _ScreenshotProtectionTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.globalPrivacyControl,
          subtitle: l10n.globalPrivacyControlSummary,
          keywords: const ['gpc'],
          child: const _GlobalPrivacyControlTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.appOpeningProtection,
      entries: [
        SettingsEntryDefinition(
          title: l10n.blockAppsFromOpeningBrowser,
          subtitle: l10n.blockAppsFromOpeningBrowserSummary,
          keywords: const ['intent gatekeeper', 'external apps'],
          child: const _AppOpeningProtectionSection(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.dataManagement,
      entries: [
        SettingsEntryDefinition(
          title: l10n.deleteBrowsingData,
          subtitle: l10n.deleteBrowsingDataSummary,
          keywords: const ['clear data'],
          child: const _DeleteBrowsingDataTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.autoClearHistory,
          subtitle: l10n.autoClearHistorySummary,
          keywords: const ['history retention'],
          child: const _AutoClearHistorySection(),
        ),
        SettingsEntryDefinition(
          title: l10n.autoClearUnassignedTabs,
          subtitle: l10n.autoClearUnassignedTabsSummary,
          keywords: const ['cleanup tabs'],
          child: const _AutoClearUnassignedTabsSection(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.googleSafeBrowsing,
      entries: [
        SettingsEntryDefinition(
          title: l10n.safeBrowsingMalwareProtection,
          subtitle: l10n.safeBrowsingMalwareProtectionSummary,
          keywords: const ['google safe browsing'],
          child: const _SafeBrowsingMalwareTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.safeBrowsingPhishingProtection,
          subtitle: l10n.safeBrowsingPhishingProtectionSummary,
          keywords: const ['google safe browsing'],
          child: const _SafeBrowsingPhishingTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.advancedSecurity,
      entries: [
        SettingsEntryDefinition(
          title: l10n.webEngineHardening,
          subtitle: l10n.webEngineHardeningSummary,
          keywords: const ['hardening'],
          child: const _WebEngineHardeningTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.fissionSiteIsolation,
          subtitle: l10n.fissionSiteIsolationSummary,
          keywords: const ['site isolation'],
          child: const _FissionEnabledTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.extensionsWebApi,
          subtitle: l10n.extensionsWebApiSummary,
          keywords: const ['extension api'],
          child: const _ExtensionsWebAPIEnabledTile(),
        ),
      ],
    ),
  ];
}

class PrivacySecuritySettingsScreen extends StatelessWidget {
  const PrivacySecuritySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return SettingsDetailScaffold(
      title: l10n.privacySecurity,
      subtitle: l10n.privacySecuritySettingsSubtitle,
      icon: MdiIcons.shieldLock,
      sections: buildPrivacySecuritySettingsSections(context),
    );
  }
}

class _TrackingProtectionExceptionsTile extends StatelessWidget {
  const _TrackingProtectionExceptionsTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      leading: const Icon(MdiIcons.shieldOffOutline),
      title: Text(l10n.trackingProtectionExceptions),
      subtitle: Text(l10n.trackingProtectionExceptionsSubtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await TrackingProtectionExceptionsRoute().push(context);
      },
    );
  }
}

class _IncognitoModeSection extends HookConsumerWidget {
  const _IncognitoModeSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final deleteBrowsingDataOnQuit = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.deleteBrowsingDataOnQuit,
      ),
    );

    return Column(
      children: [
        SwitchListTile.adaptive(
          title: Text(l10n.incognitoMode),
          subtitle: Text(l10n.incognitoModeSubtitle),
          secondary: const Icon(MdiIcons.incognito),
          value: deleteBrowsingDataOnQuit != null,
          onChanged: (value) async {
            await ref
                .read(saveGeneralSettingsControllerProvider.notifier)
                .save(
                  (currentSettings) => value
                      ? currentSettings.copyWith.deleteBrowsingDataOnQuit({})
                      : currentSettings.copyWith.deleteBrowsingDataOnQuit(null),
                );
          },
        ),
        if (deleteBrowsingDataOnQuit != null)
          _DeleteBrowsingDataTypes(selectedTypes: deleteBrowsingDataOnQuit),
      ],
    );
  }
}

class _DeleteBrowsingDataTypes extends HookConsumerWidget {
  final Set<DeleteBrowsingDataType> selectedTypes;

  const _DeleteBrowsingDataTypes({required this.selectedTypes});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        children: [
          for (final type in DeleteBrowsingDataType.values)
            CheckboxListTile.adaptive(
              value: selectedTypes.contains(type),
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(_deleteBrowsingDataTypeTitle(l10n, type)),
              subtitle: _deleteBrowsingDataTypeDescription(
                l10n,
                type,
              ).mapNotNull((description) => Text(description)),
              onChanged: (value) async {
                final notifier = ref.read(
                  saveGeneralSettingsControllerProvider.notifier,
                );

                if (value == true) {
                  await notifier.save(
                    (currentSettings) =>
                        currentSettings.copyWith.deleteBrowsingDataOnQuit({
                          ...currentSettings.deleteBrowsingDataOnQuit!,
                          type,
                        }),
                  );
                } else {
                  await notifier.save(
                    (currentSettings) =>
                        currentSettings.copyWith.deleteBrowsingDataOnQuit(
                          {...currentSettings.deleteBrowsingDataOnQuit!}
                            ..remove(type),
                        ),
                  );
                }
              },
            ),
        ],
      ),
    );
  }
}

class _DeleteBrowsingDataTile extends StatelessWidget {
  const _DeleteBrowsingDataTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      title: Text(l10n.deleteBrowsingData),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      leading: const Icon(MdiIcons.databaseRemove),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await showDeleteDataDialog(context);
      },
    );
  }
}

class _AutoClearHistorySection extends HookConsumerWidget {
  const _AutoClearHistorySection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final historyAutoCleanInterval = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.historyAutoCleanInterval,
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.autoClearHistory),
            subtitle: Text(l10n.autoClearHistorySummary),
            leading: const Icon(MdiIcons.deleteClock),
            contentPadding: EdgeInsets.zero,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: DropdownMenu<Duration>(
              initialSelection: historyAutoCleanInterval,
              inputDecorationTheme: InputDecorationTheme(
                prefixIconConstraints: BoxConstraints.tight(
                  const Size.square(24),
                ),
              ),
              width: double.infinity,
              dropdownMenuEntries: [
                DropdownMenuEntry(value: Duration.zero, label: l10n.never),
                DropdownMenuEntry(
                  value: const Duration(days: 1),
                  label: l10n.durationDays(1),
                ),
                DropdownMenuEntry(
                  value: const Duration(days: 3),
                  label: l10n.durationDays(3),
                ),
                DropdownMenuEntry(
                  value: const Duration(days: 7),
                  label: l10n.durationWeeks(1),
                ),
                DropdownMenuEntry(
                  value: const Duration(days: 14),
                  label: l10n.durationWeeks(2),
                ),
                DropdownMenuEntry(
                  value: const Duration(days: 30),
                  label: l10n.durationMonths(1),
                ),
                DropdownMenuEntry(
                  value: const Duration(days: 90),
                  label: l10n.durationMonths(3),
                ),
              ],
              onSelected: (value) async {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) => currentSettings.copyWith
                          .historyAutoCleanInterval(value ?? Duration.zero),
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _AutoClearUnassignedTabsSection extends HookConsumerWidget {
  const _AutoClearUnassignedTabsSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final unassignedTabsAutoCleanInterval = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.unassignedTabsAutoCleanInterval,
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.autoClearUnassignedTabs),
            subtitle: Text(l10n.autoClearUnassignedTabsSummary),
            leading: const Icon(MdiIcons.tabRemove),
            contentPadding: EdgeInsets.zero,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: DropdownMenu<Duration>(
              initialSelection: unassignedTabsAutoCleanInterval,
              inputDecorationTheme: InputDecorationTheme(
                prefixIconConstraints: BoxConstraints.tight(
                  const Size.square(24),
                ),
              ),
              width: double.infinity,
              dropdownMenuEntries: [
                DropdownMenuEntry(value: Duration.zero, label: l10n.never),
                DropdownMenuEntry(
                  value: const Duration(days: 1),
                  label: l10n.durationDays(1),
                ),
                DropdownMenuEntry(
                  value: const Duration(days: 3),
                  label: l10n.durationDays(3),
                ),
                DropdownMenuEntry(
                  value: const Duration(days: 7),
                  label: l10n.durationWeeks(1),
                ),
                DropdownMenuEntry(
                  value: const Duration(days: 14),
                  label: l10n.durationWeeks(2),
                ),
                DropdownMenuEntry(
                  value: const Duration(days: 30),
                  label: l10n.durationMonths(1),
                ),
                DropdownMenuEntry(
                  value: const Duration(days: 90),
                  label: l10n.durationMonths(3),
                ),
              ],
              onSelected: (value) async {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) => currentSettings.copyWith
                          .unassignedTabsAutoCleanInterval(
                            value ?? Duration.zero,
                          ),
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _GlobalPrivacyControlTile extends HookConsumerWidget {
  const _GlobalPrivacyControlTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final globalPrivacyControlEnabled = ref.watch(
      engineSettingsWithDefaultsProvider.select(
        (s) => s.globalPrivacyControlEnabled,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.globalPrivacyControl),
      secondary: const Icon(MdiIcons.incognitoCircleOff),
      value: globalPrivacyControlEnabled,
      onChanged: (value) async {
        await ref
            .read(saveEngineSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.globalPrivacyControlEnabled(value),
            );
      },
    );
  }
}

class _ScreenshotProtectionTile extends HookConsumerWidget {
  const _ScreenshotProtectionTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final enabled = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.screenshotProtectionEnabled,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.screenshotProtection),
      subtitle: Text(l10n.screenshotProtectionAndroidSubtitle),
      secondary: const Icon(MdiIcons.cameraOff),
      value: enabled,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.screenshotProtectionEnabled(value),
            );
      },
    );
  }
}

class _HttpsOnlyModeSection extends HookConsumerWidget {
  const _HttpsOnlyModeSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final httpsOnlyMode = ref.watch(
      engineSettingsWithDefaultsProvider.select((s) => s.httpsOnlyMode),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.blockInsecureHttpConnections),
            leading: const Icon(MdiIcons.lockOpen),
            contentPadding: EdgeInsets.zero,
          ),
          Center(
            child: SegmentedButton<HttpsOnlyMode>(
              segments: [
                ButtonSegment(
                  value: HttpsOnlyMode.disabled,
                  label: Text(l10n.disabled),
                ),
                ButtonSegment(
                  value: HttpsOnlyMode.enabled,
                  label: Text(l10n.enabled),
                ),
                ButtonSegment(
                  value: HttpsOnlyMode.privateOnly,
                  label: Text(l10n.privateModeOnly),
                ),
              ],
              selected: {httpsOnlyMode},
              onSelectionChanged: (value) async {
                await ref
                    .read(saveEngineSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) =>
                          currentSettings.copyWith.httpsOnlyMode(value.first),
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _DnsTile extends StatelessWidget {
  const _DnsTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      title: Text(l10n.dnsOverHttps),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      leading: const Icon(MdiIcons.dns),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await DohSettingsRoute().push(context);
      },
    );
  }
}

class _EnhancedTrackingProtectionSection extends HookConsumerWidget {
  const _EnhancedTrackingProtectionSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final trackingProtectionPolicy = ref.watch(
      engineSettingsWithDefaultsProvider.select(
        (s) => s.trackingProtectionPolicy,
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.enhancedTrackingProtection),
            leading: const Icon(MdiIcons.incognitoCircleOff),
            contentPadding: EdgeInsets.zero,
          ),
          RadioGroup(
            groupValue: trackingProtectionPolicy,
            onChanged: (value) async {
              if (value != null) {
                // Save the policy change
                await ref
                    .read(saveEngineSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) => currentSettings.copyWith
                          .trackingProtectionPolicy(value),
                    );
              }

              // Navigate to custom settings screen when Custom is selected
              if (value == TrackingProtectionPolicy.custom ||
                  (value == null &&
                      trackingProtectionPolicy ==
                          TrackingProtectionPolicy.custom)) {
                if (context.mounted) {
                  await CustomTrackingProtectionRoute().push(context);
                }
              }
            },
            child: Column(
              children: [
                RadioListTile<TrackingProtectionPolicy>.adaptive(
                  value: TrackingProtectionPolicy.none,
                  title: Text(l10n.disabled),
                ),
                RadioListTile<TrackingProtectionPolicy>.adaptive(
                  value: TrackingProtectionPolicy.recommended,
                  title: Text(l10n.standard),
                  subtitle: Text(l10n.standardTrackingProtectionSubtitle),
                ),
                RadioListTile<TrackingProtectionPolicy>.adaptive(
                  value: TrackingProtectionPolicy.strict,
                  title: Text(l10n.strict),
                  subtitle: Text(l10n.strictTrackingProtectionSubtitle),
                ),
                RadioListTile<TrackingProtectionPolicy>.adaptive(
                  value: TrackingProtectionPolicy.custom,
                  toggleable: true,
                  title: Text(l10n.custom),
                  subtitle: Text(l10n.customTrackingProtectionChoiceSubtitle),
                  secondary: Icon(Icons.chevron_right),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ContentBlockingDatabaseTile extends HookConsumerWidget {
  const _ContentBlockingDatabaseTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final useContentBlockingDatabase = ref.watch(
      engineSettingsWithDefaultsProvider.select(
        (s) => s.useContentBlockingDatabase,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.contentBlockingDatabase),
      subtitle: Text(l10n.contentBlockingDatabaseSubtitle),
      secondary: const Icon(Icons.storage),
      value: useContentBlockingDatabase,
      onChanged: (value) async {
        await ref
            .read(saveEngineSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.useContentBlockingDatabase(value),
            );
        if (context.mounted) {
          await _showRestartDialog(context, ref);
        }
      },
    );
  }
}

class _BounceTrackingProtectionTile extends HookConsumerWidget {
  const _BounceTrackingProtectionTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final bounceTrackingProtectionMode = ref.watch(
      engineSettingsWithDefaultsProvider.select(
        (s) => s.contentBlocking.bounceTrackingProtectionMode,
      ),
    );

    final isEnabled = switch (bounceTrackingProtectionMode) {
      BounceTrackingProtectionMode.disabled => false,
      BounceTrackingProtectionMode.enabled => true,
      BounceTrackingProtectionMode.enabledStandby => false,
      BounceTrackingProtectionMode.enabledDryRun => false,
    };

    return SwitchListTile.adaptive(
      title: Text(l10n.bounceTrackingProtection),
      subtitle: Text(l10n.bounceTrackingProtectionSubtitle),
      secondary: const Icon(MdiIcons.securityNetwork),
      value: isEnabled,
      onChanged: (value) async {
        await ref
            .read(saveEngineSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.bounceTrackingProtectionMode(
                    value
                        ? BounceTrackingProtectionMode.enabled
                        : BounceTrackingProtectionMode.disabled,
                  ),
            );
        if (context.mounted) {
          await _showRestartDialog(context, ref);
        }
      },
    );
  }
}

class _QueryParameterStrippingSection extends HookConsumerWidget {
  const _QueryParameterStrippingSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final queryParameterStripping = ref.watch(
      engineSettingsWithDefaultsProvider.select(
        (s) => s.queryParameterStripping,
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.queryParameterStripping),
            subtitle: Text(l10n.queryParameterStrippingSummary),
            leading: const Icon(MdiIcons.closeNetwork),
            contentPadding: EdgeInsets.zero,
          ),
          Center(
            child: SegmentedButton<QueryParameterStripping>(
              segments: [
                ButtonSegment(
                  value: QueryParameterStripping.disabled,
                  label: Text(l10n.disabled),
                ),
                ButtonSegment(
                  value: QueryParameterStripping.enabled,
                  label: Text(l10n.enabled),
                ),
                ButtonSegment(
                  value: QueryParameterStripping.privateOnly,
                  label: Text(l10n.privateModeOnly),
                ),
              ],
              selected: {queryParameterStripping},
              onSelectionChanged: (value) async {
                await ref
                    .read(saveEngineSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) => currentSettings.copyWith
                          .queryParameterStripping(value.first),
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _WebEngineHardeningTile extends StatelessWidget {
  const _WebEngineHardeningTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      title: Text(l10n.webEngineHardening),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      leading: const Icon(MdiIcons.shieldLock),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await WebEngineHardeningRoute().push(context);
      },
    );
  }
}

class _UBlockFilterListsTile extends StatelessWidget {
  const _UBlockFilterListsTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      title: Text(l10n.ublockFilterListsAndHardenings),
      subtitle: Text(l10n.ublockFilterListsAndHardeningsSubtitle),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      leading: const Icon(Icons.filter_list),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await UBlockFilterListsRoute().push<void>(context);
      },
    );
  }
}

class _FissionEnabledTile extends HookConsumerWidget {
  const _FissionEnabledTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final fissionEnabled = ref.watch(
      engineSettingsWithDefaultsProvider.select((s) => s.fissionEnabled),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.fissionSiteIsolation),
      subtitle: Text(l10n.fissionSiteIsolationSubtitle),
      secondary: const Icon(MdiIcons.shieldHalfFull),
      value: fissionEnabled,
      onChanged: (value) async {
        await ref
            .read(saveEngineSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.fissionEnabled(value),
            );
        if (context.mounted) {
          await _showRestartDialog(context, ref);
        }
      },
    );
  }
}

class _SafeBrowsingMalwareTile extends HookConsumerWidget {
  const _SafeBrowsingMalwareTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final safeBrowsingMalwareEnabled = ref.watch(
      engineSettingsWithDefaultsProvider.select(
        (s) => s.safeBrowsingMalwareEnabled,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.safeBrowsingMalwareProtection),
      subtitle: Text(l10n.safeBrowsingMalwareProtectionSubtitle),
      secondary: const Icon(Icons.bug_report_outlined),
      value: safeBrowsingMalwareEnabled,
      onChanged: (value) async {
        await ref
            .read(saveEngineSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.safeBrowsingMalwareEnabled(value),
            );
      },
    );
  }
}

class _SafeBrowsingPhishingTile extends HookConsumerWidget {
  const _SafeBrowsingPhishingTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final safeBrowsingPhishingEnabled = ref.watch(
      engineSettingsWithDefaultsProvider.select(
        (s) => s.safeBrowsingPhishingEnabled,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.safeBrowsingPhishingProtection),
      subtitle: Text(l10n.safeBrowsingPhishingProtectionSubtitle),
      secondary: const Icon(Icons.gpp_maybe_outlined),
      value: safeBrowsingPhishingEnabled,
      onChanged: (value) async {
        await ref
            .read(saveEngineSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.safeBrowsingPhishingEnabled(value),
            );
      },
    );
  }
}

class _ExtensionsWebAPIEnabledTile extends HookConsumerWidget {
  const _ExtensionsWebAPIEnabledTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final extensionsWebAPIEnabled = ref.watch(
      engineSettingsWithDefaultsProvider.select(
        (s) => s.extensionsWebAPIEnabled,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.extensionsWebApi),
      subtitle: Text(l10n.extensionsWebApiSubtitle),
      secondary: const Icon(Icons.extension),
      value: extensionsWebAPIEnabled,
      onChanged: (value) async {
        await ref
            .read(saveEngineSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.extensionsWebAPIEnabled(value),
            );
        if (context.mounted) {
          await _showRestartDialog(context, ref);
        }
      },
    );
  }
}

Future<void> _showRestartDialog(BuildContext context, WidgetRef ref) async {
  final result = await showQuitBrowserDialog(context);
  if (result == true && context.mounted) {
    await exitApp(ProviderScope.containerOf(context));
  }
}

class _AppOpeningProtectionSection extends HookConsumerWidget {
  const _AppOpeningProtectionSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final enabled = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.blockExternalAppsEnabled,
      ),
    );
    final policies = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.externalAppIntentPolicies,
      ),
    );

    return Column(
      children: [
        SettingSection(name: l10n.appOpeningProtection),
        SwitchListTile.adaptive(
          title: Text(l10n.blockAppsFromOpeningBrowser),
          subtitle: Text(l10n.blockAppsFromOpeningBrowserSubtitle),
          secondary: const Icon(MdiIcons.appsBox),
          value: enabled,
          onChanged: (value) async {
            await ref
                .read(saveGeneralSettingsControllerProvider.notifier)
                .save(
                  (current) => current.copyWith.blockExternalAppsEnabled(value),
                );
          },
        ),
        if (enabled && policies.isNotEmpty)
          _ManagedAppPolicyList(policies: policies),
      ],
    );
  }
}

class _ManagedAppPolicyList extends HookConsumerWidget {
  final Map<String, IntentSourcePolicy> policies;

  const _ManagedAppPolicyList({required this.policies});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final entries = policies.entries.toList(growable: false);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.managedApps, style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 4),
          for (final entry in entries)
            _ManagedAppPolicyTile(
              packageName: entry.key,
              policy: entry.value,
              onAction: (action) async {
                final notifier = ref.read(
                  saveGeneralSettingsControllerProvider.notifier,
                );
                switch (action) {
                  case _PolicyAction.allow:
                    await notifier.save(
                      (current) => current.copyWith.externalAppIntentPolicies({
                        ...current.externalAppIntentPolicies,
                        entry.key: IntentSourcePolicy.allow,
                      }),
                    );
                  case _PolicyAction.block:
                    await notifier.save(
                      (current) => current.copyWith.externalAppIntentPolicies({
                        ...current.externalAppIntentPolicies,
                        entry.key: IntentSourcePolicy.block,
                      }),
                    );
                  case _PolicyAction.remove:
                    await notifier.save(
                      (current) => current.copyWith.externalAppIntentPolicies(
                        {...current.externalAppIntentPolicies}
                          ..remove(entry.key),
                      ),
                    );
                }
              },
            ),
        ],
      ),
    );
  }
}

class _ManagedAppPolicyTile extends HookConsumerWidget {
  final String packageName;
  final IntentSourcePolicy policy;
  final Future<void> Function(_PolicyAction action) onAction;

  const _ManagedAppPolicyTile({
    required this.packageName,
    required this.policy,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final label = ref.watch(
      packageLabelProvider(packageName).select((value) => value.value),
    );
    final hasLabel = label != null && label.isNotEmpty;

    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(
        policy == IntentSourcePolicy.allow
            ? MdiIcons.checkCircleOutline
            : MdiIcons.cancel,
      ),
      title: Text(hasLabel ? label : packageName),
      subtitle: Text(
        hasLabel
            ? l10n.appPolicyWithPackage(
                policy == IntentSourcePolicy.allow
                    ? l10n.alwaysAllowed
                    : l10n.alwaysBlocked,
                packageName,
              )
            : (policy == IntentSourcePolicy.allow
                  ? l10n.alwaysAllowed
                  : l10n.alwaysBlocked),
      ),
      trailing: PopupMenuButton<_PolicyAction>(
        onSelected: onAction,
        itemBuilder: (context) => [
          PopupMenuItem(value: _PolicyAction.allow, child: Text(l10n.allow)),
          PopupMenuItem(value: _PolicyAction.block, child: Text(l10n.block)),
          PopupMenuItem(value: _PolicyAction.remove, child: Text(l10n.remove)),
        ],
      ),
    );
  }
}

String _deleteBrowsingDataTypeTitle(
  AppLocalizations l10n,
  DeleteBrowsingDataType type,
) => switch (type) {
  DeleteBrowsingDataType.tabs => l10n.openTabs,
  DeleteBrowsingDataType.history => l10n.browsingHistory,
  DeleteBrowsingDataType.recentSearches => l10n.recentSearches,
  DeleteBrowsingDataType.cookies => l10n.cookiesAndSiteData,
  DeleteBrowsingDataType.cache => l10n.cachedImagesAndFiles,
  DeleteBrowsingDataType.permissions => l10n.sitePermissions,
  DeleteBrowsingDataType.downloads => l10n.downloads,
};

String? _deleteBrowsingDataTypeDescription(
  AppLocalizations l10n,
  DeleteBrowsingDataType type,
) => switch (type) {
  DeleteBrowsingDataType.recentSearches => l10n.recentSearchesDataDescription,
  DeleteBrowsingDataType.cookies => l10n.cookiesAndSiteDataDescription,
  DeleteBrowsingDataType.cache => l10n.cachedImagesAndFilesDescription,
  _ => null,
};

enum _PolicyAction { allow, block, remove }

class _BrowserLanguagesTile extends StatelessWidget {
  const _BrowserLanguagesTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      title: Text(l10n.browserLanguages),
      subtitle: Text(l10n.configureBrowserLanguagesSubtitle),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      leading: const Icon(Icons.translate),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await LocaleSettingsRoute().push(context);
      },
    );
  }
}

class _FingerprintProtectionTile extends StatelessWidget {
  const _FingerprintProtectionTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      title: Text(l10n.fingerprintProtection),
      subtitle: Text(l10n.fingerprintProtectionSubtitle),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      leading: const Icon(MdiIcons.fingerprint),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await FingerprintSettingsRoute().push(context);
      },
    );
  }
}

class _ResistFingerprintingTile extends StatelessWidget {
  const _ResistFingerprintingTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      title: Text(l10n.resistFingerprinting),
      subtitle: Text(l10n.resistFingerprintingSubtitle),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      leading: const Icon(MdiIcons.shieldLock),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await const WebEngineHardeningGroupRoute(
          group: 'Resist Fingerprinting',
        ).push(context);
      },
    );
  }
}

class _LnaEnabledTile extends HookConsumerWidget {
  const _LnaEnabledTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final lnaEnabled = ref.watch(
      engineSettingsWithDefaultsProvider.select((s) => s.lnaEnabled),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.localNetworkAccess),
      subtitle: Text(l10n.localNetworkAccessSubtitle),
      secondary: const Icon(MdiIcons.lanDisconnect),
      value: lnaEnabled ?? false,
      onChanged: (value) async {
        await ref
            .read(saveEngineSettingsControllerProvider.notifier)
            .save(
              (currentSettings) => currentSettings.copyWith.lnaEnabled(value),
            );
      },
    );
  }
}

class _LnaBlockingTile extends HookConsumerWidget {
  const _LnaBlockingTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final lnaEnabled = ref.watch(
      engineSettingsWithDefaultsProvider.select((s) => s.lnaEnabled),
    );
    final lnaBlocking = ref.watch(
      engineSettingsWithDefaultsProvider.select((s) => s.lnaBlocking),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.blockLocalNetworkRequests),
      subtitle: Text(l10n.blockLocalNetworkRequestsSubtitle),
      secondary: const Icon(MdiIcons.shieldLockOpen),
      value: lnaBlocking ?? false,
      onChanged: lnaEnabled == true
          ? (value) async {
              await ref
                  .read(saveEngineSettingsControllerProvider.notifier)
                  .save(
                    (currentSettings) =>
                        currentSettings.copyWith.lnaBlocking(value),
                  );
            }
          : null,
    );
  }
}

class _LnaBlockTrackersTile extends HookConsumerWidget {
  const _LnaBlockTrackersTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final lnaEnabled = ref.watch(
      engineSettingsWithDefaultsProvider.select((s) => s.lnaEnabled),
    );
    final lnaBlockTrackers = ref.watch(
      engineSettingsWithDefaultsProvider.select((s) => s.lnaBlockTrackers),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.blockLocalNetworkTrackers),
      subtitle: Text(l10n.blockLocalNetworkTrackersSubtitle),
      secondary: const Icon(MdiIcons.shieldBug),
      value: lnaBlockTrackers ?? false,
      onChanged: lnaEnabled == true
          ? (value) async {
              await ref
                  .read(saveEngineSettingsControllerProvider.notifier)
                  .save(
                    (currentSettings) =>
                        currentSettings.copyWith.lnaBlockTrackers(value),
                  );
            }
          : null,
    );
  }
}
