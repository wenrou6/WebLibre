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
import 'package:flutter_mozilla_components/flutter_mozilla_components.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weblibre/extensions/uri.dart';
import 'package:weblibre/features/settings/presentation/controllers/save_settings.dart';
import 'package:weblibre/features/user/data/models/engine_settings.dart';
import 'package:weblibre/features/user/domain/repositories/engine_settings.dart';
import 'package:weblibre/l10n/app_localizations.dart';
import 'package:weblibre/utils/form_validators.dart';

class DohSettingsContent extends HookConsumerWidget {
  const DohSettingsContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final dohSettings = ref.watch(
      engineSettingsWithDefaultsProvider.select((value) => value.dohSettings),
    );

    final customProviderController = useTextEditingController(
      text: BuiltInDohProviders.isBuiltin(dohSettings.dohProviderUrl)
          ? null
          : dohSettings.dohProviderUrl,
    );

    return Column(
      children: [
        ListTile(
          leading: const Icon(MdiIcons.dns),
          title: Text(l10n.protectionLevel),
          subtitle: Text(l10n.dohProtectionLevelDescription),
        ),
        RadioGroup(
          groupValue: dohSettings.dohSettingsMode,
          onChanged: (value) async {
            if (value != null) {
              await ref
                  .read(saveEngineSettingsControllerProvider.notifier)
                  .save(
                    (currentSettings) =>
                        currentSettings.copyWith.dohSettingsMode(value),
                  );
            }
          },
          child: Column(
            children: [
              RadioListTile.adaptive(
                value: DohSettingsMode.geckoDefault,
                title: Text(l10n.defaultProtection),
                subtitle: Text(l10n.defaultProtectionSubtitle),
              ),
              RadioListTile.adaptive(
                value: DohSettingsMode.increased,
                title: Text(l10n.increasedProtection),
                subtitle: Text(l10n.increasedProtectionSubtitle),
              ),
              RadioListTile.adaptive(
                value: DohSettingsMode.max,
                title: Text(l10n.maxProtection),
                subtitle: Text(l10n.maxProtectionSubtitle),
              ),
              RadioListTile.adaptive(
                value: DohSettingsMode.off,
                title: Text(l10n.off),
                subtitle: Text(l10n.useDefaultDnsResolver),
              ),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(MdiIcons.routerNetwork),
          title: Text(l10n.dohProvider),
        ),
        RadioGroup(
          groupValue: dohSettings.dohProviderUrl,
          onChanged: (value) async {
            if (value != null) {
              await ref
                  .read(saveEngineSettingsControllerProvider.notifier)
                  .save(
                    (currentSettings) =>
                        currentSettings.copyWith.dohProviderUrl(value),
                  );
            }
          },
          child: Column(
            children: BuiltInDohProviders.values
                .map(
                  (provider) => RadioListTile.adaptive(
                    value: provider.url,
                    title: Text(provider.name),
                    subtitle: Text(provider.url.uriDisplayString),
                  ),
                )
                .toList(),
          ),
        ),
        RadioGroup(
          groupValue: !BuiltInDohProviders.isBuiltin(
            dohSettings.dohProviderUrl,
          ),
          onChanged: (value) {},
          child: RadioListTile(
            value: true,
            enabled: false,
            title: Form(
              key: formKey,
              child: TextFormField(
                controller: customProviderController,
                keyboardType: TextInputType.url,
                decoration: InputDecoration(
                  label: Text(l10n.customResolverUrl),
                  hintText: 'https://example.com/dns-query',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                validator: (value) {
                  final error = validateUrl(
                    value,
                    onlyHttpProtocol: true,
                    eagerParsing: false,
                  );
                  return switch (error) {
                    'URL must be provided' => l10n.urlMustBeProvided,
                    'Invalid URL' => l10n.invalidUrl,
                    _ => error,
                  };
                },
                onSaved: (newProvider) async {
                  if (newProvider != null) {
                    await ref
                        .read(saveEngineSettingsControllerProvider.notifier)
                        .save(
                          (currentSettings) => currentSettings.copyWith
                              .dohProviderUrl(newProvider),
                        );
                  }
                },
                onFieldSubmitted: (_) {
                  if (formKey.currentState?.validate() == true) {
                    formKey.currentState?.save();
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
