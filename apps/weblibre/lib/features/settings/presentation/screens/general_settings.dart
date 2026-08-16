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
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mozilla_components/flutter_mozilla_components.dart'
    show GeckoBrowserService;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weblibre/features/settings/presentation/controllers/save_settings.dart';
import 'package:weblibre/features/settings/presentation/widgets/custom_list_tile.dart';
import 'package:weblibre/features/settings/presentation/widgets/settings_detail.dart';
import 'package:weblibre/features/user/data/models/general_settings.dart';
import 'package:weblibre/features/user/domain/repositories/general_settings.dart';
import 'package:weblibre/l10n/app_localizations.dart';
import 'package:weblibre/presentation/hooks/cached_future.dart';
import 'package:weblibre/presentation/hooks/keyed_state.dart';

List<SettingsSectionDefinition> buildGeneralSettingsSections(
  BuildContext context,
) {
  final l10n = AppLocalizations.of(context)!;
  return [
    SettingsSectionDefinition(
      title: l10n.defaultBrowser,
      keywords: ['browser defaults'],
      entries: [
        SettingsEntryDefinition(
          title: l10n.defaultBrowser,
          subtitle: l10n.setAsDefaultBrowser,
          keywords: ['system browser'],
          child: _DefaultBrowserTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.appearance,
      entries: [
        SettingsEntryDefinition(
          title: l10n.appLanguage,
          subtitle: l10n.appLanguageSubtitle,
          keywords: [
            'language',
            'locale',
            'translation',
            'simplified chinese',
            'english',
          ],
          child: const _AppLanguageSection(),
        ),
        SettingsEntryDefinition(
          title: l10n.theme,
          subtitle: l10n.chooseSystemLightOrDark,
          keywords: ['light', 'dark', 'theme mode'],
          child: _ThemeSection(),
        ),
        SettingsEntryDefinition(
          title: l10n.pureBlack,
          subtitle: l10n.useTrueBlackOledSubtitle,
          keywords: ['oled', 'amoled', 'high contrast', 'black', 'dark'],
          child: _PureBlackTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.userInterfaceZoom,
          subtitle: l10n.makeUiSmallerOrLarger,
          keywords: ['ui scale', 'zoom'],
          child: _UiZoomSection(),
        ),
        SettingsEntryDefinition(
          title: l10n.refreshRate,
          subtitle: l10n.requestHighOrLowRefreshRate,
          keywords: [
            'fps',
            'hz',
            'hertz',
            'frame rate',
            'framerate',
            '60hz',
            '90hz',
            '120hz',
            'smooth',
            'high refresh',
            'display mode',
          ],
          child: _RefreshRateSection(),
        ),
        SettingsEntryDefinition(
          title: l10n.disableAnimations,
          subtitle: l10n.reduceMotionAndDisableAnimations,
          keywords: ['motion'],
          child: _DisableAnimationsTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.showModalBarrier,
          subtitle: l10n.dimBackgroundBehindDialogs,
          keywords: ['dialogs', 'bottom sheets', 'overlay'],
          child: _ShowModalBarrierTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.showCloseButton,
          subtitle: l10n.addCloseButtonSubtitle,
          keywords: [
            'back',
            'close',
            'dismiss',
            'e-ink',
            'eink',
            'accessibility',
            'new tab',
          ],
          child: _ShowSearchCloseButtonTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.downloads,
      entries: [
        SettingsEntryDefinition(
          title: l10n.useExternalDownloadManager,
          subtitle: l10n.manageDownloadsWithAnotherApp,
          keywords: ['downloads'],
          child: _ExternalDownloadManagerTile(),
        ),
      ],
    ),
  ];
}

class GeneralSettingsScreen extends StatelessWidget {
  const GeneralSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SettingsDetailScaffold(
      title: l10n.generalSettings,
      subtitle: l10n.generalSettingsSubtitle,
      icon: Icons.tune,
      sections: buildGeneralSettingsSections(context),
    );
  }
}

class _DefaultBrowserTile extends HookConsumerWidget {
  const _DefaultBrowserTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final defaultBrowserRefreshKey = useState(0);

    useOnAppLifecycleStateChange((previous, current) {
      if (current == AppLifecycleState.resumed) {
        defaultBrowserRefreshKey.value++;
      }
    });

    final isDefault = useCachedFuture(
      () => GeckoBrowserService().isDefaultBrowser(),
      [defaultBrowserRefreshKey.value],
    );

    final isCurrentDefaultBrowser = isDefault.data == true;
    final l10n = AppLocalizations.of(context)!;

    return CustomListTile(
      title: l10n.defaultBrowser,
      subtitle: isCurrentDefaultBrowser
          ? l10n.webLibreIsDefaultBrowser
          : l10n.setAsDefaultBrowser,
      prefix: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Icon(
          Icons.public,
          size: 24,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      ),
      suffix: FilledButton.icon(
        onPressed: isCurrentDefaultBrowser
            ? null
            : () async {
                await GeckoBrowserService().requestDefaultBrowser();
                defaultBrowserRefreshKey.value++;
              },
        icon: Icon(isCurrentDefaultBrowser ? Icons.check : Icons.open_in_new),
        label: Text(
          isCurrentDefaultBrowser ? l10n.defaultButton : l10n.setButton,
        ),
      ),
    );
  }
}

class _UiZoomSection extends HookConsumerWidget {
  const _UiZoomSection();

  static final _sliderDivisions =
      ((maxUiScaleFactor - minUiScaleFactor) / uiScaleFactorStep).round();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiScaleFactor = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.uiScaleFactor),
    );
    final sliderValue = useKeyedState(uiScaleFactor, [uiScaleFactor]);

    final sliderLabel = '${(sliderValue.value * 100).round()}%';
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.userInterfaceZoom),
            subtitle: Text(l10n.makeUiSmallerOrLarger),
            leading: Icon(Icons.zoom_in),
            contentPadding: EdgeInsets.zero,
          ),
          Row(
            children: [
              Text(sliderLabel, style: Theme.of(context).textTheme.titleLarge),
              Expanded(
                child: Slider(
                  min: minUiScaleFactor,
                  max: maxUiScaleFactor,
                  divisions: _sliderDivisions,
                  label: sliderLabel,
                  value: sliderValue.value.clamp(
                    minUiScaleFactor,
                    maxUiScaleFactor,
                  ),
                  onChanged: (value) {
                    sliderValue.value = value;
                  },
                  onChangeEnd: (value) async {
                    final normalized = _normalizeUiScale(value);
                    sliderValue.value = normalized;
                    await ref
                        .read(saveGeneralSettingsControllerProvider.notifier)
                        .save(
                          (currentSettings) => currentSettings.copyWith
                              .uiScaleFactor(normalized),
                        );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AppLanguageSection extends HookConsumerWidget {
  const _AppLanguageSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appLanguage = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.appLanguage),
    );
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.appLanguage),
            subtitle: Text(l10n.appLanguageSubtitle),
            leading: const Icon(Icons.language),
            contentPadding: EdgeInsets.zero,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: DropdownMenu<AppLanguage>(
              key: ValueKey(appLanguage),
              initialSelection: appLanguage,
              width: double.infinity,
              dropdownMenuEntries: [
                DropdownMenuEntry(
                  value: AppLanguage.system,
                  label: l10n.languageSystem,
                  leadingIcon: const Icon(Icons.smartphone),
                ),
                DropdownMenuEntry(
                  value: AppLanguage.english,
                  label: l10n.languageEnglish,
                  leadingIcon: const Icon(Icons.translate),
                ),
                DropdownMenuEntry(
                  value: AppLanguage.chinese,
                  label: l10n.languageChineseSimplified,
                  leadingIcon: const Icon(Icons.translate),
                ),
              ],
              onSelected: (value) async {
                if (value != null) {
                  await ref
                      .read(saveGeneralSettingsControllerProvider.notifier)
                      .save(
                        (currentSettings) =>
                            currentSettings.copyWith.appLanguage(value),
                      );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

double _normalizeUiScale(double value) {
  final clampedValue = value.clamp(minUiScaleFactor, maxUiScaleFactor);
  final stepIndex = ((clampedValue - minUiScaleFactor) / uiScaleFactorStep)
      .round();
  final normalized = minUiScaleFactor + (stepIndex * uiScaleFactorStep);
  return normalized.clamp(minUiScaleFactor, maxUiScaleFactor);
}

class _DisableAnimationsTile extends HookConsumerWidget {
  const _DisableAnimationsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final disableAnimations = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.disableAnimations),
    );

    return SwitchListTile.adaptive(
      title: Text(AppLocalizations.of(context)!.disableAnimations),
      subtitle: Text(
        AppLocalizations.of(context)!.reduceMotionAndDisableAnimations,
      ),
      secondary: const Icon(Icons.animation),
      value: disableAnimations,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.disableAnimations(value),
            );
      },
    );
  }
}

class _ShowModalBarrierTile extends HookConsumerWidget {
  const _ShowModalBarrierTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showModalBarrier = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.showModalBarrier),
    );

    return SwitchListTile.adaptive(
      title: Text(AppLocalizations.of(context)!.showModalBarrier),
      subtitle: Text(AppLocalizations.of(context)!.dimBackgroundBehindDialogs),
      secondary: const Icon(Icons.layers),
      value: showModalBarrier,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.showModalBarrier(value),
            );
      },
    );
  }
}

