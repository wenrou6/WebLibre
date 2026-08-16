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
import 'package:weblibre/core/routing/routes.dart';
import 'package:weblibre/features/settings/presentation/controllers/save_settings.dart';
import 'package:weblibre/features/settings/presentation/widgets/settings_detail.dart';
import 'package:weblibre/features/user/data/models/general_settings.dart';
import 'package:weblibre/features/user/domain/repositories/general_settings.dart';
import 'package:weblibre/l10n/app_localizations.dart';
import 'package:weblibre/presentation/hooks/keyed_state.dart';

List<SettingsSectionDefinition> buildToolbarLayoutSettingsSections(
  AppLocalizations l10n,
) => [
  SettingsSectionDefinition(
    title: l10n.tabBarSection,
    entries: [
      SettingsEntryDefinition(
        title: l10n.tabBarPosition,
        subtitle: l10n.tabBarPositionSubtitle,
        keywords: ['top', 'bottom'],
        child: _TabBarPositionSection(),
      ),
      SettingsEntryDefinition(
        title: l10n.tabBarStyle,
        subtitle: l10n.tabBarStyleSubtitle,
        keywords: ['layout', 'compact'],
        child: _TabBarLayoutModeSection(),
      ),
      SettingsEntryDefinition(
        title: l10n.autoHideTabBar,
        subtitle: l10n.autoHideTabBarSubtitle,
        keywords: ['scroll'],
        child: _AutoHideTabBarTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.longPressUrlToCopy,
        subtitle: l10n.longPressUrlToCopySubtitle,
        keywords: ['copy url'],
        child: _TabBarLongPressUrlCopyTile(),
      ),
    ],
  ),
  SettingsSectionDefinition(
    title: l10n.contextualToolbarSection,
    entries: [
      SettingsEntryDefinition(
        title: l10n.showContextualToolbar,
        subtitle: l10n.showContextualToolbarSubtitle,
        keywords: ['bottom toolbar'],
        child: _ShowContextualTabBarTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.customizeToolbarButtons,
        subtitle: l10n.customizeToolbarButtonsSubtitle,
        keywords: ['buttons'],
        child: _CustomizeToolbarButtonsTile(),
      ),
    ],
  ),
  SettingsSectionDefinition(
    title: l10n.quickTabSwitcherSection,
    entries: [
      SettingsEntryDefinition(
        title: l10n.tabStacking,
        subtitle: l10n.tabStackingSubtitle,
        keywords: [
          'recent tabs',
          'recently used',
          'container tabs',
          'accordion',
          'two level',
          'rows',
          'stacking',
          'disabled',
        ],
        child: _TabBarStackingModeSection(),
      ),
      SettingsEntryDefinition(
        title: l10n.customizeSwitcherButtons,
        subtitle: l10n.customizeSwitcherButtonsSubtitle,
        keywords: ['buttons', 'new tab', 'actions', 'trailing'],
        child: _CustomizeQuickSwitcherButtonsTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.closeButtonsOnAllTabs,
        subtitle: l10n.closeButtonsOnAllTabsSubtitle,
        keywords: ['close', 'x button'],
        child: _QuickTabSwitcherCloseButtonsTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.quickSwitcherHistoryFallback,
        subtitle: l10n.quickSwitcherHistoryFallbackSubtitle,
        keywords: ['suggestions'],
        child: _QuickTabSwitcherHistorySuggestionsTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.showTitlesInQuickTabSwitcher,
        subtitle: l10n.showTitlesInQuickTabSwitcherSubtitle,
        keywords: ['page titles'],
        child: _QuickTabSwitcherShowTitlesTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.quickSwitcherTitleWidth,
        subtitle: l10n.quickSwitcherTitleWidthSubtitle,
        keywords: ['width', 'title', 'chip', 'length'],
        child: _QuickTabSwitcherTitleWidthTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.quickSwitcherHierarchyDepth,
        subtitle: l10n.quickSwitcherHierarchyDepthSubtitle,
        keywords: ['hierarchy', 'nesting', 'depth', 'tree', 'chevrons'],
        child: _QuickTabSwitcherHierarchyGlyphsTile(),
      ),
    ],
  ),
  SettingsSectionDefinition(
    title: l10n.tabViewSection,
    entries: [
      SettingsEntryDefinition(
        title: l10n.bottomSheetTabView,
        subtitle: l10n.bottomSheetTabViewSubtitle,
        keywords: ['sheet'],
        child: _BottomSheetTabViewTile(),
      ),
      SettingsEntryDefinition(
        title: l10n.showFaviconsInListView,
        subtitle: l10n.showFaviconsInListViewSubtitle,
        keywords: ['icons'],
        child: _TabListShowFaviconsTile(),
      ),
    ],
  ),
];

