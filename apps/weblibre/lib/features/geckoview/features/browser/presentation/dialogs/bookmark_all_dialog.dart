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
import 'package:weblibre/l10n/app_localizations.dart';

enum BookmarkAllChoice { fast, detailed }

/// Dialog to select between fast (automatic) or detailed (one-by-one) bookmark import.
Future<BookmarkAllChoice?> showBookmarkAllDialog(BuildContext context) {
  return showDialog<BookmarkAllChoice>(
    context: context,
    builder: (context) => SimpleDialog(
      title: Text(AppLocalizations.of(context)!.bookmarkAllTabs),
      children: [
        ListTile(
          leading: const Icon(MdiIcons.fastForward),
          title: Text(AppLocalizations.of(context)!.fast),
          subtitle: Text(
            AppLocalizations.of(context)!.automaticallyAddTabsToFolder,
          ),
          onTap: () {
            Navigator.of(context).pop(BookmarkAllChoice.fast);
          },
        ),
        ListTile(
          leading: const Icon(MdiIcons.stepForward),
          title: Text(AppLocalizations.of(context)!.detailed),
          subtitle: Text(AppLocalizations.of(context)!.reviewEachBookmark),
          onTap: () {
            Navigator.of(context).pop(BookmarkAllChoice.detailed);
          },
        ),
      ],
    ),
  );
}
