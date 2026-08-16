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
import 'package:weblibre/core/design/app_colors.dart';
import 'package:weblibre/core/routing/routes.dart';
import 'package:weblibre/features/app_links/domain/entities/app_link_rule.dart';
import 'package:weblibre/features/geckoview/features/tabs/domain/providers/selected_container.dart';
import 'package:weblibre/features/settings/presentation/controllers/save_settings.dart';
import 'package:weblibre/features/settings/presentation/widgets/settings_detail.dart';
import 'package:weblibre/features/user/data/models/general_settings.dart';
import 'package:weblibre/features/user/domain/repositories/general_settings.dart';
import 'package:weblibre/l10n/app_localizations.dart';

List<SettingsSectionDefinition> buildBrowsingSettingsSections(
  AppLocalizations l10n,
) => [
  SettingsSectionDefinition(
    title: l10n.browsingTabsSection,
    entries: [
      SettingsEntryDefinition(
        title: l10n.newTabDefault,
        subtitle: l10n.newTabDefaultSubtitle,
        keywords: ['regular', 'private', 'isolated'],
        child: _NewTabDefaultSection(),
      ),
      SettingsEntryDefinition(
        title: l10n.smallWebTabDefault,
        subtitle: l10n.smallWebTabDefaultSubtitle,
        keywords: ['regular', 'private', 'isolated'],
        child: _SmallWebTabDefaultSection(),
      ),
      SettingsEntryDefinition(
        title: l10n.tabListDirection,
        subtitle: l10n.tabListDirectionSubtitle,
        keywords: ['sorting', 'order'],
        child: _TabListDirectionSection(),
      ),
      SettingsEntryDefinition(
        title: l10n.tabBarDirection,
        subtitle: l10n.tabBarDirectionSubtitle,
        keywords: ['sorting', 'order'],
        child: _TabBarDirectionSection(),
      ),
      SettingsEntryDefinition(
        title: l10n.showContainerUi,
        subtitle: l10n.showContainerUiSubtitle,
        keywords: ['containers'],
        child: _ShowContainerUiTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.showIsolatedTabUi,
        subtitle: l10n.showIsolatedTabUiSubtitle,
        keywords: ['isolated tabs'],
        child: _ShowIsolatedTabUiTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.createChildTabs,
        subtitle: l10n.createChildTabsSubtitle,
        keywords: ['child tabs'],
        child: _CreateChildTabsTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.backgroundTabBehavior,
        subtitle: l10n.backgroundTabBehaviorSubtitle,
        keywords: ['switch', 'background', 'new tab', 'snackbar', 'prompt'],
        child: _BackgroundTabOpenSection(),
      ),
    ],
  ),
  SettingsSectionDefinition(
    title: l10n.browsingNavigationSection,
    entries: [
      SettingsEntryDefinition(
        title: l10n.pullToRefresh,
        subtitle: l10n.pullToRefreshSubtitle,
        keywords: ['reload'],
        child: _PullToRefreshTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.doubleBackToCloseTab,
        subtitle: l10n.doubleBackToCloseTabSubtitle,
        keywords: ['back button'],
        child: _DoubleBackCloseTabTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.tabBarSwipeBehavior,
        subtitle: l10n.tabBarSwipeBehaviorSubtitle,
        keywords: ['gestures', 'swipe'],
        child: _TabBarSwipeBehaviorSection(),
      ),
      SettingsEntryDefinition(
        title: l10n.sequentialTabNavigation,
        subtitle: l10n.sequentialTabNavigationSubtitle,
        keywords: [
          'gestures',
          'swipe',
          'next tab',
          'previous tab',
          'containers',
          'loop',
          'wrap around',
        ],
        child: _SequentialTabNavigationSection(),
      ),
      SettingsEntryDefinition(
        title: l10n.openLinksInApps,
        subtitle: l10n.openLinksInAppsSubtitle,
        keywords: ['app links', 'external apps'],
        child: _AppLinksModeSection(),
      ),
    ],
  ),
  SettingsSectionDefinition(
    title: l10n.desktopModeSection,
    entries: [
      SettingsEntryDefinition(
        title: l10n.alwaysRequestDesktopSite,
        subtitle: l10n.alwaysRequestDesktopSiteSubtitle,
        keywords: ['desktop mode', 'user agent', 'mobile site', 'tablet'],
        child: _GlobalDesktopModeTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.desktopModeSites,
        subtitle: l10n.desktopModeSitesSubtitle,
        keywords: ['desktop mode', 'per-site', 'user agent', 'exceptions'],
        child: _DesktopModeSitesTile(),
      ),
    ],
  ),
  SettingsSectionDefinition(
    title: l10n.homeScreenSection,
    entries: [
      SettingsEntryDefinition(
        title: l10n.installSitesAsApps,
        subtitle: l10n.installSitesAsAppsSubtitle,
        keywords: ['pwa', 'web apps'],
        child: _AllowNonManifestPwaInstallTile(),
      ),
    ],
  ),
  SettingsSectionDefinition(
    title: l10n.externalLinksSection,
    entries: [
      SettingsEntryDefinition(
        title: l10n.externalLinkHandling,
        subtitle: l10n.externalLinkHandlingSubtitle,
        keywords: ['intents'],
        child: _ExternalLinkHandlingSection(),
      ),
      SettingsEntryDefinition(
        title: l10n.customTabs,
        subtitle: l10n.customTabsBrowsingSubtitle,
        keywords: [
          'custom tabs',
          'in-app browser',
          'chrome custom tabs',
          'external app',
          'share',
        ],
        child: _CustomTabsTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.urlCleaner,
        subtitle: l10n.urlCleanerBrowsingSubtitle,
        keywords: ['utm', 'tracking parameters'],
        child: _UrlCleanerSettingsTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.unshortener,
        subtitle: l10n.unshortenerSubtitle,
        keywords: ['short links', 'redirects'],
        child: _UnshortenerSettingsTile(),
      ),
    ],
  ),
  SettingsSectionDefinition(
    title: l10n.bookmarks,
    entries: [
      SettingsEntryDefinition(
        title: l10n.bookmarkOpenBehavior,
        subtitle: l10n.bookmarkOpenBehaviorSubtitle,
        keywords: ['bookmarks', 'open', 'custom tab', 'isolated'],
        child: _BookmarkOpenBehaviorSection(),
      ),
    ],
  ),
];

