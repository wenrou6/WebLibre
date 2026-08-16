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
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nullability/nullability.dart';
import 'package:weblibre/core/routing/routes.dart';
import 'package:weblibre/features/geckoview/features/tabs/data/providers.dart';
import 'package:weblibre/features/search/domain/entities/abstract/i_search_suggestion_provider.dart';
import 'package:weblibre/features/settings/presentation/controllers/save_settings.dart';
import 'package:weblibre/features/settings/presentation/widgets/bang_icon.dart';
import 'package:weblibre/features/settings/presentation/widgets/default_search_selector.dart';
import 'package:weblibre/features/settings/presentation/widgets/settings_detail.dart';
import 'package:weblibre/features/user/data/models/general_settings.dart';
import 'package:weblibre/features/user/domain/repositories/general_settings.dart';
import 'package:weblibre/l10n/app_localizations.dart';

List<SettingsSectionDefinition> buildSearchSettingsSections(
  BuildContext context,
) {
  final l10n = AppLocalizations.of(context)!;
  return [
    SettingsSectionDefinition(
      title: l10n.providers,
      keywords: const ['engines'],
      entries: [
        SettingsEntryDefinition(
          title: l10n.defaultSearchProvider,
          subtitle: l10n.chooseDefaultSearchEngine,
          keywords: const ['search engine'],
          child: const _DefaultSearchProviderSection(),
        ),
        SettingsEntryDefinition(
          title: l10n.defaultAutocompleteProvider,
          subtitle: l10n.chooseSearchSuggestionsProvider,
          keywords: const ['suggestions'],
          child: const _AutocompleteProviderSection(),
        ),
        SettingsEntryDefinition(
          title: l10n.customSearchEngines,
          subtitle: l10n.addManageSearchProviders,
          keywords: const ['user bangs', 'providers'],
          child: const _CustomSearchEnginesTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.bangShortcuts,
      keywords: const ['bangs'],
      entries: [
        SettingsEntryDefinition(
          title: l10n.bangSettings,
          subtitle: l10n.manageBangRepositories,
          keywords: const ['shortcuts', 'bangs'],
          child: const _BangsTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.historyAndSuggestions,
      entries: [
        SettingsEntryDefinition(
          title: l10n.searchHistoryLimit,
          subtitle: l10n.maximumRecentSearches,
          keywords: const ['history', 'entries'],
          child: const _MaxSearchHistoryEntriesSection(),
        ),
        SettingsEntryDefinition(
          title: l10n.allowClipboardAccessSuggestions,
          subtitle: l10n.browserReadClipboardSuggestUrls,
          keywords: const ['clipboard'],
          child: const _AllowClipboardAccessTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.autocompleteOnEnter,
          subtitle: l10n.acceptInlineSuggestionOnEnterShort,
          keywords: const ['submit', 'keyboard', 'suggestions'],
          child: const _AcceptSuggestionOnSubmitTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.popularSiteSuggestions,
          subtitle: l10n.completeTextWithKnownDomainsShort,
          keywords: const [
            'popular sites',
            'domains',
            'ghost text',
            'autocomplete',
          ],
          child: const _PopularSitesAutocompleteTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.localSearchIndex,
      keywords: const ['on device search', 'index'],
      entries: [
        SettingsEntryDefinition(
          title: l10n.enableLocalSearchIndex,
          subtitle: l10n.indexVisitedPagesLocally,
          keywords: const ['page text', 'history'],
          child: const _LocalIndexEnabledTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.indexPrivateTabs,
          subtitle: l10n.includePrivateTabsLocalIndexShort,
          keywords: const ['incognito'],
          child: const _IndexPrivateTabsTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.indexedPages,
          subtitle: l10n.viewClearLocalIndex,
          keywords: const ['clear index', 'stats'],
          child: const _LocalIndexStatsTile(),
        ),
      ],
    ),
  ];
}

class SearchSettingsScreen extends StatelessWidget {
  const SearchSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SettingsDetailScaffold(
      title: l10n.search,
      subtitle: l10n.searchSettingsSubtitle,
      icon: MdiIcons.magnify,
      sections: buildSearchSettingsSections(context),
    );
  }
}

class _DefaultSearchProviderSection extends StatelessWidget {
  const _DefaultSearchProviderSection();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.defaultSearchProvider),
            leading: const Icon(MdiIcons.cloudSearch),
            contentPadding: EdgeInsets.zero,
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: const DefaultSearchSelector(),
          ),
        ],
      ),
    );
  }
}

