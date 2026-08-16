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
import 'package:weblibre/l10n/app_localizations.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';

Future<bool?> showEnableAiTabSuggestionsDialog(BuildContext context) {
  return showDialog<bool?>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        icon: const Icon(MdiIcons.download),
        title: Text(AppLocalizations.of(context)!.enableAiTabSuggestionsTitle),
        content: const Text(
          'Enabling this feature may require downloading AI models. '
          'The download size and progress cannot be determined in advance.\n\n'
          'Do you want to continue?',
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: Text(AppLocalizations.of(context)!.enable),
          ),
        ],
      );
    },
  );
}
