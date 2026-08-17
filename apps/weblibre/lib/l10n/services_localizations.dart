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
import 'package:weblibre/l10n/app_localizations.dart';

extension ServicesLocalizations on AppLocalizations {
  /// Hint in the extension store search field.
  String get addonSearchStoreHint =>
      _serviceMessage('Search addons.mozilla.org', '搜索 addons.mozilla.org');

  /// Warning shown when browsing desktop extensions on Android.
  String get addonDesktopCompatibilityWarning => _serviceMessage(
    'Desktop extensions are not reviewed for mobile. Some may not work, may crash, or may behave unexpectedly on Android.',
    '桌面扩展未经移动端审核，部分扩展可能无法工作、导致崩溃或在 Android 上出现异常行为。',
  );

  /// Confirmation after starting extension update checks.
  String get addonUpdatesStarted => _serviceMessage(
    'Background update checks started for installed extensions',
    '已开始在后台检查已安装扩展的更新',
  );

  /// Section label for unsupported installed extensions.
  String get addonUnsupported => _serviceMessage('Unsupported', '不受支持');

  /// Empty state on the installed extensions tab.
  String get addonEmptyInstalled => _serviceMessage(
    'No extensions installed yet.\nBrowse the store to find some.',
    '尚未安装扩展。\n浏览扩展商店来寻找扩展。',
  );

  /// Confirmation after removing an extension.
  String addonRemoved(String name) =>
      _serviceMessage('\${name} removed', '已移除 \${name}');

  /// Status badge for an extension available to install.
  String get addonAvailable => _serviceMessage('Available', '可用');

  /// Extension details section title.
  String get addonDetails => _serviceMessage('Details', '详细信息');

  /// Extension description section title.
  String get addonDescription => _serviceMessage('Description', '描述');

  /// Description for enabling a supported extension.
  String get addonAllowEnabledDescription => _serviceMessage(
    'Allow this extension to run in WebLibre.',
    '允许此扩展在 WebLibre 中运行。',
  );

  /// Description shown when an extension cannot be enabled.
  String get addonCannotEnableDescription =>
      _serviceMessage('This extension cannot be safely enabled.', '无法安全启用此扩展。');

  /// Extension setting to allow private browsing.
  String get addonAllowPrivateBrowsing =>
      _serviceMessage('Allow in Private Browsing', '允许在隐私浏览中运行');

  /// Description of the private browsing extension setting.
  String get addonAllowPrivateBrowsingDescription => _serviceMessage(
    'Let this extension run in private browsing tabs.',
    '允许此扩展在隐私浏览标签页中运行。',
  );

  /// Extension setting to pin its action to the toolbar.
  String get addonPinToToolbar => _serviceMessage('Pin to toolbar', '固定到工具栏');

  /// Description of pinning an extension to the toolbar.
  String get addonPinToToolbarDescription => _serviceMessage(
    'Show this extension as an icon in the main tab bar.',
    '在主标签栏中将此扩展显示为图标。',
  );

  /// Title of the extension removal confirmation dialog.
  String get addonRemoveQuestion =>
      _serviceMessage('Remove extension?', '移除扩展？');

  /// Prompt confirming removal of an extension.
  String addonRemovePrompt(String name) => _serviceMessage(
    'Remove \${name} from WebLibre?',
    '要从 WebLibre 中移除 \${name} 吗？',
  );

  /// Title of the extension update confirmation dialog.
  String get addonUpdateAvailable =>
      _serviceMessage('Update available', '有可用更新');

  /// Prompt confirming an extension update.
  String addonUpdatePrompt(
    String name,
    String currentVersion,
    String availableVersion,
  ) => _serviceMessage(
    'Update \${name} from \${currentVersion} to \${availableVersion}?',
    '要将 \${name} 从 \${currentVersion} 更新到 \${availableVersion} 吗？',
  );

  /// Fallback when an extension has no description.
  String get addonNoDescription =>
      _serviceMessage('No description provided.', '未提供描述。');

  /// Progress while loading an extension description.
  String get addonLoadingDescription =>
      _serviceMessage('Loading description…', '正在加载描述…');

  /// Extension author metadata label.
  String get addonAuthor => _serviceMessage('Author', '作者');

  /// Extension last-updated metadata label.
  String get addonLastUpdated => _serviceMessage('Last Updated', '最后更新');