class ToolbarLayoutContent extends StatelessWidget {
  final String query;

  const ToolbarLayoutContent({super.key, this.query = ''});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final filteredSections = filterSettingsSections(
      sections: buildToolbarLayoutSettingsSections(l10n),
      query: query,
    );

    return SettingsSectionList(sections: filteredSections, query: query);
  }
}

class _TabBarPositionSection extends HookConsumerWidget {
  const _TabBarPositionSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabBarPosition = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.tabBarPosition),
    );
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.tabBarPosition),
            leading: const Icon(MdiIcons.dockWindow),
            contentPadding: EdgeInsets.zero,
          ),
          RadioGroup(
            groupValue: tabBarPosition,
            onChanged: (value) async {
              if (value != null) {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) =>
                          currentSettings.copyWith.tabBarPosition(value),
                    );
              }
            },
            child: Column(
              children: [
                RadioListTile.adaptive(
                  value: TabBarPosition.top,
                  title: Text(l10n.positionTop),
                  subtitle: Text(l10n.positionTopSubtitle),
                ),
                RadioListTile.adaptive(
                  value: TabBarPosition.bottom,
                  title: Text(l10n.positionBottom),
                  subtitle: Text(l10n.positionBottomSubtitle),
                ),
                RadioListTile.adaptive(
                  value: TabBarPosition.left,
                  title: Text(l10n.positionLeft),
                  subtitle: Text(l10n.verticalSideRailSubtitle),
                ),
                RadioListTile.adaptive(
                  value: TabBarPosition.right,
                  title: Text(l10n.positionRight),
                  subtitle: Text(l10n.verticalSideRailSubtitle),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TabBarLayoutModeSection extends HookConsumerWidget {
  const _TabBarLayoutModeSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabBarLayout = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.tabBarLayout),
    );
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.tabBarStyle),
            leading: const Icon(MdiIcons.tabUnselected),
            contentPadding: EdgeInsets.zero,
          ),
          RadioGroup(
            groupValue: tabBarLayout,
            onChanged: (value) async {
              if (value != null) {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) =>
                          currentSettings.copyWith.tabBarLayout(value),
                    );
              }
            },
            child: Column(
              children: [
                RadioListTile.adaptive(
                  value: TabBarLayout.withTitle,
                  title: Text(l10n.withTitle),
                  subtitle: Text(l10n.withTitleSubtitle),
                ),
                RadioListTile.adaptive(
                  value: TabBarLayout.compact,
                  title: Text(l10n.compact),
                  subtitle: Text(l10n.compactTabBarSubtitle),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ShowContextualTabBarTile extends HookConsumerWidget {
  const _ShowContextualTabBarTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabBarShowContextualBar = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.tabBarShowContextualBar,
      ),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.showContextualToolbar),
      subtitle: Text(l10n.showContextualToolbarSubtitle),
      secondary: const Icon(MdiIcons.dockBottom),
      value: tabBarShowContextualBar,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.tabBarShowContextualBar(value),
            );
      },
    );
  }
}

class _CustomizeToolbarButtonsTile extends HookConsumerWidget {
  const _CustomizeToolbarButtonsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabBarShowContextualBar = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.tabBarShowContextualBar,
      ),
    );
    final l10n = AppLocalizations.of(context)!;

    return ListTile(
      leading: const Icon(Icons.tune),
      title: Text(l10n.customizeToolbarButtons),
      trailing: const Icon(Icons.chevron_right),
      enabled: tabBarShowContextualBar,
      onTap: () async {
        await const ContextualToolbarSettingsRoute().push(context);
      },
    );
  }
}