class BrowsingSettingsScreen extends StatelessWidget {
  const BrowsingSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SettingsDetailScaffold(
      title: l10n.browsingSettings,
      subtitle: l10n.browsingSettingsSubtitle,
      icon: MdiIcons.compassOutline,
      sections: buildBrowsingSettingsSections(l10n),
    );
  }
}

class _NewTabDefaultSection extends HookConsumerWidget {
  const _NewTabDefaultSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appColors = AppColors.of(context);
    final l10n = AppLocalizations.of(context)!;
    final settings = ref.watch(generalSettingsWithDefaultsProvider);
    final defaultCreateTabType = settings.effectiveDefaultCreateTabType;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.newTabDefault),
            subtitle: Text(l10n.newTabDefaultSubtitle),
            leading: const Icon(MdiIcons.tab),
            contentPadding: EdgeInsets.zero,
          ),
          Center(
            child: SegmentedButton(
              showSelectedIcon: false,
              segments: [
                ButtonSegment(
                  value: TabType.regular,
                  label: Text(l10n.tabTypeRegular),
                  icon: const Icon(MdiIcons.tab),
                ),
                ButtonSegment(
                  value: TabType.private,
                  label: Text(l10n.tabTypePrivate),
                  icon: Icon(
                    MdiIcons.dominoMask,
                    color: defaultCreateTabType == TabType.private
                        ? null
                        : appColors.privateTabPurple,
                  ),
                ),
                if (settings.showIsolatedTabUi)
                  ButtonSegment(
                    value: TabType.isolated,
                    label: Text(l10n.tabTypeIsolated),
                    icon: Icon(
                      MdiIcons.snowflake,
                      color: defaultCreateTabType == TabType.isolated
                          ? null
                          : appColors.isolatedTabTeal,
                    ),
                  ),
              ],
              selected: {defaultCreateTabType},
              onSelectionChanged: (value) async {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) => currentSettings.copyWith
                          .storedDefaultCreateTabType(value.first),
                    );
              },
              style: switch (defaultCreateTabType) {
                TabType.regular => null,
                TabType.private => SegmentedButton.styleFrom(
                  selectedBackgroundColor: appColors.privateSelectionOverlay,
                ),
                TabType.child => null,
                TabType.isolated => SegmentedButton.styleFrom(
                  selectedBackgroundColor: appColors.isolatedSelectionOverlay,
                ),
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SmallWebTabDefaultSection extends HookConsumerWidget {
  const _SmallWebTabDefaultSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appColors = AppColors.of(context);
    final l10n = AppLocalizations.of(context)!;
    final settings = ref.watch(generalSettingsWithDefaultsProvider);
    final smallWebTabType = settings.effectiveSmallWebTabType;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.smallWebTabDefault),
            subtitle: Text(l10n.smallWebTabDefaultSubtitle),
            leading: const Icon(Icons.explore),
            contentPadding: EdgeInsets.zero,
          ),
          Center(
            child: SegmentedButton(
              showSelectedIcon: false,
              segments: [
                ButtonSegment(
                  value: TabType.regular,
                  label: Text(l10n.tabTypeRegular),
                  icon: const Icon(MdiIcons.tab),
                ),
                ButtonSegment(
                  value: TabType.private,
                  label: Text(l10n.tabTypePrivate),
                  icon: Icon(
                    MdiIcons.dominoMask,
                    color: smallWebTabType == TabType.private
                        ? null
                        : appColors.privateTabPurple,
                  ),
                ),
                if (settings.showIsolatedTabUi)
                  ButtonSegment(
                    value: TabType.isolated,
                    label: Text(l10n.tabTypeIsolated),
                    icon: Icon(
                      MdiIcons.snowflake,
                      color: smallWebTabType == TabType.isolated
                          ? null
                          : appColors.isolatedTabTeal,
                    ),
                  ),
              ],
              selected: {smallWebTabType},
              onSelectionChanged: (value) async {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) =>
                          currentSettings.copyWith.smallWebTabType(value.first),
                    );
              },
              style: switch (smallWebTabType) {
                TabType.regular => null,
                TabType.private => SegmentedButton.styleFrom(
                  selectedBackgroundColor: appColors.privateSelectionOverlay,
                ),
                TabType.child => null,
                TabType.isolated => SegmentedButton.styleFrom(
                  selectedBackgroundColor: appColors.isolatedSelectionOverlay,
                ),
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ExternalLinkHandlingSection extends HookConsumerWidget {
  const _ExternalLinkHandlingSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(generalSettingsWithDefaultsProvider);
    final tabIntentOpenSetting = settings.tabIntentOpenSetting;
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.externalLinkHandling),
            subtitle: Text(l10n.externalLinkHandlingSubtitle),
            leading: const Icon(MdiIcons.tabPlus),
            contentPadding: EdgeInsets.zero,
          ),
          RadioGroup(
            groupValue: tabIntentOpenSetting,
            onChanged: (value) async {
              if (value != null) {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) =>
                          currentSettings.copyWith.tabIntentOpenSetting(value),
                    );
              }
            },
            child: Column(
              children: [
                RadioListTile.adaptive(
                  value: TabIntentOpenSetting.ask,
                  title: Text(l10n.prompt),
                  subtitle: Text(l10n.askHowExternalLinksOpen),
                  secondary: const Icon(MdiIcons.messageQuestion),
                ),
                RadioListTile.adaptive(
                  value: TabIntentOpenSetting.regular,
                  title: Text(l10n.tabTypeRegular),
                  subtitle: Text(l10n.openExternalLinksRegularTab),
                  secondary: const Icon(MdiIcons.tab),
                ),
                RadioListTile.adaptive(
                  value: TabIntentOpenSetting.private,
                  title: Text(l10n.tabTypePrivate),
                  subtitle: Text(l10n.openExternalLinksPrivateTab),
                  secondary: Icon(
                    MdiIcons.dominoMask,
                    color: AppColors.of(context).privateTabPurple,
                  ),
                ),
                if (settings.showIsolatedTabUi)
                  RadioListTile.adaptive(
                    value: TabIntentOpenSetting.isolated,
                    title: Text(l10n.tabTypeIsolated),
                    subtitle: Text(l10n.openExternalLinksIsolatedTab),
                    secondary: Icon(
                      MdiIcons.snowflake,
                      color: AppColors.of(context).isolatedTabTeal,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BookmarkOpenBehaviorSection extends HookConsumerWidget {
  const _BookmarkOpenBehaviorSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(generalSettingsWithDefaultsProvider);
    final bookmarkOpenSetting = settings.effectiveBookmarkOpenSetting;
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.bookmarkOpenBehavior),
            subtitle: Text(l10n.bookmarkOpenBehaviorSubtitle),
            leading: const Icon(MdiIcons.bookmarkMultiple),
            contentPadding: EdgeInsets.zero,
          ),
          RadioGroup(
            groupValue: bookmarkOpenSetting,
            onChanged: (value) async {
              if (value != null) {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) =>
                          currentSettings.copyWith.bookmarkOpenSetting(value),
                    );
              }
            },
            child: Column(
              children: [
                RadioListTile.adaptive(
                  value: BookmarkOpenSetting.ask,
                  title: Text(l10n.prompt),
                  subtitle: Text(l10n.askHowBookmarkOpens),
                  secondary: const Icon(MdiIcons.messageQuestion),
                ),
                RadioListTile.adaptive(
                  value: BookmarkOpenSetting.regular,
                  title: Text(l10n.tabTypeRegular),
                  subtitle: Text(l10n.openBookmarkRegularTab),
                  secondary: const Icon(MdiIcons.tab),
                ),
                RadioListTile.adaptive(
                  value: BookmarkOpenSetting.private,
                  title: Text(l10n.tabTypePrivate),
                  subtitle: Text(l10n.openBookmarkPrivateTab),
                  secondary: Icon(
                    MdiIcons.dominoMask,
                    color: AppColors.of(context).privateTabPurple,
                  ),
                ),
                RadioListTile.adaptive(
                  value: BookmarkOpenSetting.customTab,
                  title: Text(l10n.customTab),
                  subtitle: Text(l10n.openBookmarkCustomTab),
                  secondary: const Icon(MdiIcons.applicationOutline),
                ),
                if (settings.showIsolatedTabUi)
                  RadioListTile.adaptive(
                    value: BookmarkOpenSetting.isolated,
                    title: Text(l10n.tabTypeIsolated),
                    subtitle: Text(l10n.openBookmarkIsolatedTab),
                    secondary: Icon(
                      MdiIcons.snowflake,
                      color: AppColors.of(context).isolatedTabTeal,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TabListDirectionSection extends HookConsumerWidget {
  const _TabListDirectionSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final direction = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.tabListDirection),
    );
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.tabListDirection),
            subtitle: Text(l10n.tabListDirectionSubtitle),
            leading: const Icon(MdiIcons.formatListBulleted),
            contentPadding: EdgeInsets.zero,
          ),
          Center(
            child: SegmentedButton(
              showSelectedIcon: false,
              segments: [
                ButtonSegment(
                  value: TabDirection.newestFirst,
                  label: Text(l10n.newestFirst),
                  icon: const Icon(MdiIcons.arrowCollapseUp),
                ),
                ButtonSegment(
                  value: TabDirection.oldestFirst,
                  label: Text(l10n.oldestFirst),
                  icon: const Icon(MdiIcons.arrowCollapseDown),
                ),
              ],
              selected: {direction},
              onSelectionChanged: (value) async {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) => currentSettings.copyWith
                          .tabListDirection(value.first),
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _TabBarDirectionSection extends HookConsumerWidget {
  const _TabBarDirectionSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final direction = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.tabBarDirection),
    );
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.tabBarDirection),
            subtitle: Text(l10n.tabBarDirectionSubtitle),
            leading: const Icon(MdiIcons.reorderHorizontal),
            contentPadding: EdgeInsets.zero,
          ),
          Center(
            child: SegmentedButton(
              showSelectedIcon: false,
              segments: [
                ButtonSegment(
                  value: TabDirection.newestFirst,
                  label: Text(l10n.newestFirst),
                  icon: const Icon(MdiIcons.arrowCollapseLeft),
                ),
                ButtonSegment(
                  value: TabDirection.oldestFirst,
                  label: Text(l10n.oldestFirst),
                  icon: const Icon(MdiIcons.arrowCollapseRight),
                ),
              ],
              selected: {direction},
              onSelectionChanged: (value) async {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) =>
                          currentSettings.copyWith.tabBarDirection(value.first),
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CreateChildTabsTile extends HookConsumerWidget {
  const _CreateChildTabsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final createChildTabsOption = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.createChildTabsOption,
      ),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.createChildTabs),
      subtitle: Text(l10n.createChildTabsSubtitle),
      secondary: const Icon(MdiIcons.fileTree),
      value: createChildTabsOption,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.createChildTabsOption(value),
            );
      },
    );
  }
}

