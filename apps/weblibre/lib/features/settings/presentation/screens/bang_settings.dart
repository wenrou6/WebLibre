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
import 'package:weblibre/features/bangs/data/models/bang_group.dart';
import 'package:weblibre/features/bangs/domain/repositories/data.dart';
import 'package:weblibre/features/settings/presentation/widgets/bang_group_list_tile.dart';
import 'package:weblibre/features/settings/presentation/widgets/custom_list_tile.dart';
import 'package:weblibre/features/settings/presentation/widgets/settings_detail.dart';
import 'package:weblibre/l10n/app_localizations.dart';

List<SettingsSectionDefinition> buildBangSettingsSections(
  BuildContext context,
) {
  final l10n = AppLocalizations.of(context)!;
  return [
    SettingsSectionDefinition(
      title: l10n.usageData,
      entries: [
        SettingsEntryDefinition(
          title: l10n.bangFrequencies,
          subtitle: l10n.bangFrequenciesSubtitle,
          keywords: const ['usage', 'recommendations'],
          child: _BangFrequenciesTile(),
        ),
      ],
    ),
    SettingsSectionDefinition(
      title: l10n.repositories,
      entries: [
        SettingsEntryDefinition(
          title: l10n.generalBangs,
          subtitle: l10n.syncOnDemandFromGitHub,
          keywords: const ['repository'],
          child: BangGroupListTile(
            group: BangGroup.general,
            title: l10n.generalBangs,
            subtitle: l10n.syncOnDemandFromGitHub,
          ),
        ),
        SettingsEntryDefinition(
          title: l10n.kagiBangs,
          subtitle: l10n.syncOnDemandFromGitHub,
          keywords: const ['repository'],
          child: BangGroupListTile(
            group: BangGroup.kagi,
            title: l10n.kagiBangs,
            subtitle: l10n.syncOnDemandFromGitHub,
          ),
        ),
      ],
    ),
  ];
}

class BangSettingsScreen extends HookConsumerWidget {
  const BangSettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    return SettingsDetailScaffold(
      title: l10n.bangSettingsTitle,
      subtitle: l10n.bangSettingsSubtitle,
      icon: MdiIcons.exclamationThick,
      sections: buildBangSettingsSections(context),
    );
  }
}

class _BangFrequenciesTile extends HookConsumerWidget {
  const _BangFrequenciesTile();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    return CustomListTile(
      title: l10n.bangFrequencies,
      subtitle: l10n.bangFrequenciesSubtitle,
      suffix: FilledButton.icon(
        onPressed: () async {
          await ref
              .read(bangDataRepositoryProvider.notifier)
              .resetFrequencies();
        },
        icon: const Icon(Icons.delete),
        label: Text(l10n.clear),
      ),
    );
  }
}