class _ShowSearchCloseButtonTile extends HookConsumerWidget {
  const _ShowSearchCloseButtonTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showSearchCloseButton = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.showSearchCloseButton,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(AppLocalizations.of(context)!.showCloseButton),
      subtitle: Text(AppLocalizations.of(context)!.addCloseButtonSubtitle),
      secondary: const Icon(Icons.close),
      value: showSearchCloseButton,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.showSearchCloseButton(value),
            );
      },
    );
  }
}

class _PureBlackTile extends HookConsumerWidget {
  const _PureBlackTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pureBlack = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.pureBlack),
    );
    final themeMode = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.themeMode),
    );

    // OLED surfaces only apply to dark mode; disable the toggle when the app
    // is locked to light mode so the setting can't appear to have no effect.
    final enabled = themeMode != ThemeMode.light;

    return SwitchListTile.adaptive(
      title: Text(AppLocalizations.of(context)!.pureBlack),
      subtitle: Text(AppLocalizations.of(context)!.useTrueBlackOledSubtitle),
      secondary: const Icon(Icons.contrast),
      value: pureBlack,
      onChanged: enabled
          ? (value) async {
              await ref
                  .read(saveGeneralSettingsControllerProvider.notifier)
                  .save(
                    (currentSettings) =>
                        currentSettings.copyWith.pureBlack(value),
                  );
            }
          : null,
    );
  }
}