class _ShowContainerUiTile extends HookConsumerWidget {
  const _ShowContainerUiTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showContainerUi = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.showContainerUi),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.showContainerUi),
      subtitle: Text(l10n.showContainerUiSubtitle),
      secondary: const Icon(MdiIcons.folder),
      value: showContainerUi,
      onChanged: (value) async {
        await ref.read(saveGeneralSettingsControllerProvider.notifier).save((
          currentSettings,
        ) {
          var updated = currentSettings.copyWith.showContainerUi(value);
          if (!value &&
              const {
                TabBarStackingMode.containerTabs,
                TabBarStackingMode.accordion,
                TabBarStackingMode.twoLevel,
              }.contains(updated.tabBarStackingMode)) {
            updated = updated.copyWith.tabBarStackingMode(
              TabBarStackingMode.lastUsedTabs,
            );
          }
          return updated;
        });

        if (!value) {
          ref.read(selectedContainerProvider.notifier).clearContainer();
        }
      },
    );
  }
}

class _ShowIsolatedTabUiTile extends HookConsumerWidget {
  const _ShowIsolatedTabUiTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showIsolatedTabUi = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.showIsolatedTabUi),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.showIsolatedTabUi),
      subtitle: Text(l10n.showIsolatedTabUiSubtitle),
      secondary: Icon(
        MdiIcons.snowflake,
        color: AppColors.of(context).isolatedTabTeal,
      ),
      value: showIsolatedTabUi,
      onChanged: (value) async {
        await ref.read(saveGeneralSettingsControllerProvider.notifier).save((
          currentSettings,
        ) {
          var updated = currentSettings.copyWith.showIsolatedTabUi(value);
          if (!value &&
              updated.storedDefaultCreateTabType == TabType.isolated) {
            updated = updated.copyWith.storedDefaultCreateTabType(
              TabType.regular,
            );
          }
          if (!value &&
              updated.tabIntentOpenSetting == TabIntentOpenSetting.isolated) {
            updated = updated.copyWith.tabIntentOpenSetting(
              TabIntentOpenSetting.ask,
            );
          }
          if (!value && updated.smallWebTabType == TabType.isolated) {
            updated = updated.copyWith.smallWebTabType(TabType.private);
          }
          if (!value &&
              updated.bookmarkOpenSetting == BookmarkOpenSetting.isolated) {
            updated = updated.copyWith.bookmarkOpenSetting(
              BookmarkOpenSetting.ask,
            );
          }
          return updated;
        });
      },
    );
  }
}

