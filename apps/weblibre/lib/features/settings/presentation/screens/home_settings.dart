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
import 'package:weblibre/features/geckoview/features/browser/domain/entities/home_target.dart';
import 'package:weblibre/features/settings/presentation/controllers/save_settings.dart';
import 'package:weblibre/features/settings/presentation/widgets/settings_detail.dart';
import 'package:weblibre/features/user/data/models/general_settings.dart';
import 'package:weblibre/features/user/domain/repositories/general_settings.dart';
import 'package:weblibre/l10n/app_localizations.dart';
import 'package:weblibre/utils/uri_parser.dart' as uri_parser;

List<SettingsSectionDefinition> buildHomeSettingsSections(
  BuildContext context,
) {
  final l10n = AppLocalizations.of(context)!;
  return [
    SettingsSectionDefinition(
      title: l10n.startup,
      keywords: const ['startup', 'home', 'resume', 'last tab', 'custom url'],
      entries: [
        SettingsEntryDefinition(
          title: l10n.whenNoTabToShow,
          subtitle: l10n.onStartupAndAfterClosingLastTab,
          keywords: const [
            'startup',
            'resume',
            'last tab',
            'custom url',
            'homepage',
          ],
          child: const _HomeTargetTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.applyWhenLastTabCloses,
          subtitle: l10n.otherwiseOpenTabFromAnotherContainer,
          keywords: const ['close', 'last tab', 'container'],
          child: const _HomeTargetOnLastTabClosedTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.layout,
      keywords: const ['home', 'new tab', 'sections', 'modules', 'layout'],
      entries: [
        SettingsEntryDefinition(
          title: l10n.customizeHomeSections,
          subtitle: l10n.chooseOrderHomePage,
          keywords: const [
            'home',
            'sections',
            'shortcuts',
            'quote',
            'quick actions',
            'reorder',
          ],
          child: const _CustomizeHomeSectionsTile(),
        ),
        SettingsEntryDefinition(
          title: l10n.customizeNewTabSections,
          subtitle: l10n.chooseOrderNewTabPage,
          keywords: const ['new tab', 'sections', 'shortcuts', 'reorder'],
          child: const _CustomizeNewTabSectionsTile(),
        ),
      ],
    ),
  ];
}

class HomeSettingsScreen extends StatelessWidget {
  const HomeSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SettingsDetailScaffold(
      title: l10n.homeAndNewTab,
      subtitle: l10n.homeAndNewTabSubtitle,
      icon: MdiIcons.homeOutline,
      sections: buildHomeSettingsSections(context),
    );
  }
}

class _HomeTargetTile extends HookConsumerWidget {
  const _HomeTargetTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final settings = ref.watch(generalSettingsWithDefaultsProvider);

    Future<void> save(GeneralSettings Function(GeneralSettings) update) {
      return ref
          .read(saveGeneralSettingsControllerProvider.notifier)
          .save(update);
    }

    final urlController = useTextEditingController(
      text: settings.homeTargetUrl ?? '',
    );

    // Persist on focus loss as well as on submit. Settings screens have no
    // save button, so a user who types an address and taps back would
    // otherwise lose it silently.
    Future<void> saveUrlIfChanged() async {
      final text = urlController.text.trim();
      if (text == (settings.homeTargetUrl ?? '')) return;
      if (text.isNotEmpty && uri_parser.tryParseUrl(text) == null) return;

      await save((s) => s.copyWith.homeTargetUrl(text));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RadioGroup<HomeTarget>(
          groupValue: settings.homeTarget,
          onChanged: (value) async {
            if (value != null) {
              await save((s) => s.copyWith.homeTarget(value));
            }
          },
          child: Column(
            children: [
              for (final target in HomeTarget.values)
                RadioListTile<HomeTarget>(
                  value: target,
                  title: Text(_homeTargetLabel(target, l10n)),
                  subtitle: Text(_homeTargetDescription(target, l10n)),
                ),
            ],
          ),
        ),
        if (settings.homeTarget == HomeTarget.customUrl)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Focus(
              onFocusChange: (hasFocus) {
                if (!hasFocus) unawaited(saveUrlIfChanged());
              },
              child: TextFormField(
                controller: urlController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.url,
                decoration: InputDecoration(
                  labelText: l10n.address,
                  hintText: 'https://example.com',
                  border: const OutlineInputBorder(),
                ),
                validator: (value) {
                  final text = value?.trim() ?? '';
                  if (text.isEmpty) {
                    return l10n.enterAddressOrShowHomePage;
                  }
                  if (uri_parser.tryParseUrl(text) == null) {
                    return l10n.notValidAddress;
                  }
                  return null;
                },
                onFieldSubmitted: (_) => unawaited(saveUrlIfChanged()),
              ),
            ),
          ),
      ],
    );
  }
}

class _HomeTargetOnLastTabClosedTile extends ConsumerWidget {
  const _HomeTargetOnLastTabClosedTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final enabled = ref.watch(
      generalSettingsWithDefaultsProvider.select(
        (s) => s.homeTargetOnLastTabClosed,
      ),
    );

    return SwitchListTile.adaptive(
      value: enabled,
      title: Text(l10n.applyWhenLastTabCloses),
      subtitle: Text(l10n.closingLastTabStaysInContainer),
      secondary: const Icon(Icons.tab_unselected),
      onChanged: (value) async {
        await ref
            .read(saveGeneralSettingsControllerProvider.notifier)
            .save((s) => s.copyWith.homeTargetOnLastTabClosed(value));
      },
    );
  }
}

class _CustomizeHomeSectionsTile extends ConsumerWidget {
  const _CustomizeHomeSectionsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      leading: const Icon(MdiIcons.homeOutline),
      title: Text(l10n.customizeHomeSections),
      subtitle: Text(l10n.chooseOrderHomePage),
      trailing: const Icon(Icons.chevron_right),
      onTap: () => const HomeModulesSettingsRoute().push(context),
    );
  }
}

class _CustomizeNewTabSectionsTile extends ConsumerWidget {
  const _CustomizeNewTabSectionsTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    return ListTile(
      leading: const Icon(MdiIcons.tabPlus),
      title: Text(l10n.customizeNewTabSections),
      subtitle: Text(l10n.chooseOrderNewTabPage),
      trailing: const Icon(Icons.chevron_right),
      onTap: () => const NewTabModulesSettingsRoute().push(context),
    );
  }
}

String _homeTargetLabel(HomeTarget target, AppLocalizations l10n) {
  return switch (target) {
    HomeTarget.home => l10n.homePage,
    HomeTarget.resumeLastTab => l10n.lastOpenedTab,
    HomeTarget.customUrl => l10n.customAddress,
  };
}

String _homeTargetDescription(HomeTarget target, AppLocalizations l10n) {
  return switch (target) {
    HomeTarget.home => l10n.showChosenHomeSections,
    HomeTarget.resumeLastTab => l10n.pickUpWhereLeftOff,
    HomeTarget.customUrl => l10n.openSpecificPage,
  };
}