class _ThemeSection extends HookConsumerWidget {
  const _ThemeSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.themeMode),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(AppLocalizations.of(context)!.theme),
            subtitle: Text(
              AppLocalizations.of(context)!.chooseSystemLightOrDark,
            ),
            leading: const Icon(Icons.palette),
            contentPadding: EdgeInsets.zero,
          ),
          Center(
            child: SegmentedButton<ThemeMode>(
              segments: [
                ButtonSegment(
                  value: ThemeMode.system,
                  icon: const Icon(Icons.brightness_auto),
                  label: Text(AppLocalizations.of(context)!.languageSystem),
                ),
                ButtonSegment(
                  value: ThemeMode.light,
                  icon: const Icon(Icons.light_mode),
                  label: Text(AppLocalizations.of(context)!.themeLight),
                ),
                ButtonSegment(
                  value: ThemeMode.dark,
                  icon: const Icon(Icons.dark_mode),
                  label: Text(AppLocalizations.of(context)!.themeDark),
                ),
              ],
              selected: {themeMode},
              onSelectionChanged: (value) async {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) =>
                          currentSettings.copyWith.themeMode(value.first),
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _RefreshRateSection extends HookConsumerWidget {
  const _RefreshRateSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final refreshRateMode = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.refreshRateMode),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(AppLocalizations.of(context)!.refreshRate),
            subtitle: Text(AppLocalizations.of(context)!.refreshRateSubtitle),
            leading: const Icon(Icons.speed),
            contentPadding: EdgeInsets.zero,
          ),
          Center(
            child: SegmentedButton<RefreshRateMode>(
              segments: [
                ButtonSegment(
                  value: RefreshRateMode.system,
                  icon: const Icon(Icons.smartphone),
                  label: Text(AppLocalizations.of(context)!.languageSystem),
                ),
                ButtonSegment(
                  value: RefreshRateMode.high,
                  icon: const Icon(Icons.bolt),
                  label: Text(AppLocalizations.of(context)!.high),
                ),
                ButtonSegment(
                  value: RefreshRateMode.low,
                  icon: const Icon(Icons.battery_saver),
                  label: Text(AppLocalizations.of(context)!.low),
                ),
              ],
              selected: {refreshRateMode},
              onSelectionChanged: (value) async {
                await ref
                    .read(saveGeneralSettingsControllerProvider.notifier)
                    .save(
                      (currentSettings) =>
                          currentSettings.copyWith.refreshRateMode(value.first),
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ExternalDownloadManagerTile extends HookConsumerWidget {
  const _ExternalDownloadManagerTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final useExternalDownloadManager = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.useExternalDownloadManager,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(AppLocalizations.of(context)!.useExternalDownloadManager),
      subtitle: Text(
        AppLocalizations.of(context)!.manageDownloadsWithAnotherApp,
      ),
      secondary: const Icon(Icons.download),
      value: useExternalDownloadManager,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.useExternalDownloadManager(value),
            );
      },
    );
  }
}