class _BackgroundTabOpenSection extends HookConsumerWidget {
  const _BackgroundTabOpenSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final backgroundTabOpenAction = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.backgroundTabOpenAction,
      ),
    );
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.backgroundTabBehavior),
            subtitle: Text(l10n.backgroundTabBehaviorSubtitle),
            leading: const Icon(MdiIcons.tabPlus),
            contentPadding: EdgeInsets.zero,
          ),
          RadioGroup(
            groupValue: backgroundTabOpenAction,
            onChanged: (value) async {
              if (value != null) {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) => currentSettings.copyWith
                          .backgroundTabOpenAction(value),
                    );
              }
            },
            child: Column(
              children: [
                RadioListTile.adaptive(
                  value: BackgroundTabOpenAction.prompt,
                  title: Text(l10n.stayAndOfferToSwitch),
                  subtitle: Text(l10n.stayAndOfferToSwitchSubtitle),
                ),
                RadioListTile.adaptive(
                  value: BackgroundTabOpenAction.switchImmediately,
                  title: Text(l10n.switchImmediately),
                  subtitle: Text(l10n.switchImmediatelySubtitle),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TabBarSwipeBehaviorSection extends HookConsumerWidget {
  const _TabBarSwipeBehaviorSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabBarSwipeAction = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.tabBarSwipeAction),
    );
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.tabBarSwipeBehavior),
            leading: const Icon(MdiIcons.gestureSwipeHorizontal),
            contentPadding: EdgeInsets.zero,
          ),
          RadioGroup(
            groupValue: tabBarSwipeAction,
            onChanged: (value) async {
              if (value != null) {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) =>
                          currentSettings.copyWith.tabBarSwipeAction(value),
                    );
              }
            },
            child: Column(
              children: [
                RadioListTile.adaptive(
                  value: TabBarSwipeAction.switchLastOpened,
                  title: Text(l10n.switchToLastUsedTab),
                  subtitle: Text(l10n.switchToLastUsedTabSubtitle),
                ),
                RadioListTile.adaptive(
                  value: TabBarSwipeAction.navigateOrderedTabs,
                  title: Text(l10n.navigateSequentialTabs),
                  subtitle: Text(l10n.navigateSequentialTabsSubtitle),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SequentialTabNavigationSection extends HookConsumerWidget {
  const _SequentialTabNavigationSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final crossContainers = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.sequentialTabNavigationCrossContainers,
      ),
    );
    final loop = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.sequentialTabNavigationLoop,
      ),
    );
    final showContainerUi = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.showContainerUi),
    );
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.sequentialTabNavigation),
            subtitle: Text(l10n.sequentialTabNavigationSubtitle),
            leading: const Icon(MdiIcons.swapHorizontal),
            contentPadding: EdgeInsets.zero,
          ),
          if (showContainerUi)
            SwitchListTile.adaptive(
              title: Text(l10n.continueIntoNextContainer),
              subtitle: Text(l10n.continueIntoNextContainerSubtitle),
              secondary: const Icon(MdiIcons.folderMultipleOutline),
              contentPadding: EdgeInsets.zero,
              value: crossContainers,
              onChanged: (value) async {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) => currentSettings.copyWith
                          .sequentialTabNavigationCrossContainers(value),
                    );
              },
            ),
          SwitchListTile.adaptive(
            title: Text(l10n.loopAround),
            subtitle: Text(l10n.loopAroundSubtitle),
            secondary: const Icon(MdiIcons.repeat),
            contentPadding: EdgeInsets.zero,
            value: loop,
            onChanged: (value) async {
              await ref
                  .read(saveGeneralSettingsControllerProvider.notifier)
                  .save(
                    (currentSettings) => currentSettings.copyWith
                        .sequentialTabNavigationLoop(value),
                  );
            },
          ),
        ],
      ),
    );
  }
}