class _CustomizeQuickSwitcherButtonsTile extends HookConsumerWidget {
  const _CustomizeQuickSwitcherButtonsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final switcherEnabled = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.effectiveTabBarStackingMode() != TabBarStackingMode.disabled,
      ),
    );
    final l10n = AppLocalizations.of(context)!;

    return ListTile(
      leading: const Icon(Icons.tune),
      title: Text(l10n.customizeSwitcherButtons),
      subtitle: Text(l10n.customizeSwitcherButtonsSubtitle),
      trailing: const Icon(Icons.chevron_right),
      enabled: switcherEnabled,
      onTap: () async {
        await const QuickSwitcherToolbarSettingsRoute().push(context);
      },
    );
  }
}

class _TabBarStackingModeSection extends HookConsumerWidget {
  const _TabBarStackingModeSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(generalSettingsWithDefaultsProvider);
    final stackingMode = settings.effectiveTabBarStackingMode();
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.tabStacking),
            subtitle: Text(l10n.tabStackingSubtitle),
            leading: const Icon(MdiIcons.folderSettings),
            contentPadding: EdgeInsets.zero,
          ),
          RadioGroup(
            groupValue: stackingMode,
            onChanged: (value) async {
              if (value != null) {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) =>
                          currentSettings.copyWith.tabBarStackingMode(value),
                    );
              }
            },
            child: Column(
              children: [
                RadioListTile.adaptive(
                  value: TabBarStackingMode.lastUsedTabs,
                  title: Text(l10n.recentlyUsedTabs),
                  subtitle: Text(l10n.recentlyUsedTabsSubtitle),
                ),
                if (settings.showContainerUi) ...[
                  RadioListTile.adaptive(
                    value: TabBarStackingMode.containerTabs,
                    title: Text(l10n.containerTabs),
                    subtitle: Text(l10n.containerTabsSubtitle),
                  ),
                  RadioListTile.adaptive(
                    value: TabBarStackingMode.accordion,
                    title: Text(l10n.accordion),
                    subtitle: Text(l10n.accordionSubtitle),
                  ),
                  // Two stacked rows don't fit the narrow vertical side rail,
                  // where the mode degrades to Container Tabs; hide the option
                  // for left/right positions to avoid a no-op choice.
                  if (!settings.tabBarPosition.isVertical)
                    RadioListTile.adaptive(
                      value: TabBarStackingMode.twoLevel,
                      title: Text(l10n.twoRows),
                      subtitle: Text(l10n.twoRowsSubtitle),
                    ),
                ],
                RadioListTile.adaptive(
                  value: TabBarStackingMode.disabled,
                  title: Text(l10n.disabled),
                  subtitle: Text(l10n.hideQuickTabSwitcherBar),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _QuickTabSwitcherCloseButtonsTile extends HookConsumerWidget {
  const _QuickTabSwitcherCloseButtonsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showCloseButtonOnAllTabs = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.quickTabSwitcherShowCloseButtonOnAllTabs,
      ),
    );
    final switcherEnabled = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.effectiveTabBarStackingMode() != TabBarStackingMode.disabled,
      ),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.closeButtonsOnAllTabs),
      subtitle: Text(l10n.closeButtonsOnAllTabsSubtitle),
      secondary: const Icon(MdiIcons.closeCircleOutline),
      value: showCloseButtonOnAllTabs,
      onChanged: switcherEnabled
          ? (value) async {
              await ref
                  .read(saveGeneralSettingsControllerProvider.notifier)
                  .save(
                    (currentSettings) => currentSettings.copyWith
                        .quickTabSwitcherShowCloseButtonOnAllTabs(value),
                  );
            }
          : null,
    );
  }
}

class _QuickTabSwitcherTitleWidthTile extends HookConsumerWidget {
  const _QuickTabSwitcherTitleWidthTile();