class _AutocompleteProviderSection extends HookConsumerWidget {
  const _AutocompleteProviderSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final defaultSearchSuggestionsProvider = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.defaultSearchSuggestionsProvider,
      ),
    );
    final relatedBang = defaultSearchSuggestionsProvider.relatedBang;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.defaultAutocompleteProvider),
            leading: const Icon(MdiIcons.weatherCloudyArrowRight),
            contentPadding: EdgeInsets.zero,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: DropdownMenu<SearchSuggestionProviders>(
              initialSelection: defaultSearchSuggestionsProvider,
              inputDecorationTheme: InputDecorationTheme(
                prefixIconConstraints: BoxConstraints.tight(
                  const Size.square(24),
                ),
              ),
              width: double.infinity,
              leadingIcon: relatedBang.mapNotNull(
                (trigger) => BangIcon(trigger: trigger),
              ),
              dropdownMenuEntries: SearchSuggestionProviders.values.map((
                provider,
              ) {
                return DropdownMenuEntry(
                  value: provider,
                  label: provider == SearchSuggestionProviders.none
                      ? l10n.disabled
                      : provider.label,
                  leadingIcon: provider.relatedBang.mapNotNull(
                    (trigger) => BangIcon(trigger: trigger),
                  ),
                );
              }).toList(),
              onSelected: (value) async {
                if (value != null) {
                  await ref
                      .read(saveGeneralSettingsControllerProvider.notifier)
                      .save(
                        (currentSettings) => currentSettings.copyWith
                            .defaultSearchSuggestionsProvider(value),
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

class _CustomSearchEnginesTile extends StatelessWidget {
  const _CustomSearchEnginesTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      title: Text(l10n.customSearchEngines),
      subtitle: Text(l10n.addManageSearchProviders),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      leading: const Icon(MdiIcons.searchWeb),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await const UserBangsRoute().push(context);
      },
    );
  }
}

class _BangsTile extends StatelessWidget {
  const _BangsTile();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      title: Text(l10n.bangSettings),
      subtitle: Text(l10n.manageBangRepositories),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      leading: const Icon(MdiIcons.exclamationThick),
      trailing: const Icon(Icons.chevron_right),
      onTap: () async {
        await BangSettingsRoute().push(context);
      },
    );
  }
}

class _MaxSearchHistoryEntriesSection extends HookConsumerWidget {
  const _MaxSearchHistoryEntriesSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final maxSearchHistoryEntries = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.maxSearchHistoryEntries,
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(l10n.searchHistoryLimit),
            subtitle: Text(l10n.maximumRecentSearches),
            leading: const Icon(MdiIcons.history),
            contentPadding: EdgeInsets.zero,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Form(
              key: formKey,
              child: TextFormField(
                initialValue: maxSearchHistoryEntries.toString(),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(suffixText: l10n.entriesLowercase),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return l10n.pleaseEnterValue;
                  }
                  final parsedValue = int.tryParse(value);
                  if (parsedValue == null) {
                    return l10n.pleaseEnterValidNumber;
                  }
                  if (parsedValue < 0 || parsedValue > 100) {
                    return l10n.valueBetweenZeroAndHundred;
                  }
                  return null;
                },
                onFieldSubmitted: (value) async {
                  if (formKey.currentState?.validate() ?? false) {
                    final parsedValue = int.parse(value);
                    await ref
                        .read(saveGeneralSettingsControllerProvider.notifier)
                        .save(
                          (currentSettings) => currentSettings.copyWith
                              .maxSearchHistoryEntries(parsedValue),
                        );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AllowClipboardAccessTile extends HookConsumerWidget {
  const _AllowClipboardAccessTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final allowClipboardAccess = ref.watch(
      generalSettingsWithDefaultsProvider.select((s) => s.allowClipboardAccess),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.allowClipboardAccessSuggestions),
      subtitle: Text(l10n.browserReadClipboardSuggestUrls),
      secondary: const Icon(MdiIcons.clipboardTextOutline),
      value: allowClipboardAccess,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.allowClipboardAccess(value),
            );
      },
    );
  }
}