class _AppLinksModeSection extends HookConsumerWidget {
  const _AppLinksModeSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appLinksMode = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.appLinksMode),
    );
    final marketplaceFallback = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.appLinkMarketplaceFallback,
      ),
    );
    final authExceptionsEnabled = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.appLinkAuthExceptionsEnabled,
      ),
    );
    final rules = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.appLinkRules),
    );
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.openLinksInApps),
            subtitle: Text(l10n.openLinksInAppsSubtitle),
            leading: const Icon(MdiIcons.openInApp),
            contentPadding: EdgeInsets.zero,
          ),
          RadioGroup(
            groupValue: appLinksMode,
            onChanged: (value) async {
              if (value != null) {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save((current) => current.copyWith.appLinksMode(value));
              }
            },
            child: Column(
              children: [
                RadioListTile.adaptive(
                  value: AppLinksMode.always,
                  title: Text(l10n.always),
                  subtitle: Text(l10n.alwaysOpenLinksInNativeApps),
                ),
                RadioListTile.adaptive(
                  value: AppLinksMode.ask,
                  title: Text(l10n.askBeforeOpening),
                  subtitle: Text(l10n.askBeforeOpeningLinksInAppsSubtitle),
                ),
                RadioListTile.adaptive(
                  value: AppLinksMode.never,
                  title: Text(l10n.never),
                  subtitle: Text(l10n.alwaysOpenLinksInBrowser),
                ),
              ],
            ),
          ),
          SwitchListTile.adaptive(
            contentPadding: EdgeInsets.zero,
            title: Text(l10n.offerAppStoreFallback),
            subtitle: Text(l10n.offerAppStoreFallbackSubtitle),
            value: marketplaceFallback,
            onChanged: appLinksMode == AppLinksMode.never
                ? null
                : (value) async {
                    await ref
                        .read(saveGeneralSettingsControllerProvider.notifier)
                        .save(
                          (current) => current.copyWith
                              .appLinkMarketplaceFallback(value),
                        );
                  },
          ),
          SwitchListTile.adaptive(
            contentPadding: EdgeInsets.zero,
            title: Text(l10n.allowLoginAppCallbacks),
            subtitle: Text(l10n.allowLoginAppCallbacksSubtitle),
            value: authExceptionsEnabled,
            onChanged: (value) async {
              await ref
                  .read(saveGeneralSettingsControllerProvider.notifier)
                  .save(
                    (current) =>
                        current.copyWith.appLinkAuthExceptionsEnabled(value),
                  );
            },
          ),
          _AppLinkRulesSubsection(rules: rules),
        ],
      ),
    );
  }
}