  /// Extension homepage metadata label.
  String get addonHomepage => _serviceMessage('Homepage', '主页');

  /// Link to the extension's store listing.
  String get addonListing => _serviceMessage('Add-on Listing', '附加组件页面');

  /// Label for the Gecko engine version on the About dialog.
  String get aboutGeckoVersion => _serviceMessage('Gecko Version', 'Gecko 版本');

  /// Link to the WebLibre feedback page.
  String get aboutFeedback => _serviceMessage('Feedback', '反馈');

  /// Link to support WebLibre financially.
  String get aboutDonate => _serviceMessage('Donate', '捐赠');

  /// Link to WebLibre documentation.
  String get aboutDocumentation => _serviceMessage('Documentation', '文档');

  /// Link to the WebLibre GitHub repository.
  String get aboutGitHub => _serviceMessage('GitHub', 'GitHub');

  /// Question in the app-link banner when the target app is known.
  String appLinkOpenNamedQuestion(String appName) => _serviceMessage(
    'Open this link in \${appName}?',
    '要在 \${appName} 中打开此链接吗？',
  );

  /// Question in the app-link banner when the target app is unknown.
  String get appLinkOpenGenericQuestion =>
      _serviceMessage('Open this link in an app?', '要在应用中打开此链接吗？');

  /// App-link dialog title when the target app is known.
  String appLinkOpenNamedTitle(String appName) =>
      _serviceMessage('Open in \${appName}?', '要在 \${appName} 中打开吗？');

  /// App-link dialog title when the target app is unknown.
  String get appLinkOpenGenericTitle =>
      _serviceMessage('Open in another app?', '要在其他应用中打开吗？');

  /// Explanation in the external app-link dialog.
  String get appLinkExternalDescription => _serviceMessage(
    'This link is handled by an app outside WebLibre.',
    '此链接由 WebLibre 之外的应用处理。',
  );

  /// Checkbox label for remembering an app-link decision.
  String get appLinkRememberForSite =>
      _serviceMessage('Remember for this site', '为此网站记住选择');

  /// Checkbox label in the modal app-link prompt.
  String get appLinkRememberChoiceForSite =>
      _serviceMessage('Remember my choice for this site', '为此网站记住我的选择');

  /// Tooltip to dismiss the app-link banner.
  String get appLinkDismiss => _serviceMessage('Dismiss', '关闭');

  /// Action that declines opening an app link.
  String get appLinkStayInBrowser =>
      _serviceMessage('Stay in browser', '留在浏览器中');

  /// Action that opens an app link in its native app.
  String get appLinkOpenApp => _serviceMessage('Open app', '打开应用');

  /// Tooltip for the Small Web menu button.
  String get smallWebMenuTooltip => _serviceMessage('Menu', '菜单');

  /// Confirmation after removing a Small Web bookmark.
  String get smallWebBookmarkRemoved =>
      _serviceMessage('Bookmark removed', '书签已移除');

  /// Confirmation after adding a Small Web bookmark.
  String get smallWebBookmarkAdded =>
      _serviceMessage('Bookmark added', '书签已添加');

  /// Tooltip for exiting the Small Web overlay.
  String get smallWebExitTooltip => _serviceMessage('Exit Small Web', '退出小众网络');

  /// Fallback when a country has no display name.
  String get countryUnnamed => _serviceMessage('Unnamed Country', '未命名国家或地区');

  /// Hint in the Tor country picker search field.
  String get countrySearchHint =>
      _serviceMessage('Search countries…', '搜索国家或地区…');

  /// Option to let Tor choose a country automatically.
  String get countryAutomatic => _serviceMessage('Automatic', '自动');

  /// Title of the add-feed dialog.
  String get feedAddTitle => _serviceMessage('Add Feed', '添加订阅源');

  /// Action to ignore a discovered web feed.
  String get feedIgnore => _serviceMessage('Ignore', '忽略');

  /// Title of the feed deletion confirmation dialog.
  String get feedDeleteTitle => _serviceMessage('Delete Feed', '删除订阅源');

  /// Prompt confirming deletion of a feed and its articles.
  String get feedDeletePrompt => _serviceMessage(
    'Are you sure you want to delete this feed and all related articles?',
    '确定要删除此订阅源及其所有相关文章吗？',
  );

  String _serviceMessage(String en, String zh) =>
      localeName.startsWith('zh') ? zh : en;
}