class _AcceptSuggestionOnSubmitTile extends HookConsumerWidget {
  const _AcceptSuggestionOnSubmitTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final acceptSuggestionOnSubmit = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.acceptSuggestionOnSubmit,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.autocompleteOnEnter),
      subtitle: Text(l10n.acceptInlineSuggestionOnEnter),
      secondary: const Icon(Icons.keyboard_return),
      value: acceptSuggestionOnSubmit,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.acceptSuggestionOnSubmit(value),
            );
      },
    );
  }
}

class _PopularSitesAutocompleteTile extends HookConsumerWidget {
  const _PopularSitesAutocompleteTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final popularSitesAutocompleteEnabled = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.popularSitesAutocompleteEnabled,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.popularSiteSuggestions),
      subtitle: Text(l10n.completeTextWithKnownDomains),
      secondary: const Icon(MdiIcons.web),
      value: popularSitesAutocompleteEnabled,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) => currentSettings.copyWith
                  .popularSitesAutocompleteEnabled(value),
            );
      },
    );
  }
}

class _LocalIndexEnabledTile extends HookConsumerWidget {
  const _LocalIndexEnabledTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final enabled = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.enableLocalSearchIndex,
      ),
    );

    return SwitchListTile.adaptive(
      title: Text(l10n.enableLocalSearchIndex),
      subtitle: Text(l10n.localSearchIndexDescription),
      secondary: const Icon(MdiIcons.bookSearchOutline),
      value: enabled,
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save(
              (currentSettings) =>
                  currentSettings.copyWith.enableLocalSearchIndex(value),
            );
      },
    );
  }
}

class _IndexPrivateTabsTile extends HookConsumerWidget {
  const _IndexPrivateTabsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final settings = ref.watch(generalSettingsWithDefaultsProvider);
    final enabled = settings.enableLocalSearchIndex;
    final indexPrivate = settings.indexPrivateTabs;

    return SwitchListTile.adaptive(
      title: Text(l10n.indexPrivateTabs),
      subtitle: Text(l10n.indexPrivateTabsDescription),
      secondary: const Icon(MdiIcons.incognito),
      value: indexPrivate,
      onChanged: enabled
          ? (value) async {
              await ref
                  .read(saveGeneralSettingsControllerProvider.notifier)
                  .save(
                    (currentSettings) =>
                        currentSettings.copyWith.indexPrivateTabs(value),
                  );
            }
          : null,
    );
  }
}

class _LocalIndexStatsTile extends HookConsumerWidget {
  const _LocalIndexStatsTile();

  Future<bool?> _confirmClear(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.clearLocalSearchIndexQuestion),
        content: Text(l10n.clearLocalSearchIndexDescription),
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
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    // Bump on Clear to re-trigger the count query.
    final refreshTick = useState(0);
    final countSnapshot = useFuture(
      useMemoized(() => ref.read(tabDatabaseProvider).historyDao.countRows(), [
        refreshTick.value,
      ]),
    );
    final count = countSnapshot.data;

    return ListTile(
      leading: const Icon(MdiIcons.databaseOutline),
      title: Text(l10n.indexedPages),
      subtitle: Text(
        count.mapNotNull(l10n.pagesIndexed) ?? l10n.loadingEllipsis,
      ),
      trailing: TextButton.icon(
        icon: const Icon(MdiIcons.deleteOutline),
        label: Text(l10n.clear),
        onPressed: count == null || count == 0
            ? null
            : () async {
                final confirmed = await _confirmClear(context);
                if (confirmed != true) return;
                await ref.read(tabDatabaseProvider).historyDao.clear();
                refreshTick.value++;
              },
      ),
    );
  }
}