/// Managed per-site app-link rules (§2.5): "always open" and "never open"
/// decisions the user remembered from a prompt. Read-only list with removal.
class _AppLinkRulesSubsection extends ConsumerWidget {
  final Map<String, PersistedAppLinkRule> rules;

  const _AppLinkRulesSubsection({required this.rules});

  String _displayScope(String scope) {
    if (scope.startsWith('host:')) return scope.substring('host:'.length);
    if (scope.startsWith('pkg:')) return scope.substring('pkg:'.length);
    return scope;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (rules.isEmpty) {
      return const SizedBox.shrink();
    }
    final l10n = AppLocalizations.of(context)!;

    final entries = rules.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 4),
          child: Text(l10n.rememberedSiteRules),
        ),
        for (final MapEntry(:key, :value) in entries)
          ListTile(
            contentPadding: EdgeInsets.zero,
            dense: true,
            leading: Icon(
              value.decision == AppLinkRuleDecision.alwaysOpen
                  ? MdiIcons.openInApp
                  : Icons.public,
            ),
            title: Text(_displayScope(key)),
            subtitle: Text(
              value.decision == AppLinkRuleDecision.alwaysOpen
                  ? l10n.alwaysOpenInApp
                  : l10n.alwaysKeepInBrowser,
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete_outline),
              tooltip: l10n.removeRule,
              onPressed: () async {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (current) => current.copyWith.appLinkRules(
                        {...current.appLinkRules}..remove(key),
                      ),
                    );
              },
            ),
          ),
      ],
    );
  }
}