  static final _divisions =
      ((maxQuickTabSwitcherTitleWidth - minQuickTabSwitcherTitleWidth) /
              quickTabSwitcherTitleWidthStep)
          .round();

  static String _label(double width) => '${width.round()} px';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleWidth = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.quickTabSwitcherTitleWidth,
      ),
    );
    final showTitles = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.quickTabSwitcherShowTitles,
      ),
    );
    final switcherEnabled = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.effectiveTabBarStackingMode() != TabBarStackingMode.disabled,
      ),
    );
    final l10n = AppLocalizations.of(context)!;

    final sliderValue = useKeyedState(titleWidth, [titleWidth]);

    final enabled = switcherEnabled && showTitles;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.quickSwitcherTitleWidth),
            subtitle: Text(l10n.quickSwitcherTitleWidthSubtitle),
            leading: const Icon(MdiIcons.arrowExpandHorizontal),
            contentPadding: EdgeInsets.zero,
            enabled: enabled,
          ),
          Row(
            children: [
              Expanded(
                child: Slider(
                  min: minQuickTabSwitcherTitleWidth,
                  max: maxQuickTabSwitcherTitleWidth,
                  divisions: _divisions,
                  label: _label(sliderValue.value),
                  value: sliderValue.value.clamp(
                    minQuickTabSwitcherTitleWidth,
                    maxQuickTabSwitcherTitleWidth,
                  ),
                  onChanged: enabled
                      ? (value) {
                          sliderValue.value = value;
                        }
                      : null,
                  onChangeEnd: enabled
                      ? (value) async {
                          final normalized =
                              (value / quickTabSwitcherTitleWidthStep).round() *
                              quickTabSwitcherTitleWidthStep;
                          sliderValue.value = normalized;
                          await ref
                              .read(
                                saveGeneralSettingsControllerProvider.notifier,
                              )
                              .save(
                                (currentSettings) => currentSettings.copyWith
                                    .quickTabSwitcherTitleWidth(normalized),
                              );
                        }
                      : null,
                ),
              ),
              Text(
                _label(sliderValue.value),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _QuickTabSwitcherHistorySuggestionsTile extends HookConsumerWidget {
  const _QuickTabSwitcherHistorySuggestionsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showHistorySuggestions = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.quickTabSwitcherShowHistorySuggestions,
      ),
    );
    final switcherEnabled = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.effectiveTabBarStackingMode() != TabBarStackingMode.disabled,
      ),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.quickSwitcherHistoryFallback),
      subtitle: Text(l10n.quickSwitcherHistoryFallbackSubtitle),
      secondary: const Icon(MdiIcons.history),
      value: showHistorySuggestions,
      onChanged: switcherEnabled
          ? (value) async {
              await ref
                  .read(saveGeneralSettingsControllerProvider.notifier)
                  .save(
                    (currentSettings) => currentSettings.copyWith
                        .quickTabSwitcherShowHistorySuggestions(value),
                  );
            }
          : null,
    );
  }
}

class _QuickTabSwitcherShowTitlesTile extends HookConsumerWidget {
  const _QuickTabSwitcherShowTitlesTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quickTabSwitcherShowTitles = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.quickTabSwitcherShowTitles,
      ),
    );
    final switcherEnabled = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.effectiveTabBarStackingMode() != TabBarStackingMode.disabled,
      ),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.showTitlesInQuickTabSwitcher),
      subtitle: Text(l10n.showTitlesInQuickTabSwitcherSubtitle),
      secondary: const Icon(MdiIcons.textRecognition),
      value: quickTabSwitcherShowTitles,
      onChanged: switcherEnabled
          ? (value) async {
              await ref
                  .read(saveGeneralSettingsControllerProvider.notifier)
                  .save(
                    (currentSettings) => currentSettings.copyWith
                        .quickTabSwitcherShowTitles(value),
                  );
            }
          : null,
    );
  }
}

