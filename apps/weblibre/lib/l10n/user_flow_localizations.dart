import 'package:weblibre/l10n/app_localizations.dart';

/// Localized copy used by the account, sync, gesture, push, and onboarding flows.
///
/// These accessors live outside the generated localization files so the feature
/// work can be reviewed and merged independently of the localization generator.
extension UserFlowLocalizations on AppLocalizations {
  bool get _zh => localeName.startsWith('zh');

  String get account => _zh ? '账户' : 'Account';
  String get synchronization => _zh ? '同步' : 'Synchronization';
  String get searchAccountSettings =>
      _zh ? '搜索账户设置' : 'Search account settings';
  String get searchSyncSettings => _zh ? '搜索同步设置' : 'Search sync settings';
  String get failedToLoadAccount => _zh ? '加载账户失败' : 'Failed to load account';
  String get signedInAccount => _zh ? '已登录账户' : 'Signed in account';
  String get signIn => _zh ? '登录' : 'Sign in';
  String get signOut => _zh ? '退出登录' : 'Sign Out';
  String get signOutQuestion => _zh ? '退出登录？' : 'Sign out?';
  String get cancel => _zh ? '取消' : 'Cancel';
  String get save => _zh ? '保存' : 'Save';
  String get reset => _zh ? '重置' : 'Reset';
  String get syncNowLabel => _zh ? '立即同步' : 'Sync Now';
  String get syncHistory => _zh ? '同步历史记录' : 'Sync History';
  String get syncBookmarks => _zh ? '同步书签' : 'Sync Bookmarks';
  String get syncOpenTabs => _zh ? '同步打开的标签页' : 'Sync Open Tabs';
  String get deviceName => _zh ? '设备名称' : 'Device Name';
  String get unknown => _zh ? '未知' : 'Unknown';
  String get serverOverrides => _zh ? '服务器覆盖' : 'Server Overrides';
  String get fxaServerOverride => _zh ? 'FxA 服务器覆盖' : 'FxA Server Override';
  String get syncTokenServerOverride =>
      _zh ? '同步令牌服务器覆盖' : 'Sync Token Server Override';
  String get defaultMozillaServer =>
      _zh ? '默认 Mozilla 服务器' : 'Default Mozilla server';
  String get automaticFromFxaServer =>
      _zh ? '从 FxA 服务器自动获取' : 'Automatic from FxA server';
  String get loading => _zh ? '加载中……' : 'Loading...';
  String get previous => _zh ? '上一步' : 'Previous';
  String get restore => _zh ? '恢复' : 'Restore';
  String get done => _zh ? '完成' : 'Done';
  String get addGesture => _zh ? '添加手势' : 'Add gesture';
  String get noGesturesAssigned =>
      _zh ? '尚未分配手势。' : 'No gestures assigned yet.';
  String get gestureBindings => _zh ? '手势绑定' : 'Gesture bindings';
  String get remove => _zh ? '移除' : 'Remove';
  String get chooseAction => _zh ? '选择操作' : 'Choose action';
  String get notificationsTitle => _zh ? '通知' : 'Notifications';
  String get notificationPermission => _zh ? '通知权限' : 'Notification Permission';
  String get granted => _zh ? '已授予' : 'Granted';
  String get grant => _zh ? '授予' : 'Grant';
  String get delivery => _zh ? '推送' : 'Delivery';
  String get subscriptions => _zh ? '订阅' : 'Subscriptions';
  String get siteSubscriptions => _zh ? '网站订阅' : 'Site Subscriptions';
  String get checking => _zh ? '检查中……' : 'Checking…';
  String get chooseDistributor => _zh ? '选择分发器' : 'Choose distributor';
  String get noSiteSubscriptions => _zh ? '没有网站订阅' : 'No site subscriptions';
  String get permissionsTitle => _zh ? '权限' : 'Permissions';
  String get defaultBrowserTitle => _zh ? '默认浏览器' : 'Default Browser';

  String lastSyncedAt(String value) =>
      _zh ? '上次同步：$value' : 'Last synced: $value';
  String failedToLoadSnapshots(String error) =>
      _zh ? '加载快照失败：$error' : 'Failed to load snapshots: $error';
  String failedToStore(String error) =>
      _zh ? '存储失败：$error' : 'Failed to store: $error';
  String failedToRestore(String error) =>
      _zh ? '恢复失败：$error' : 'Failed to restore: $error';
  String failedToDelete(String error) =>
      _zh ? '删除失败：$error' : 'Failed to delete: $error';
  String couldNotReadPushStatus(String error) =>
      _zh ? '无法读取推送状态：$error' : 'Could not read push status: $error';
  String couldNotReadPermissionState(String error) =>
      _zh ? '无法读取权限状态：$error' : 'Could not read permission state: $error';
  String itemCount(int value) => '$value';
}