class _GlobalDesktopModeTile extends HookConsumerWidget {
  const _GlobalDesktopModeTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final globalDesktopMode = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.globalDesktopMode),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.alwaysRequestDesktopSite),
      subtitle: Text(l10n.alwaysRequestDesktopSiteSubtitle),
      secondary: const Icon(MdiIcons.monitor),
      value: globalDesktopMode,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.globalDesktopMode(value),
            );
      },
    );
  }
}

class _DesktopModeSitesTile extends StatelessWidget {
  const _DesktopModeSitesTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      leading: const Icon(Icons.desktop_windows),
      title: Text(l10n.desktopModeSites),
      subtitle: Text(l10n.desktopModeSitesSubtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await const DesktopModeSitesRoute().push(context);
      },
    );
  }
}

class _PullToRefreshTile extends HookConsumerWidget {
  const _PullToRefreshTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pullToRefreshEnabled = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.pullToRefreshEnabled),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.pullToRefresh),
      subtitle: Text(l10n.pullToRefreshSubtitle),
      secondary: const Icon(MdiIcons.gestureSwipeDown),
      value: pullToRefreshEnabled,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.pullToRefreshEnabled(value),
            );
      },
    );
  }
}

class _CustomTabsTile extends HookConsumerWidget {
  const _CustomTabsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customTabsEnabled = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.customTabsEnabled),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.customTabs),
      subtitle: Text(l10n.customTabsBrowsingSubtitle),
      secondary: const Icon(Icons.web_asset),
      value: customTabsEnabled,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.customTabsEnabled(value),
            );
      },
    );
  }
}