class _QuickTabSwitcherHierarchyGlyphsTile extends HookConsumerWidget {
  const _QuickTabSwitcherHierarchyGlyphsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hierarchyGlyphs = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.quickTabSwitcherHierarchyGlyphs,
      ),
    );
    final switcherEnabled = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.effectiveTabBarStackingMode() != TabBarStackingMode.disabled,
      ),
    );
    final l10n = AppLocalizations.of(context)!;
    String label(int glyphs) =>
        glyphs == 0 ? l10n.off : l10n.quickSwitcherHierarchyLevelCount(glyphs);

    final sliderValue = useKeyedState(hierarchyGlyphs.toDouble(), [
      hierarchyGlyphs,
    ]);

    final currentGlyphs = sliderValue.value.round();
    final enabled = switcherEnabled;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.quickSwitcherHierarchyDepth),
            subtitle: Text(l10n.quickSwitcherHierarchyDepthSubtitle),
            leading: const Icon(MdiIcons.fileTree),
            contentPadding: EdgeInsets.zero,
            enabled: enabled,
          ),
          Row(
            children: [
              Expanded(
                child: Slider(
                  min: minQuickTabSwitcherHierarchyGlyphs.toDouble(),
                  max: maxQuickTabSwitcherHierarchyGlyphs.toDouble(),
                  divisions:
                      maxQuickTabSwitcherHierarchyGlyphs -
                      minQuickTabSwitcherHierarchyGlyphs,
                  label: label(currentGlyphs),
                  value: sliderValue.value.clamp(
                    minQuickTabSwitcherHierarchyGlyphs.toDouble(),
                    maxQuickTabSwitcherHierarchyGlyphs.toDouble(),
                  ),
                  onChanged: enabled
                      ? (value) {
                          sliderValue.value = value;
                        }
                      : null,
                  onChangeEnd: enabled
                      ? (value) async {
                          final normalized = value.round();
                          sliderValue.value = normalized.toDouble();
                          await ref
                              .read(
                                saveGeneralSettingsControllerProvider.notifier,
                              )
                              .save(
                                (currentSettings) => currentSettings.copyWith
                                    .quickTabSwitcherHierarchyGlyphs(
                                      normalized,
                                    ),
                              );
                        }
                      : null,
                ),
              ),
              Text(
                label(currentGlyphs),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AutoHideTabBarTile extends HookConsumerWidget {
  const _AutoHideTabBarTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final autoHideTabBar = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.autoHideTabBar),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.autoHideTabBar),
      subtitle: Text(l10n.autoHideTabBarSubtitle),
      secondary: const Icon(MdiIcons.folderHidden),
      value: autoHideTabBar,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.autoHideTabBar(value),
            );
      },
    );
  }
}

class _BottomSheetTabViewTile extends HookConsumerWidget {
  const _BottomSheetTabViewTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabViewBottomSheet = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.tabViewBottomSheet),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.bottomSheetTabView),
      subtitle: Text(l10n.bottomSheetTabViewSubtitle),
      secondary: const Icon(MdiIcons.dockBottom),
      value: tabViewBottomSheet,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.tabViewBottomSheet(value),
            );
      },
    );
  }
}

class _TabBarLongPressUrlCopyTile extends HookConsumerWidget {
  const _TabBarLongPressUrlCopyTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabBarLongPressUrlCopy = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.tabBarLongPressUrlCopy,
      ),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.longPressUrlToCopy),
      subtitle: Text(l10n.longPressUrlToCopySubtitle),
      secondary: const Icon(MdiIcons.contentCopy),
      value: tabBarLongPressUrlCopy,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.tabBarLongPressUrlCopy(value),
            );
      },
    );
  }
}

class _TabListShowFaviconsTile extends HookConsumerWidget {
  const _TabListShowFaviconsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabListShowFavicons = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.tabListShowFavicons),
    );
    final l10n = AppLocalizations.of(context)!;

    return SwitchListTile.adaptive(
      title: Text(l10n.showFaviconsInListView),
      subtitle: Text(l10n.showFaviconsInListViewSubtitle),
      secondary: const Icon(MdiIcons.web),
      value: tabListShowFavicons,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.tabListShowFavicons(value),
            );
      },
    );
  }
}
