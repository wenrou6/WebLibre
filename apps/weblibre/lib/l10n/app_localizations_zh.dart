// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'WebLibre';

  @override
  String hostNotAssignedToContainer(String host) {
    return '$host 未分配到此容器';
  }

  @override
  String get siteNotAssignedToContainer => '此站点未分配到此容器';

  @override
  String get initializationError => '初始化错误';

  @override
  String get couldNotInitializeApp => '无法初始化应用';

  @override
  String get downloadCompleted => '下载完成';

  @override
  String get open => '打开';

  @override
  String get couldNotOpenDownloadedFile => '无法打开已下载的文件';

  @override
  String downloadFailed(String fileName) {
    return '下载失败：$fileName';
  }

  @override
  String get settings => '设置';

  @override
  String get generalSettings => '通用';

  @override
  String get privacySecurity => '隐私与安全';

  @override
  String get search => '搜索';

  @override
  String get extensions => '扩展';

  @override
  String get advanced => '高级';

  @override
  String get cancel => '取消';

  @override
  String get save => '保存';

  @override
  String get delete => '删除';

  @override
  String get done => '完成';

  @override
  String get retry => '重试';

  @override
  String get close => '关闭';

  @override
  String get ok => '确定';

  @override
  String get enable => '启用';

  @override
  String get disable => '禁用';

  @override
  String get newTab => '新建标签页';

  @override
  String get newPrivateTab => '新建隐私标签页';

  @override
  String get closeTab => '关闭标签页';

  @override
  String get bookmarks => '书签';

  @override
  String get history => '历史记录';

  @override
  String get downloads => '下载';

  @override
  String get translatePage => '翻译页面';

  @override
  String get showOriginal => '显示原文';

  @override
  String get retranslate => '重新翻译';

  @override
  String get translate => '翻译';

  @override
  String get failedToRestorePage => '恢复页面失败';

  @override
  String get failedToTranslatePage => '翻译页面失败';

  @override
  String translationError(String errorName) {
    return '翻译错误：$errorName';
  }

  @override
  String get from => '源语言';

  @override
  String get to => '目标语言';

  @override
  String get reload => '重新加载';

  @override
  String get stop => '停止';

  @override
  String get forward => '前进';

  @override
  String get back => '后退';

  @override
  String get share => '分享';

  @override
  String get findInPage => '页内查找';

  @override
  String get desktopSite => '桌面版网站';

  @override
  String get clearData => '清除数据';

  @override
  String get clearSiteData => '清除站点数据';

  @override
  String get cookies => 'Cookie';

  @override
  String get cachedFiles => '缓存文件';

  @override
  String get siteData => '站点数据';

  @override
  String get browsingHistory => '浏览历史';

  @override
  String get about => '关于';

  @override
  String get version => '版本';

  @override
  String get license => '许可证';

  @override
  String get sourceCode => '源代码';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get enableSearchSuggestions => '搜索建议';

  @override
  String get defaultSearchEngine => '默认搜索引擎';

  @override
  String get addSearchEngine => '添加搜索引擎';

  @override
  String get removeSearchEngine => '移除';

  @override
  String get editSearchEngine => '编辑';

  @override
  String get container => '容器';

  @override
  String get containers => '容器';

  @override
  String get newContainer => '新建容器';

  @override
  String get color => '颜色';

  @override
  String get name => '名称';

  @override
  String get icon => '图标';

  @override
  String get proxy => '代理';

  @override
  String get tor => 'Tor';

  @override
  String get connections => '连接';

  @override
  String get connected => '已连接';

  @override
  String get disconnected => '未连接';

  @override
  String get connecting => '连接中…';

  @override
  String get error => '错误';

  @override
  String get warning => '警告';

  @override
  String get loading => '加载中…';

  @override
  String get noResults => '未找到结果';

  @override
  String get searchSettings => '搜索设置';

  @override
  String get languageRegionSettings => '语言与区域设置';

  @override
  String get browserLanguages => '浏览器语言';

  @override
  String get customLocale => '自定义区域';

  @override
  String get pureBlack => '纯黑（OLED）';

  @override
  String get refreshRate => '刷新率';

  @override
  String get systemDefault => '跟随系统';

  @override
  String get high => '高';

  @override
  String get low => '低';

  @override
  String get uiScale => '界面缩放';

  @override
  String get fontSize => '字体大小';

  @override
  String get disableAnimations => '禁用动画';

  @override
  String get resetAllPreferences => '恢复全部默认设置';

  @override
  String get showCloseButton => '显示关闭按钮';

  @override
  String get customTabs => '自定义标签页';

  @override
  String get updateAllExtensions => '全部更新';

  @override
  String get installExtension => '安装';

  @override
  String get uninstallExtension => '移除';

  @override
  String get extensionsSettings => '扩展';

  @override
  String get allowUnsignedExtensions => '允许未签名扩展';

  @override
  String get searchHistory => '搜索历史';

  @override
  String get clearHistory => '清除历史记录';

  @override
  String get recentSearches => '最近搜索';

  @override
  String get topSites => '快捷方式';

  @override
  String get pinShortcut => '固定';

  @override
  String get unpinShortcut => '取消固定';

  @override
  String get editShortcut => '编辑';

  @override
  String get removeShortcut => '移除';

  @override
  String get onboardingWelcome => '欢迎使用 WebLibre';

  @override
  String get onboardingGetStarted => '开始使用';

  @override
  String get onboardingNext => '下一步';

  @override
  String get onboardingSkip => '跳过';

  @override
  String get onboardingFinish => '完成';

  @override
  String get restoreBackup => '恢复备份';

  @override
  String get createBackup => '创建备份';

  @override
  String get backupPassword => '备份密码';

  @override
  String get importBookmarks => '导入书签';

  @override
  String get exportBookmarks => '导出书签';

  @override
  String get printPage => '打印';

  @override
  String get saveAsPdf => '另存为 PDF';

  @override
  String get exportAsImage => '另存为图片';

  @override
  String get exportAsMarkdown => '导出为 Markdown';

  @override
  String get copyAsMarkdown => '复制为 Markdown';

  @override
  String get copyImage => '复制图片';

  @override
  String get copyLink => '复制链接';

  @override
  String get openInNewTab => '在新标签页打开';

  @override
  String get openInPrivateTab => '在隐私标签页打开';

  @override
  String get openInContainer => '在容器中打开';

  @override
  String get screenshotProtection => '截屏保护';

  @override
  String get privateTabsNotification => '隐私标签页已打开';

  @override
  String get closeAllPrivateTabs => '关闭全部隐私标签页';

  @override
  String get lockOnStartupOnly => '仅在启动时锁定';

  @override
  String get trackingProtection => '跟踪保护';

  @override
  String get enhancedTrackingProtection => '增强跟踪保护';

  @override
  String get contentBlocking => '内容拦截';

  @override
  String get safeBrowsing => '安全浏览';

  @override
  String get geolocationPrivacy => '地理位置隐私';

  @override
  String get webglPrivacy => 'WebGL 隐私';

  @override
  String get webrtcIpLeak => '防止 WebRTC IP 泄漏';

  @override
  String get certificateTransparency => '证书透明度';

  @override
  String get urlCleaner => 'URL 清理器';

  @override
  String get dnsOverHttps => 'DNS over HTTPS';

  @override
  String get customDns => '自定义 DNS';

  @override
  String get editProfile => '编辑配置';

  @override
  String get startAutomatically => '自动启动';

  @override
  String get addProfile => '添加配置';

  @override
  String get proxyConnections => '代理连接';

  @override
  String get proxyLogs => '代理日志';

  @override
  String get allLevels => '全部级别';

  @override
  String get error2 => '错误';

  @override
  String get warning2 => '警告';

  @override
  String get info => '信息';

  @override
  String get debug => '调试';

  @override
  String get trace => '跟踪';

  @override
  String get containerBasedRouting => '基于容器的路由';

  @override
  String get globalRouting => '全局路由';

  @override
  String get notUsedInContainerRouting => '未在容器路由中使用';

  @override
  String get none => '无';

  @override
  String get useNormalConnection => '使用正常浏览器连接';

  @override
  String get unknownProxy => '未知代理';

  @override
  String get proxyNoLongerExists => '所选代理已不存在。';

  @override
  String get importSubscription => '导入订阅';

  @override
  String get fetch => '获取';

  @override
  String get selectAll => '全选';

  @override
  String importNProfiles(int count) {
    return '导入 $count 个配置';
  }

  @override
  String get noSettingsPage => '此扩展未提供设置页面。';

  @override
  String get android => 'Android';

  @override
  String get desktop => '桌面版';

  @override
  String get failedToLoadExtensions => '加载扩展失败';

  @override
  String get noExtensionsFound => '未找到扩展。';

  @override
  String get checkForUpdates => '检查更新';

  @override
  String get installFromFile => '从文件安装';

  @override
  String get privateBrowsing => '隐私浏览';

  @override
  String get extensionNotFound => '找不到此扩展。';

  @override
  String get noSpecialPermissions => '无特殊权限';

  @override
  String get learnMore => '了解更多';

  @override
  String get recommended => '推荐';

  @override
  String byAuthor(String name) {
    return '作者：$name';
  }

  @override
  String get installed => '已安装';

  @override
  String get extension => '扩展';

  @override
  String get clear => '清除';

  @override
  String get defaultBrowser => '默认浏览器';

  @override
  String get setAsDefaultBrowser => '将 WebLibre 设为默认浏览器';

  @override
  String get appearance => '外观';

  @override
  String get theme => '主题';

  @override
  String get chooseSystemLightOrDark => '选择系统、浅色或深色主题';

  @override
  String get useTrueBlackOledSubtitle => '为 OLED 屏幕使用纯黑色';

  @override
  String get userInterfaceZoom => '界面缩放';

  @override
  String get makeUiSmallerOrLarger => '调整界面大小';

  @override
  String get requestHighOrLowRefreshRate => '请求高或低刷新率';

  @override
  String get reduceMotionAndDisableAnimations => '减少动效并关闭应用动画';

  @override
  String get showModalBarrier => '显示模态遮罩';

  @override
  String get dimBackgroundBehindDialogs => '使对话框背景变暗';

  @override
  String get addCloseButtonSubtitle => '在新标签页显示关闭按钮';

  @override
  String get useExternalDownloadManager => '使用外部下载管理器';

  @override
  String get manageDownloadsWithAnotherApp => '使用其他应用管理下载';

  @override
  String get generalSettingsSubtitle => '外观、下载和常规行为';

  @override
  String get webLibreIsDefaultBrowser => 'WebLibre 是默认浏览器';

  @override
  String get defaultButton => '默认';

  @override
  String get setButton => '设置';
}