class _DoubleBackCloseTabTile extends HookConsumerWidget {
  const _DoubleBackCloseTabTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final doubleBackCloseTab = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.doubleBackCloseTab),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.doubleBackToCloseTab),
      subtitle: Text(l10n.doubleBackToCloseTabSubtitle),
      secondary: const Icon(MdiIcons.gestureDoubleTap),
      value: doubleBackCloseTab,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.doubleBackCloseTab(value),
            );
      },
    );
  }
}

class _AllowNonManifestPwaInstallTile extends HookConsumerWidget {
  const _AllowNonManifestPwaInstallTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allowNonManifestPwaInstall = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.allowNonManifestPwaInstall,
      ),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.installSitesAsApps),
      subtitle: Text(l10n.installSitesAsAppsSubtitle),
      secondary: const Icon(Icons.add_to_home_screen),
      value: allowNonManifestPwaInstall,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.allowNonManifestPwaInstall(value),
            );
      },
    );
  }
}

class _UrlCleanerSettingsTile extends StatelessWidget {
  const _UrlCleanerSettingsTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      leading: const Icon(MdiIcons.broom),
      title: Text(l10n.urlCleaner),
      subtitle: Text(l10n.urlCleanerBrowsingSubtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await UrlCleanerSettingsRoute().push(context);
      },
    );
  }
}

class _UnshortenerSettingsTile extends StatelessWidget {
  const _UnshortenerSettingsTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      leading: const Icon(MdiIcons.linkVariant),
      title: Text(l10n.unshortener),
      subtitle: Text(l10n.unshortenerSubtitle),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await UnshortenerSettingsRoute().push(context);
      },
    );
  }
}
