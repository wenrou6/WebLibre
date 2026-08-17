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
  String get searchLocalesByTag => '按区域标记搜索';

  @override
  String get browserLanguagePreference => '浏览器语言偏好';

  @override
  String get addCustomLocale => '添加自定义区域';

  @override
  String get enterLocaleTag => '输入区域标记，例如 en-US';

  @override
  String get localeTagExample => 'en-US';

  @override
  String get invalidLocaleIdentifier => '区域标识符无效';

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
  String get closeAllPrivateTabs => '关闭所有隐私标签页';

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
  String get appLanguage => '应用语言';

  @override
  String get appLanguageSubtitle => '选择 WebLibre 使用的界面语言';

  @override
  String get languageSystem => '跟随系统';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageChineseSimplified => '简体中文';

  @override
  String get theme => '主题';

  @override
  String get chooseSystemLightOrDark => '选择系统、浅色或深色主题';

  @override
  String get themeLight => '浅色';

  @override
  String get themeDark => '深色';

  @override
  String get useTrueBlackOledSubtitle => '为 OLED 屏幕使用纯黑色';

  @override
  String get userInterfaceZoom => '界面缩放';

  @override
  String get makeUiSmallerOrLarger => '调整界面大小';

  @override
  String get requestHighOrLowRefreshRate => '请求高或低刷新率';

  @override
  String get refreshRateSubtitle => '选择高刷新率获得更流畅的滚动，或选择低刷新率以节省电量';

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

  @override
  String get searchSettingsHint => '搜索设置';

  @override
  String get noSettingsAvailable => '暂无可用设置。';

  @override
  String noSettingsMatch(String query) {
    return '没有与“$query”匹配的设置。';
  }

  @override
  String get deleteAllExceptionsQuestion => '删除所有例外网站？';

  @override
  String get reenableTrackingProtectionAllExceptionSites =>
      '这将为所有例外网站重新启用跟踪保护。';

  @override
  String get userAgentChanged => '用户代理已更改';

  @override
  String get browserRestartForUserAgent => '需要重启浏览器才能使新的用户代理生效。';

  @override
  String get later => '稍后';

  @override
  String get restartNow => '立即重启';

  @override
  String get entryCopied => '条目已复制';

  @override
  String get messageLabel => '消息：';

  @override
  String get errorLabel => '错误：';

  @override
  String get stackTraceLabel => '堆栈跟踪：';

  @override
  String get copy => '复制';

  @override
  String get sync => '同步';

  @override
  String get chooseSearchProvider => '选择搜索提供商';

  @override
  String get nothingAddedYet => '尚未添加任何内容。';

  @override
  String get add => '添加';

  @override
  String get remove => '移除';

  @override
  String get entries => '条目数';

  @override
  String get lastSync => '上次同步';

  @override
  String get notAvailable => '不可用';

  @override
  String get searchAllSettings => '搜索所有设置';

  @override
  String get appearanceDownloads => '外观、下载';

  @override
  String get browsing => '浏览';

  @override
  String get tabsNavigationExternalLinks => '标签页、导航、外部链接';

  @override
  String get homeAndNewTab => '主页与新标签页';

  @override
  String get homeAndNewTabSubtitle => '设置主页和新标签页显示的内容';

  @override
  String get gestures => '手势';

  @override
  String get strokeGesturesForBrowserActions => '使用轨迹手势执行浏览器操作';

  @override
  String get toolbarAndLayout => '工具栏与布局';

  @override
  String get toolbarAndLayoutSubtitle => '标签栏、工具栏、快速切换器、标签页视图';

  @override
  String get webContent => '网页内容';

  @override
  String get webContentSubtitle => '页面显示、PDF、阅读模式、AI';

  @override
  String get notifications => '通知';

  @override
  String get notificationsSettingsSubtitle => '网页推送、分发服务、网站订阅';

  @override
  String get searchCategorySubtitle => '搜索提供商、Bang 快捷指令、搜索历史';

  @override
  String get trackingProtectionDataClearing => '跟踪保护、数据清除';

  @override
  String get connectionsAndRouting => '连接与路由';

  @override
  String get installManageExtensionSources => '安装并管理扩展来源';

  @override
  String get webLibreAccount => 'WebLibre 账户';

  @override
  String get signInSyncSettings => '登录、同步设置';

  @override
  String get firefoxSync => 'Firefox 同步';

  @override
  String get firefoxSyncSubtitle => '账户、立即同步、同步项目选择';

  @override
  String get advancedCategorySubtitle => 'JavaScript、用户代理、调试';

  @override
  String get browser => '浏览器';

  @override
  String get servicesAndAdvanced => '服务与高级设置';

  @override
  String get startup => '启动';

  @override
  String get whenNoTabToShow => '没有可显示的标签页时';

  @override
  String get onStartupAndAfterClosingLastTab => '应用启动时以及关闭最后一个标签页后';

  @override
  String get applyWhenLastTabCloses => '关闭最后一个标签页时应用';

  @override
  String get otherwiseOpenTabFromAnotherContainer => '否则将改为打开其他容器中的标签页';

  @override
  String get layout => '布局';

  @override
  String get customizeHomeSections => '自定义主页版块';

  @override
  String get chooseOrderHomePage => '选择主页显示的内容并调整顺序';

  @override
  String get customizeNewTabSections => '自定义新标签页版块';

  @override
  String get chooseOrderNewTabPage => '选择新标签页显示的内容并调整顺序';

  @override
  String get address => '地址';

  @override
  String get enterAddressOrShowHomePage => '请输入地址，否则将显示主页';

  @override
  String get notValidAddress => '地址无效';

  @override
  String get closingLastTabStaysInContainer =>
      '关闭容器中的最后一个标签页后将停留在该容器，而不会打开其他位置的标签页';

  @override
  String get homePage => '主页';

  @override
  String get lastOpenedTab => '上次打开的标签页';

  @override
  String get customAddress => '自定义地址';

  @override
  String get showChosenHomeSections => '显示快捷方式和你选择的版块';

  @override
  String get pickUpWhereLeftOff => '从上次离开的地方继续';

  @override
  String get openSpecificPage => '打开指定页面';

  @override
  String get providers => '提供商';

  @override
  String get defaultSearchProvider => '默认搜索提供商';

  @override
  String get chooseDefaultSearchEngine => '选择用于搜索的默认引擎';

  @override
  String get defaultAutocompleteProvider => '默认自动补全提供商';

  @override
  String get chooseSearchSuggestionsProvider => '选择提供搜索建议的服务';

  @override
  String get customSearchEngines => '自定义搜索引擎';

  @override
  String get addManageSearchProviders => '添加并管理你自己的搜索提供商';

  @override
  String get bangShortcuts => 'Bang 快捷指令';

  @override
  String get bangSettings => 'Bang 设置';

  @override
  String get manageBangRepositories => '管理 Bang 仓库和使用数据';

  @override
  String get historyAndSuggestions => '历史记录与建议';

  @override
  String get searchHistoryLimit => '搜索历史上限';

  @override
  String get maximumRecentSearches => '要保留的最近搜索记录最大数量';

  @override
  String get allowClipboardAccessSuggestions => '允许读取剪贴板以提供建议';

  @override
  String get browserReadClipboardSuggestUrls => '浏览器可以读取剪贴板并建议网址';

  @override
  String get autocompleteOnEnter => '按回车键时自动补全';

  @override
  String get acceptInlineSuggestionOnEnterShort => '按回车键时接受行内建议';

  @override
  String get acceptInlineSuggestionOnEnter => '按下键盘回车键时接受行内建议';

  @override
  String get popularSiteSuggestions => '热门网站建议';

  @override
  String get completeTextWithKnownDomainsShort => '使用知名域名补全输入内容';

  @override
  String get completeTextWithKnownDomains => '当历史记录中没有匹配项时，使用知名域名补全输入内容';

  @override
  String get localSearchIndex => '本地搜索索引';

  @override
  String get enableLocalSearchIndex => '启用本地搜索索引';

  @override
  String get indexVisitedPagesLocally => '在本地索引访问过的页面以搜索内容';

  @override
  String get indexPrivateTabs => '索引隐私标签页';

  @override
  String get includePrivateTabsLocalIndexShort => '将隐私标签页加入本地索引';

  @override
  String get indexedPages => '已索引页面';

  @override
  String get viewClearLocalIndex => '查看并清除本地索引';

  @override
  String get searchSettingsSubtitle => '设置搜索提供商、Bang 快捷指令、历史建议和设备端搜索。';

  @override
  String get disabled => '已禁用';

  @override
  String get entriesLowercase => '条';

  @override
  String get pleaseEnterValue => '请输入一个值';

  @override
  String get pleaseEnterValidNumber => '请输入有效数字';

  @override
  String get valueBetweenZeroAndHundred => '值必须介于 0 到 100 之间';

  @override
  String get localSearchIndexDescription =>
      '在本地索引访问过的页面，让浏览器可以搜索其中的内容。访问元数据仍保留在引擎中，仅页面文本存储在设备上。';

  @override
  String get indexPrivateTabsDescription => '将在隐私标签页中打开的页面加入本地索引。默认关闭。';

  @override
  String get clearLocalSearchIndexQuestion => '清除本地搜索索引？';

  @override
  String get clearLocalSearchIndexDescription =>
      '这将删除所有本地索引的页面内容，不会影响引擎中的历史记录（访问元数据）。';

  @override
  String pagesIndexed(int count) {
    return '已索引 $count 个页面';
  }

  @override
  String get loadingEllipsis => '正在加载…';

  @override
  String get contentAndIdentity => '内容与身份标识';

  @override
  String get enableJavaScript => '启用 JavaScript';

  @override
  String get turnWebsiteScriptingOnOff => '开启或关闭网站脚本';

  @override
  String get customUserAgent => '自定义用户代理';

  @override
  String get overrideBrowserUserAgent => '覆盖浏览器的用户代理字符串';

  @override
  String get useThirdPartyCaCertificates => '使用第三方 CA 证书';

  @override
  String get allowAndroidCaStoreCertificates => '允许使用 Android CA 存储中的证书';

  @override
  String get experimental => '实验性功能';

  @override
  String get experimentalFeatures => '实验性功能';

  @override
  String get experimentalFeaturesSubtitle => '底层运行时功能与启动行为';

  @override
  String get developerTools => '开发者工具';

  @override
  String get unmountEngineOffScreen => '离开页面时卸载引擎';

  @override
  String get freeEngineUnderOverlay => '当覆盖界面位于上层时释放网页引擎';

  @override
  String get iconCache => '图标缓存';

  @override
  String get storedFavicons => '已存储的网站图标';

  @override
  String get mlDownloads => '机器学习下载内容';

  @override
  String get downloadedAiModelsRuntimeFiles => '已下载的 AI 模型和运行时文件';

  @override
  String get errorLogs => '错误日志';

  @override
  String get viewCopyLogsIssueReporting => '查看并复制日志以便报告问题';

  @override
  String get dartVm => 'Dart 虚拟机';

  @override
  String get copyDartVmServiceUrl => '复制 Dart VM 服务网址';

  @override
  String get resetUi => '重置界面';

  @override
  String get rebuildEntireBrowserUi => '重新构建整个浏览器界面';

  @override
  String get advancedSettingsSubtitle => '设置引擎行为、运行时覆盖项和开发者工具。';

  @override
  String get javascriptDisabledWarning =>
      '关闭 JavaScript 可以提升安全性、隐私性和速度，但可能导致某些网站无法正常工作。';

  @override
  String get thirdPartyCertificatesAndroidCaStore =>
      '允许使用 Android CA 存储中的第三方证书';

  @override
  String get unmountEngineOffScreenDescription =>
      '当全屏覆盖界面（设置、标签页、搜索）位于上层时卸载网页引擎并释放资源。在 Android 12 及更低版本上始终执行此操作；启用后，Android 13 及更高版本也会采用相同行为，返回页面时可能会重新加载。';

  @override
  String get size => '大小';

  @override
  String get clearMlDownloadsQuestion => '清除机器学习下载内容？';

  @override
  String get clearMlDownloadsDescription =>
      '这将清除此配置文件下载的 AI 模型和 ONNX 运行时文件。需要时会重新下载。再次使用机器学习功能前请重启 WebLibre。';

  @override
  String get mlDownloadsCleared => '机器学习下载内容已清除。重试前请重启 WebLibre。';

  @override
  String failedToClearMlDownloads(String error) {
    return '无法清除机器学习下载内容：$error';
  }

  @override
  String get clearing => '正在清除';

  @override
  String get serviceUrlCopied => '服务网址已复制';

  @override
  String get reset => '重置';

  @override
  String get manageProxyProfilesAndConnections => '管理代理配置和连接';

  @override
  String get proxyRouting => '代理路由';

  @override
  String get chooseProxyForRegularAndPrivateTabs => '选择普通标签页和隐私标签页使用的代理';

  @override
  String get proxySettingsSubtitle => '管理代理连接并选择哪些标签页使用代理。';

  @override
  String get manageExtensions => '管理扩展';

  @override
  String get browseInstalledAndAvailableExtensions => '浏览已安装、已停用、可用和不受支持的扩展';

  @override
  String get customCollection => '自定义集合';

  @override
  String get useCustomMozillaAddonCollection => '使用自定义 Mozilla 扩展集合';

  @override
  String get updates => '更新';

  @override
  String get automaticUpdates => '自动更新';

  @override
  String get automaticExtensionUpdatesEvery12Hours => '每 12 小时自动检查并安装扩展更新';

  @override
  String get security => '安全';

  @override
  String get unsignedExtensionsNotVerifiedByMozilla => '未签名扩展未经 Mozilla 验证';

  @override
  String get extensionsSettingsSubtitle => '管理附加组件、更新行为和扩展安全性。';

  @override
  String extensionSettingFailedToLoad(String error) {
    return '加载失败：$error';
  }

  @override
  String get unsignedExtensionTrustWarning => '只从可信来源安装未签名扩展。它们可能包含恶意代码。';

  @override
  String get allowUnsignedExtensionsQuestion => '允许未签名扩展？';

  @override
  String get unsignedExtensionsSecurityWarning => '警告：这会显著降低浏览器的安全性。';

  @override
  String get unsignedExtensionsRiskDetails =>
      '未签名扩展会绕过 Mozilla 的安全审核流程。恶意扩展可能：\n\n• 读取和修改你在任何网站上看到的所有内容\n• 窃取密码、银行信息和个人数据\n• 在不知情的情况下监控你的浏览活动\n• 在设备上安装其他恶意软件';

  @override
  String get unsignedExtensionsDeveloperOnly =>
      '仅当你是正在安装自己开发的扩展的开发者，或完全信任来源时才启用此选项。';

  @override
  String get allow => '允许';

  @override
  String allowAfterSeconds(int seconds) {
    return '允许（$seconds）';
  }

  @override
  String get runtimeAndStartup => '运行时与启动';

  @override
  String get isolatedContentProcess => '隔离内容进程';

  @override
  String get runWebContentInIsolatedProcess => '在隔离进程中运行网页内容';

  @override
  String get appZygoteProcess => '应用 Zygote 进程';

  @override
  String get preloadContentServiceForFasterIsolatedStartup => '预加载内容服务以加快隔离启动';

  @override
  String get experimentalSettingsSubtitle => '运行时隔离和启动行为。';

  @override
  String get isolatedContentProcessRequiresRestart => '在隔离进程中运行网页内容。需要重启应用。';

  @override
  String get appZygoteProcessRequiresAndroidAndRestart =>
      '预加载内容服务以加快隔离进程启动。需要 Android 10 或更高版本并重启应用。';

  @override
  String get customExtensionCollection => '自定义扩展集合';

  @override
  String get collectionSource => '集合来源';

  @override
  String get collectionConfiguration => '集合配置';

  @override
  String get collectionConfigurationSubtitle => 'Mozilla 服务器、集合所有者和集合名称';

  @override
  String get serverUrl => '服务器 URL';

  @override
  String get collectionUser => '集合用户';

  @override
  String get collectionName => '集合名称';

  @override
  String get actions => '操作';

  @override
  String get saveAndRestartBrowser => '保存并重启浏览器';

  @override
  String get applyCustomCollectionAndRestartBrowser => '应用自定义集合并重启浏览器';

  @override
  String get usageData => '使用数据';

  @override
  String get bangFrequencies => 'Bang 使用频率';

  @override
  String get bangFrequenciesSubtitle => '用于 Bang 推荐的使用记录';

  @override
  String get repositories => '仓库';

  @override
  String get generalBangs => '常规 Bang';

  @override
  String get syncOnDemandFromGitHub => '按需从 GitHub 同步';

  @override
  String get kagiBangs => 'Kagi Bang';

  @override
  String get bangSettingsTitle => 'Bang 设置';

  @override
  String get bangSettingsSubtitle => 'Bang 快捷方式使用情况、仓库和按需同步。';

  @override
  String get desktopModeSites => '桌面模式网站';

  @override
  String get desktopModeSitesDescription =>
      '这些网站始终以桌面模式加载，会覆盖默认设置。子域名也包含在内（例如，\"example.com\" 也会涵盖 \"m.example.com\"）。';

  @override
  String get noSitesAdded => '未添加网站。';

  @override
  String get moduleSearchProviders => '搜索提供商';

  @override
  String get moduleSuggestions => '建议';

  @override
  String get moduleTabs => '标签页';

  @override
  String get moduleArticles => '文章';

  @override
  String get moduleHistoryEngine => '历史记录（引擎）';

  @override
  String get moduleLocalContent => '本地内容';

  @override
  String get modulePopularSites => '热门网站';

  @override
  String get moduleHistoryHighlights => '历史记录精选';

  @override
  String get moduleShortcuts => '快捷方式';

  @override
  String get moduleRecentHistory => '最近历史记录';

  @override
  String get moduleRecentArticles => '最近文章';

  @override
  String get moduleRecentTabs => '最近标签页';

  @override
  String get moduleFrequentBangs => '常用 Bang';

  @override
  String get moduleQuote => '名言';

  @override
  String get moduleQuickActions => '快速操作';

  @override
  String get customizeHome => '自定义主页';

  @override
  String get customizeNewTab => '自定义新标签页';

  @override
  String get customizeSearch => '自定义搜索';

  @override
  String get moduleSurfaceReorderDescription =>
      '拖动可重新排序。关闭某个分区开关可在此隐藏它，不会影响其他页面。';

  @override
  String get resetToDefaults => '恢复默认设置';

  @override
  String get trackingProtectionExceptions => '跟踪保护例外';

  @override
  String get searchExceptionUrls => '搜索例外网址';

  @override
  String get deleteAll => '全部删除';

  @override
  String get exceptionList => '例外列表';

  @override
  String get siteWithTrackingProtectionDisabled => '已停用跟踪保护的网站';

  @override
  String failedToDeleteExceptions(String error) {
    return '删除例外失败：$error';
  }

  @override
  String failedToRemoveException(String error) {
    return '移除例外失败：$error';
  }

  @override
  String get removeException => '移除例外';

  @override
  String get noExceptions => '没有例外';

  @override
  String get exceptionSitesAppearHere => '添加到例外的网站会显示在这里';

  @override
  String get errorLoadingExceptions => '加载例外时出错';

  @override
  String get logLevelFatal => '致命';

  @override
  String get logLevelAll => '全部';

  @override
  String get logLevelVerbose => '详细';

  @override
  String get logLevelUnexpected => '异常';

  @override
  String get logLevelNothing => '无';

  @override
  String get logLevelOff => '关闭';

  @override
  String get accordion => '手风琴式';

  @override
  String get accordionSubtitle => '可展开的堆叠标签组';

  @override
  String get addBookmark => '添加书签';

  @override
  String get addChildTab => '添加子标签页';

  @override
  String get addIsolatedTab => '添加隔离标签页';

  @override
  String get addPrivateTab => '添加隐私标签页';

  @override
  String get addRegularTab => '添加普通标签页';

  @override
  String get addressBar => '地址栏';

  @override
  String get allowLoginAppCallbacks => '允许登录应用回调';

  @override
  String get allowLoginAppCallbacksSubtitle => '允许在浏览器登录后返回应用的链接';

  @override
  String get always => '始终';

  @override
  String get alwaysKeepInBrowser => '始终保留在浏览器中';

  @override
  String get alwaysOpenInApp => '始终在应用中打开';

  @override
  String get alwaysOpenLinksInBrowser => '始终在浏览器中打开链接';

  @override
  String get alwaysOpenLinksInNativeApps => '始终在原生应用中打开链接';

  @override
  String get alwaysRequestDesktopSite => '始终请求桌面版网站';

  @override
  String get alwaysRequestDesktopSiteSubtitle => '默认以桌面模式打开新标签页';

  @override
  String get askBeforeOpening => '打开前询问';

  @override
  String get askBeforeOpeningLinksInAppsSubtitle => '在原生应用中打开链接前询问';

  @override
  String get askHowBookmarkOpens => '询问书签的打开方式';

  @override
  String get askHowExternalLinksOpen => '询问外部链接的打开方式';

  @override
  String get autoHideTabBar => '自动隐藏标签栏';

  @override
  String get autoHideTabBarSubtitle => '滚动页面时隐藏标签栏';

  @override
  String get background => '后台';

  @override
  String get backgroundTabBehavior => '后台标签页行为';

  @override
  String get backgroundTabBehaviorSubtitle => '选择标签页在后台打开后的行为';

  @override
  String get bookmark => '书签';

  @override
  String get bookmarkOpenBehavior => '书签打开行为';

  @override
  String get bookmarkOpenBehaviorSubtitle => '选择点击书签时的打开方式';

  @override
  String get bottomSheetTabView => '底部面板';

  @override
  String get bottomSheetTabViewSubtitle => '在底部面板中显示标签页';

  @override
  String get browsingNavigationSection => '导航';

  @override
  String get browsingSettings => '浏览';

  @override
  String get browsingSettingsSubtitle => '标签页、导航、应用链接和小型网页行为。';

  @override
  String get browsingTabsSection => '标签页';

  @override
  String get cloneAsIsolated => '克隆为隔离标签页';

  @override
  String get cloneAsPrivate => '克隆为隐私标签页';

  @override
  String get cloneAsRegular => '克隆为普通标签页';

  @override
  String get closeButtonsOnAllTabs => '在所有标签页上显示关闭按钮';

  @override
  String get closeButtonsOnAllTabsSubtitle => '在每个标签页上显示关闭按钮';

  @override
  String get closeFromSameHost => '关闭同一主机的标签页';

  @override
  String get closeOthers => '关闭其他标签页';

  @override
  String get compact => '紧凑';

  @override
  String get compactTabBarSubtitle => '单行紧凑标签页';

  @override
  String get containerTabs => '容器标签页';

  @override
  String get containerTabsSubtitle => '按容器分组标签页';

  @override
  String get contextualToolbarSection => '上下文工具栏';

  @override
  String get continueIntoNextContainer => '继续到下一个容器';

  @override
  String get continueIntoNextContainerSubtitle => '经过容器最后一个标签页后移至下一个容器';

  @override
  String get createChildTabs => '创建子标签页';

  @override
  String get createChildTabsSubtitle => '在同一容器上下文中打开标签页里的链接';

  @override
  String get customTab => '自定义标签页';

  @override
  String get customTabsBrowsingSubtitle => '控制 WebLibre 处理 Android 自定义标签页的方式';

  @override
  String get customizeSwitcherButtons => '自定义切换器按钮';

  @override
  String get customizeSwitcherButtonsSubtitle => '选择快速标签页切换器中显示的按钮';

  @override
  String get customizeToolbarButtons => '自定义工具栏按钮';

  @override
  String get customizeToolbarButtonsSubtitle => '选择并排列上下文工具栏按钮';

  @override
  String get decreaseFont => '缩小字体';

  @override
  String get desktopModeSection => '桌面模式';

  @override
  String get desktopModeSitesSubtitle => '始终以桌面模式加载的网站';

  @override
  String get disableGestures => '禁用手势';

  @override
  String get doubleBackToCloseTab => '双击返回关闭标签页';

  @override
  String get doubleBackToCloseTabSubtitle => '需要按两次返回键才能关闭当前标签页';

  @override
  String get duplicateTab => '复制标签页';

  @override
  String get enableGestures => '启用手势';

  @override
  String get extensionsMenu => '扩展菜单';

  @override
  String get externalLinkHandling => '外部链接处理';

  @override
  String get externalLinkHandlingSubtitle => '选择外部链接在 WebLibre 中的打开方式';

  @override
  String get externalLinksSection => '外部链接';

  @override
  String get hardRefreshBypassCache => '强制刷新（绕过缓存）';

  @override
  String get hideQuickTabSwitcherBar => '隐藏快速标签页切换栏';

  @override
  String get hideTabBar => '隐藏标签栏';

  @override
  String get historyMenuForwardPages => '历史记录菜单（后续页面）';

  @override
  String get historyMenuPreviousPages => '历史记录菜单（先前页面）';

  @override
  String get home => '主页';

  @override
  String get homeScreenSection => '主屏幕';

  @override
  String get increaseFont => '增大字体';

  @override
  String get installSitesAsApps => '将网站安装为应用';

  @override
  String get installSitesAsAppsSubtitle => '允许将没有清单的网站安装为应用';

  @override
  String get livePreview => '实时预览';

  @override
  String get livePreviewSubtitle => '预览工具栏和布局更改';

  @override
  String get longPressUrlToCopy => '长按网址复制';

  @override
  String get longPressUrlToCopySubtitle => '长按地址栏复制当前网址';

  @override
  String get loopAround => '循环';

  @override
  String get loopAroundSubtitle => '到达第一个或最后一个标签页后从另一端继续';

  @override
  String get menu => '菜单';

  @override
  String get navigateSequentialTabs => '按顺序浏览标签页';

  @override
  String get navigateSequentialTabsSubtitle => '移至相邻标签页';

  @override
  String get never => '从不';

  @override
  String get newTabDefault => '新标签页默认类型';

  @override
  String get newTabDefaultSubtitle => '选择手动创建标签页的默认类型';

  @override
  String get newestFirst => '最新优先';

  @override
  String get off => '关闭';

  @override
  String get offerAppStoreFallback => '提供应用商店备选项';

  @override
  String get offerAppStoreFallbackSubtitle => '没有已安装应用能打开链接时，提议查找应用';

  @override
  String get oldestFirst => '最早优先';

  @override
  String get openBookmarkCustomTab => '在自定义标签页中打开书签';

  @override
  String get openBookmarkIsolatedTab => '在隔离标签页中打开书签';

  @override
  String get openBookmarkPrivateTab => '在隐私标签页中打开书签';

  @override
  String get openBookmarkRegularTab => '在普通标签页中打开书签';

  @override
  String get openBookmarks => '打开书签';

  @override
  String get openExternalLinksIsolatedTab => '在隔离标签页中打开外部链接';

  @override
  String get openExternalLinksPrivateTab => '在隐私标签页中打开外部链接';

  @override
  String get openExternalLinksRegularTab => '在普通标签页中打开外部链接';

  @override
  String get openLinksInApps => '在应用中打开链接';

  @override
  String get openLinksInAppsSubtitle => '选择外部应用链接的打开方式';

  @override
  String get openSettings => '打开设置';

  @override
  String get pageDown => '向下翻页';

  @override
  String get pageUp => '向上翻页';

  @override
  String get positionBottom => '底部';

  @override
  String get positionBottomSubtitle => '将栏放置在底部';

  @override
  String get positionLeft => '左侧';

  @override
  String get positionRight => '右侧';

  @override
  String get positionTop => '顶部';

  @override
  String get positionTopSubtitle => '将栏放置在顶部';

  @override
  String get previewBank => '银行';

  @override
  String get previewNews => '新闻';

  @override
  String get previewPageContent => '页面内容';

  @override
  String get prompt => '询问';

  @override
  String get pullToRefresh => '下拉刷新';

  @override
  String get pullToRefreshSubtitle => '在页面上向下滑动以重新加载';

  @override
  String get quickSwitcherHierarchyDepth => '快速切换器层级深度';

  @override
  String get quickSwitcherHierarchyDepthSubtitle => '选择要显示的标签页层级数';

  @override
  String quickSwitcherHierarchyLevelCount(int count) {
    return '$count 层';
  }

  @override
  String get quickSwitcherHistoryFallback => '快速切换器历史记录回退';

  @override
  String get quickSwitcherHistoryFallbackSubtitle => '层级中没有匹配项时使用最近访问的标签页';

  @override
  String get quickSwitcherTitleWidth => '快速切换器标题宽度';

  @override
  String get quickSwitcherTitleWidthSubtitle => '选择标签页标题占用的空间';

  @override
  String get quickTabSwitcherSection => '快速标签页切换器';

  @override
  String get quit => '退出';

  @override
  String get quitWithoutConfirmation => '不经确认退出';

  @override
  String get readerMode => '阅读模式';

  @override
  String get recentlyUsedTabs => '最近使用的标签页';

  @override
  String get recentlyUsedTabsSubtitle => '在快速切换器中显示最近使用的标签页';

  @override
  String get rememberedSiteRules => '已记住的网站规则';

  @override
  String get removeBookmark => '移除书签';

  @override
  String get removeRule => '移除规则';

  @override
  String get scrollToBottom => '滚动到底部';

  @override
  String get scrollToTop => '滚动到顶部';

  @override
  String get searchToolbarLayoutSettings => '搜索工具栏和布局设置';

  @override
  String get sequentialTabNavigation => '顺序标签页导航';

  @override
  String get sequentialTabNavigationSubtitle => '选择按顺序浏览标签页时在何处结束';

  @override
  String get showContainerUi => '显示容器界面';

  @override
  String get showContainerUiSubtitle => '显示容器选择器、菜单和管理功能';

  @override
  String get showContextualToolbar => '显示上下文工具栏';

  @override
  String get showContextualToolbarSubtitle => '浏览时显示上下文工具栏';

  @override
  String get showFaviconsInListView => '在列表视图中显示网站图标';

  @override
  String get showFaviconsInListViewSubtitle => '在标签页旁显示网站图标';

  @override
  String get showIsolatedTabUi => '显示隔离标签页界面';

  @override
  String get showIsolatedTabUiSubtitle => '在界面中显示创建隔离标签页的选项';

  @override
  String get showTitlesInQuickTabSwitcher => '在快速标签页切换器中显示标题';

  @override
  String get showTitlesInQuickTabSwitcherSubtitle => '在快速切换器中显示标签页标题';

  @override
  String get showTranslationOptions => '显示翻译选项';

  @override
  String get smallWebTabDefault => '小型网页标签页默认类型';

  @override
  String get smallWebTabDefaultSubtitle => '选择进入小型网页时使用的标签页类型';

  @override
  String get stayAndOfferToSwitch => '停留并提议切换';

  @override
  String get stayAndOfferToSwitchSubtitle => '停留在当前标签页并提议切换';

  @override
  String get switchImmediately => '立即切换';

  @override
  String get switchImmediatelySubtitle => '切换到新打开的后台标签页';

  @override
  String get switchToLastUsedTab => '切换到上次使用的标签页';

  @override
  String get switchToLastUsedTabSubtitle => '返回之前使用的标签页';

  @override
  String get tabBarDirection => '标签栏方向';

  @override
  String get tabBarDirectionSubtitle => '选择标签页在标签栏中的排列方式';

  @override
  String get tabBarPosition => '标签栏位置';

  @override
  String get tabBarPositionSubtitle => '选择标签栏的显示位置';

  @override
  String get tabBarSection => '标签栏';

  @override
  String get tabBarStyle => '标签栏样式';

  @override
  String get tabBarStyleSubtitle => '选择标签栏布局';

  @override
  String get tabBarSwipeBehavior => '标签栏滑动行为';

  @override
  String get tabBarSwipeBehaviorSubtitle => '选择在标签栏上水平滑动时的行为';

  @override
  String get tabListDirection => '标签页列表方向';

  @override
  String get tabListDirectionSubtitle => '选择标签页在列表视图中的排列方式';

  @override
  String get tabStacking => '标签页堆叠';

  @override
  String get tabStackingSubtitle => '选择标签页的分组和显示方式';

  @override
  String get tabTypeIsolated => '隔离';

  @override
  String get tabTypePrivate => '隐私';

  @override
  String get tabTypeRegular => '普通';

  @override
  String get tabViewSection => '标签页视图';

  @override
  String get tabs => '标签页';

  @override
  String get textSize => '文字大小';

  @override
  String get twoRows => '两行';

  @override
  String get twoRowsSubtitle => '用两行显示标签页';

  @override
  String get unshortener => '短链接还原';

  @override
  String get unshortenerSubtitle => '短链接解析器和 API 令牌';

  @override
  String get urlCleanerBrowsingSubtitle => '跟踪参数移除规则和目录更新';

  @override
  String get verticalSideRailSubtitle => '在垂直侧栏中显示标签页';

  @override
  String get webLibrePreview => 'WebLibre 预览';

  @override
  String get withTitle => '带标题';

  @override
  String get withTitleSubtitle => '在标签栏中显示标签页标题';

  @override
  String get addExternalFilterList => '添加外部过滤列表';

  @override
  String get addExternalList => '添加外部列表';

  @override
  String get ads => '广告';

  @override
  String get adsAnalyticsAndSocialTrackers => '广告、分析和社交跟踪器';

  @override
  String get adsAnalyticsAndSocialTrackersSubtitle =>
      '阻止广告、分析、社交和 Mozilla 社交跟踪器类别';

  @override
  String get advancedFingerprintingProtection => '高级指纹保护';

  @override
  String get advancedSecurity => '高级安全';

  @override
  String get allCookiesMayBreakSites => '所有 Cookie（可能导致网站异常）';

  @override
  String get allTabs => '所有标签页';

  @override
  String get allThirdPartyCookies => '所有第三方 Cookie';

  @override
  String get allowlistExceptions => '允许列表例外';

  @override
  String get allowlistExceptionsSubtitle => '用于解决网站严重和轻微问题的兼容性例外';

  @override
  String get alreadyAdded => '已添加';

  @override
  String get alwaysAllowed => '始终允许';

  @override
  String get alwaysBlocked => '始终阻止';

  @override
  String get annoyances => '烦扰内容';

  @override
  String get appOpeningProtection => '应用打开保护';

  @override
  String appPolicyWithPackage(Object policy, Object packageName) {
    return '$policy · $packageName';
  }

  @override
  String get apply => '应用';

  @override
  String get applyTo => '应用于';

  @override
  String get applyWebLibreHardenings => '应用 WebLibre 加固';

  @override
  String get applyWebLibreHardeningsDescription =>
      '这将启用精选的附加过滤列表，并将合法的 URL 缩短器列表添加为外部列表。';

  @override
  String get applyWebLibreHardeningsQuestion => '应用 WebLibre 加固？';

  @override
  String get applyWebLibreHardeningsSubtitle => '启用精选的附加过滤列表。';

  @override
  String get autoClearHistory => '自动清除历史记录';

  @override
  String get autoClearHistorySummary => '自动删除超过所选时间的浏览历史记录';

  @override
  String get autoClearUnassignedTabs => '自动清除未分配标签页';

  @override
  String get autoClearUnassignedTabsSummary => '自动关闭超过所选时间的未分配标签页';

  @override
  String get autoSelectLanguages => '自动选择语言';

  @override
  String get autoSelectLanguagesSubtitle => '启用与设备语言匹配的区域过滤列表。';

  @override
  String get autoSelectedForLanguage => '已根据你的语言自动选择';

  @override
  String get block => '阻止';

  @override
  String get blockAppsFromOpeningBrowser => '阻止应用打开浏览器';

  @override
  String get blockAppsFromOpeningBrowserSubtitle =>
      '打开其他应用发送到 WebLibre 的链接前询问。';

  @override
  String get blockAppsFromOpeningBrowserSummary => '打开其他应用链接前询问';

  @override
  String get blockCookies => '阻止 Cookie';

  @override
  String get blockCookiesSubtitle => '根据以下策略阻止 Cookie';

  @override
  String get blockInsecureHttpConnections => '阻止不安全的 HTTP 连接';

  @override
  String get blockInsecureHttpConnectionsSummary => '要求使用安全的 HTTPS 连接';

  @override
  String get blockLocalNetworkRequests => '阻止本地网络请求';

  @override
  String get blockLocalNetworkRequestsSubtitle => '阻止网页向本地网络地址发起请求';

  @override
  String get blockLocalNetworkRequestsSummary => '阻止向本地网络地址的请求';

  @override
  String get blockLocalNetworkTrackers => '阻止本地网络跟踪器';

  @override
  String get blockLocalNetworkTrackersSubtitle => '阻止跟踪器访问本地网络资源';

  @override
  String get blockLocalNetworkTrackersSummary => '阻止跟踪器访问本地资源';

  @override
  String get blockTrackingContent => '阻止跟踪内容';

  @override
  String get blockTrackingContentSubtitle => '阻止网站中嵌入的跟踪脚本和资源';

  @override
  String get bounceTrackingProtection => '跳转跟踪保护';

  @override
  String get bounceTrackingProtectionSubtitle => '阻止通过网站间中间 URL 重定向收集数据的重定向跟踪器';

  @override
  String get bounceTrackingProtectionSummary => '阻止使用中间重定向的跟踪器';

  @override
  String get cachedImagesAndFiles => '缓存的图片和文件';

  @override
  String get cachedImagesAndFilesDescription => '缓存的图片和文件';

  @override
  String get chooseLanguagesWebsitesCanSee => '选择网站可见的语言';

  @override
  String get chooseTrackingProtectionAggressiveness => '选择跟踪保护强度';

  @override
  String get completeHardening => '完整加固';

  @override
  String get completeHardeningSearchTerms => '概览 完整加固 应用 重置所有分组加固偏好';

  @override
  String get completeHardeningSubtitle => '应用或重置所有分组加固偏好';

  @override
  String get completeHardeningToggleSubtitle => '一次切换所有分组加固偏好。';

  @override
  String get configureBrowserLanguagesSubtitle => '配置向网站公开的语言偏好';

  @override
  String get connectionSecurity => '连接安全';

  @override
  String get contentBlockingDatabase => '内容阻止数据库';

  @override
  String get contentBlockingDatabaseSubtitle => '管理跟踪器和广告阻止数据库';

  @override
  String get contentBlockingDatabaseSummary => '跟踪器和广告阻止数据库';

  @override
  String get cookieBlockingModeAndPolicySelection => 'Cookie 阻止模式和策略选择';

  @override
  String get cookieNotices => 'Cookie 提示';

  @override
  String get cookiePolicy => 'Cookie 策略';

  @override
  String get cookiesAndSiteData => 'Cookie 和网站数据';

  @override
  String get cookiesAndSiteDataDescription => 'Cookie 和网站数据';

  @override
  String get couldNotLoadPreferenceSettings => '无法加载偏好设置';

  @override
  String get crossSiteAndSocialMediaTrackers => '跨站和社交媒体跟踪器';

  @override
  String get cryptominers => '加密货币挖矿程序';

  @override
  String get cryptominersSubtitle => '阻止使用设备挖掘加密货币的脚本';

  @override
  String get custom => '自定义';

  @override
  String get customResolverUrl => '自定义解析器 URL';

  @override
  String get customTrackingProtection => '自定义跟踪保护';

  @override
  String get customTrackingProtectionChoiceSubtitle => '选择要启用的跟踪保护';

  @override
  String get customTrackingProtectionSubtitle => '自定义 Cookie、内容、跟踪器和指纹控制。';

  @override
  String get dataManagement => '数据管理';

  @override
  String get defaultFilterLists => '默认';

  @override
  String get defaultOn => '默认启用';

  @override
  String get defaultProtection => '默认保护';

  @override
  String get defaultProtectionSubtitle => '仅在默认 DNS 失败时使用 DoH';

  @override
  String get deleteBrowsingData => '删除浏览数据';

  @override
  String get deleteBrowsingDataSummary => '清除选定的浏览数据';

  @override
  String get descriptionOptional => '描述（可选）';

  @override
  String get dohProtectionLevelDescription =>
      'HTTPS 上的域名系统（DNS）会通过加密连接发送域名请求，提供安全 DNS，让其他人更难看到你即将访问的网站。';

  @override
  String get dohProvider => 'DoH 提供商';

  @override
  String get dohResolverSettingsSubtitle => '保护级别、提供商选择和自定义解析器 URL';

  @override
  String get dohSettingsSubtitle => '加密 DNS 保护级别和解析器选择。';

  @override
  String durationDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 天',
      one: '$count 天',
    );
    return '$_temp0';
  }

  @override
  String durationMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个月',
      one: '$count 个月',
    );
    return '$_temp0';
  }

  @override
  String durationWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 周',
      one: '$count 周',
    );
    return '$_temp0';
  }

  @override
  String get edit => '编辑';

  @override
  String get editExternalFilterList => '编辑外部过滤列表';

  @override
  String get enabled => '已启用';

  @override
  String get encryptDnsLookups => '加密 DNS 查询';

  @override
  String get extensionsWebApi => '扩展 Web API';

  @override
  String get extensionsWebApiSubtitle =>
      '为网页内容和扩展页面启用 mozAddonManager API。需要重启应用。';

  @override
  String get extensionsWebApiSummary => '公开扩展 Web API';

  @override
  String get externalListDescriptionHint => '例如：烦扰内容 — 作者';

  @override
  String get externalListUrlHint => 'https://example.com/list.txt';

  @override
  String get externalLists => '外部列表';

  @override
  String get externalListsRawUrlsNote =>
      '原始 URL 会作为外部列表转发给 uBlock Origin。描述仅在 WebLibre 中显示。';

  @override
  String failedToLoadFilterListAssets(Object error) {
    return '加载过滤列表资源失败：$error';
  }

  @override
  String get filterLists => '过滤列表';

  @override
  String get fingerprintProtection => '指纹保护';

  @override
  String get fingerprintProtectionSubtitle => '精细控制浏览器指纹';

  @override
  String get fingerprinting => '指纹识别';

  @override
  String get fissionSiteIsolation => 'Fission（站点隔离）';

  @override
  String get fissionSiteIsolationSubtitle => '将每个站点隔离到独立操作系统进程以提升安全性。需要重启应用。';

  @override
  String get fissionSiteIsolationSummary => '将站点隔离到独立进程';

  @override
  String get fixWebsiteMajorIssues => '修复网站严重问题';

  @override
  String get fixWebsiteMajorIssuesSubtitle => '应用避免网站严重故障所需的例外（推荐）';

  @override
  String get fixWebsiteMinorIssues => '修复网站轻微问题';

  @override
  String get fixWebsiteMinorIssuesSubtitle => '应用例外以修复轻微问题并启用便利功能';

  @override
  String get globalPrivacyControl => '全局隐私控制';

  @override
  String get globalPrivacyControlSummary => '告知网站不要出售或共享你的数据';

  @override
  String get googleSafeBrowsing => 'Google 安全浏览';

  @override
  String get groupControls => '分组控制';

  @override
  String get groupControlsCompleteHardening => '分组控制 完整加固';

  @override
  String get hardeningGroups => '加固分组';

  @override
  String get incognitoMode => '隐私浏览模式';

  @override
  String get incognitoModeSubtitle => '使用隐私浏览模式';

  @override
  String get incognitoModeSummary => '隐私浏览';

  @override
  String get increasedProtection => '增强保护';

  @override
  String get increasedProtectionSubtitle => '优先使用 DoH，默认 DNS 作为后备';

  @override
  String get invalidUrl => 'URL 无效';

  @override
  String get knownFingerprinters => '已知指纹识别器';

  @override
  String get knownFingerprintersSubtitle => '阻止收集信息以唯一识别设备的脚本';

  @override
  String get listUrl => '列表 URL';

  @override
  String get loadDefaults => '加载默认值';

  @override
  String get loadHardenedDefaults => '加载加固默认值';

  @override
  String get localNetworkAccess => '本地网络访问';

  @override
  String get localNetworkAccessSubtitle => '启用本地网络和设备访问阻止';

  @override
  String get localNetworkAccessSummary => '控制对本地网络资源的访问';

  @override
  String get malware => '恶意软件';

  @override
  String get manageWithWebLibre => '使用 WebLibre 管理';

  @override
  String get manageWithWebLibreSubtitle =>
      'WebLibre 会在下次浏览器启动时控制 uBlock Origin 启用的过滤列表。';

  @override
  String get managedApps => '受管理的应用';

  @override
  String get management => '管理';

  @override
  String get managementBaselineNote => '启用管理会从 uBO 的常用基准列表开始，并保留“我的过滤器”。';

  @override
  String get maxProtection => '最大保护';

  @override
  String get maxProtectionSubtitle => '仅使用 DoH，无后备解析器';

  @override
  String get multipurpose => '多用途';

  @override
  String get networkProtection => '网络保护';

  @override
  String get noExternalListsConfigured => '未配置外部列表。';

  @override
  String noExternalListsMatch(Object query) {
    return '没有匹配“$query”的外部列表。';
  }

  @override
  String get openTabs => '打开的标签页';

  @override
  String get optional => '可选';

  @override
  String get overrideTargets => '覆盖目标';

  @override
  String get overview => '概览';

  @override
  String get preferenceSettings => '偏好设置';

  @override
  String get privacy => '隐私';

  @override
  String get privacySecuritySettingsSubtitle => '跟踪保护、网络安全和隐私控制。';

  @override
  String get privacySignalsAndModes => '隐私信号和模式';

  @override
  String get privateModeOnly => '仅隐私模式';

  @override
  String get privateTabsOnly => '仅隐私标签页';

  @override
  String get protectionLevel => '保护级别';

  @override
  String get queryParameterStripping => '移除查询参数';

  @override
  String get queryParameterStrippingSummary => '从 URL 中移除跟踪参数，防止跨站跟踪';

  @override
  String get quickActions => '快捷操作';

  @override
  String get recentSearchesDataDescription => '最近搜索';

  @override
  String get redirectTrackers => '重定向跟踪器';

  @override
  String get redirectTrackersSubtitle => '阻止通过中间 URL 重定向收集数据的跟踪器';

  @override
  String get regions => '区域';

  @override
  String get resetAllPreferencesDescription => '这将把所有用户定义的 Web 引擎偏好恢复为默认值。';

  @override
  String get resetAllPreferencesQuestion => '重置所有偏好？';

  @override
  String get resetToDefaultsDescription =>
      '这将把 uBlock Origin 恢复为默认过滤列表配置，并移除你添加的外部列表。';

  @override
  String get resetToDefaultsQuestion => '重置为默认值？';

  @override
  String get resetToDefaultsSubtitle => '恢复 uBlock Origin 的默认过滤列表配置。';

  @override
  String get resistFingerprinting => '抵抗指纹识别';

  @override
  String get resistFingerprintingSubtitle => '高级指纹保护加固';

  @override
  String get resolverSettings => '解析器设置';

  @override
  String get safeBrowsingMalwareProtection => '安全浏览恶意软件保护';

  @override
  String get safeBrowsingMalwareProtectionSubtitle => '针对危险网站和恶意下载发出警告。';

  @override
  String get safeBrowsingMalwareProtectionSummary => '针对恶意软件和危险下载发出警告';

  @override
  String get safeBrowsingPhishingProtection => '安全浏览网络钓鱼保护';

  @override
  String get safeBrowsingPhishingProtectionSubtitle => '针对欺诈网站和登录页面发出警告。';

  @override
  String get safeBrowsingPhishingProtectionSummary => '针对网络钓鱼网站发出警告';

  @override
  String get screenshotProtectionAndroidSubtitle => '阻止 Android 上的屏幕截图和录屏';

  @override
  String get screenshotProtectionSummary => '阻止屏幕截图和录屏';

  @override
  String get searchFingerprintOverrideTargets => '搜索指纹覆盖目标';

  @override
  String get searchHardeningGroups => '搜索加固分组';

  @override
  String get searchHardeningSettings => '搜索加固设置';

  @override
  String get searchListsGroupsExternalUrls => '搜索列表、分组和外部 URL';

  @override
  String get sitePermissions => '网站权限';

  @override
  String get standard => '标准';

  @override
  String get standardTrackingProtectionSubtitle => '适合日常浏览的均衡保护';

  @override
  String get strict => '严格';

  @override
  String get strictTrackingProtectionSubtitle => '更强的保护，可能导致部分网站异常';

  @override
  String get socialWidgets => '社交组件';

  @override
  String get suspectedFingerprinters => '疑似指纹识别器';

  @override
  String get suspectedFingerprintersAndTabScope => '疑似指纹识别器和标签页范围';

  @override
  String get suspectedFingerprintersSubtitle => '阻止可能用于跟踪你的其他指纹技术';

  @override
  String get totalCookieProtectionRecommended => '全面 Cookie 保护（推荐）';

  @override
  String get trackers => '跟踪器';

  @override
  String get trackersSubtitle => '加密货币挖矿程序、已知指纹识别器和重定向跟踪器';

  @override
  String get trackingContent => '跟踪内容';

  @override
  String get trackingProtectionExceptionsSubtitle => '管理不受跟踪保护的网站';

  @override
  String get trackingScriptsAndScopeForBlocking => '要阻止的跟踪脚本和范围';

  @override
  String get ublockFilterLists => 'uBlock 过滤列表';

  @override
  String get ublockFilterListsAndHardenings => 'uBlock 过滤列表和加固';

  @override
  String get ublockFilterListsAndHardeningsSubtitle => '管理过滤列表并应用 WebLibre 加固';

  @override
  String get ublockFilterListsRestartMessage =>
      '更改 uBlock Origin 过滤列表需要重启应用才能生效。由于缓存，部分更改可能需要几分钟并再次重启才能完全应用。';

  @override
  String get unvisitedSites => '未访问的网站';

  @override
  String get urlMustBeProvided => '必须提供 URL';

  @override
  String get useDefaultDnsResolver => '使用默认 DNS 解析器';

  @override
  String get visitSupportPage => '访问支持页面';

  @override
  String get webEngineHardening => 'Web 引擎加固';

  @override
  String get webEngineHardeningSummary => '加固 Web 引擎偏好';

  @override
  String get searchOrEnterUrl => '搜索或输入网址';

  @override
  String get noPreviousPages => '没有更早的页面';

  @override
  String get noForwardPages => '没有后续页面';

  @override
  String get hardRefresh => '强制刷新';

  @override
  String get closeTabAndDescendants => '关闭标签页及其后代';

  @override
  String get fetchFeedsOnPage => '获取页面订阅源';

  @override
  String get addToHomeScreen => '添加到主屏幕';

  @override
  String get cloneTab => '克隆标签页';

  @override
  String get regular => '普通';

  @override
  String get private => '隐私';

  @override
  String get isolated => '隔离';

  @override
  String get assignContainer => '分配容器';

  @override
  String get urlRelation => '网址关联';

  @override
  String get unassignUrlRelation => '取消网址关联';

  @override
  String get unassignContainer => '取消分配容器';

  @override
  String get moveUp => '上移';

  @override
  String get moveDown => '下移';

  @override
  String get reorder => '重新排序';

  @override
  String get export => '导出';

  @override
  String get desktopMode => '桌面模式';

  @override
  String get changeParent => '更改父标签页…';

  @override
  String get detachFromParent => '从父标签页分离';

  @override
  String get hierarchy => '层级';

  @override
  String get shareLink => '分享链接';

  @override
  String get showQrCode => '显示二维码';

  @override
  String get exportAsPdf => '导出为 PDF';

  @override
  String get print => '打印';

  @override
  String get failedToPrintPage => '无法打印页面';

  @override
  String get shareScreenshot => '分享截图';

  @override
  String get exportAsPng => '导出为 PNG';

  @override
  String get copyAddress => '复制地址';

  @override
  String get openInApp => '在应用中打开';

  @override
  String openInNamedApp(String appName) {
    return '在 $appName 中打开';
  }

  @override
  String get sendToDevice => '发送到设备';

  @override
  String get noTargetDevices => '没有目标设备';

  @override
  String get loadingDevices => '正在加载设备…';

  @override
  String get failedToLoadDevices => '无法加载设备';

  @override
  String sentTabToDevice(String deviceName) {
    return '已将标签页发送到 $deviceName';
  }

  @override
  String get failedToSendTab => '无法发送标签页';

  @override
  String get searchInsideTabs => '在标签页中搜索';

  @override
  String get tabType => '标签页类型';

  @override
  String get sortPinnedFirst => '置顶标签页优先';

  @override
  String get sort => '排序';

  @override
  String get hierarchicalView => '层级视图';

  @override
  String get filterDate => '按日期筛选';

  @override
  String get quickInterval => '快捷时间范围';

  @override
  String get resetFilter => '重置筛选条件';

  @override
  String get filterAndSort => '筛选与排序';

  @override
  String get changeViewMode => '更改视图模式';

  @override
  String get listView => '列表';

  @override
  String get gridView => '网格';

  @override
  String get treeView => '树状';

  @override
  String get privateTabs => '隐私标签页';

  @override
  String get isolatedTabs => '隔离标签页';

  @override
  String get filteredTabs => '筛选出的标签页';

  @override
  String get closeTabs => '关闭标签页';

  @override
  String get bookmarkAll => '全部添加书签';

  @override
  String get bookmarkAllTabs => '为所有标签页添加书签';

  @override
  String get fast => '快速';

  @override
  String get automaticallyAddTabsToFolder => '自动将所有标签页添加到所选文件夹';

  @override
  String get detailed => '详细';

  @override
  String get reviewEachBookmark => '逐个检查并编辑每个书签';

  @override
  String bookmarksAdded(int count) {
    return '已添加 $count 个书签';
  }

  @override
  String get closeAllTabs => '关闭所有标签页';

  @override
  String get closeAllDisplayedTabsQuestion => '确定要关闭所有显示的标签页吗？';

  @override
  String get closeAllPrivateTabsQuestion => '确定要关闭所有隐私标签页吗？';

  @override
  String get tabActions => '标签页操作';

  @override
  String get clearContainerData => '清除容器数据';

  @override
  String get containerDataCleared => '容器数据已成功清除';

  @override
  String containerDataClearedTabsClosed(int count) {
    return '容器数据已清除，已关闭 $count 个标签页。';
  }

  @override
  String errorClearingData(String error) {
    return '清除数据时出错：$error';
  }

  @override
  String downloadingAiModels(int progress) {
    return '正在下载 AI 模型（$progress%）';
  }

  @override
  String get enableAiTabSuggestions => '启用 AI 标签页建议';

  @override
  String get disableAiTabSuggestions => '禁用 AI 标签页建议';

  @override
  String get disableReorderingMode => '禁用重新排序模式';

  @override
  String get enableReorderingMode => '启用重新排序模式';

  @override
  String get reorderingRequiresManualMode => '重新排序需要使用默认手动模式';

  @override
  String get dragTabsToReorder => '拖放标签页以重新排序';

  @override
  String get noSyncedTabsAvailable => '没有可用的同步标签页';

  @override
  String failedToLoadSyncedTabs(String error) {
    return '无法加载同步标签页：$error';
  }

  @override
  String get undo => '撤销';

  @override
  String get extensionSettings => '扩展设置';

  @override
  String get more => '更多';

  @override
  String get connection => '连接';

  @override
  String get bangs => 'Bang 快捷指令';

  @override
  String get feeds => '订阅源';

  @override
  String get smallWeb => '小型网络';

  @override
  String get syncNow => '立即同步';

  @override
  String get pinnedToShortcuts => '已固定到快捷方式';

  @override
  String get unpinnedFromShortcuts => '已从快捷方式取消固定';

  @override
  String get failedToUpdateShortcuts => '无法更新快捷方式';

  @override
  String get urlCleaned => '网址已清理';

  @override
  String get urlPreviewApplied => '已应用网址预览';

  @override
  String get selectAtLeastOneDataType => '请至少选择一种数据类型';

  @override
  String get siteDataCleared => '网站数据已清除';

  @override
  String failedToClearSiteData(String error) {
    return '无法清除网站数据：$error';
  }

  @override
  String get failedToLoadTrackingProtection => '无法加载跟踪保护';

  @override
  String failedToToggleTrackingProtection(String error) {
    return '无法切换跟踪保护：$error';
  }

  @override
  String errorLoadingPermissions(String error) {
    return '加载权限时出错：$error';
  }

  @override
  String get ask => '询问';

  @override
  String get select => '选择';

  @override
  String get keepTabQuestion => '保留标签页？';

  @override
  String get keepTabPrompt => '要保留此标签页还是将其丢弃？';

  @override
  String get discard => '丢弃';

  @override
  String get keep => '保留';

  @override
  String get extractedContent => '提取的内容';

  @override
  String get fullContent => '完整内容';

  @override
  String get reader => '阅读';

  @override
  String get noWebFeedsFound => '未找到网页订阅源';

  @override
  String get availableWebFeeds => '可用的网页订阅源';

  @override
  String get fetchingWebFeeds => '正在获取网页订阅源…';

  @override
  String get enableAiTabSuggestionsTitle => '启用 AI 标签页建议';

  @override
  String get resetToHundredPercent => '重置为 100%';

  @override
  String get clearSiteDataTitle => '清除网站数据';

  @override
  String get selectDataTypesToClear => '选择要清除的数据类型';

  @override
  String get cookiesCacheAndSiteData => 'Cookie、缓存和网站数据';

  @override
  String get authSessions => '身份验证会话';

  @override
  String get savedLoginsActiveSessions => '已保存的登录信息、活动会话';

  @override
  String get offlineStorageDatabasesLocalFiles => '离线存储、数据库、本地文件';

  @override
  String get loginTokensPreferencesTrackingData => '登录令牌、偏好设置、跟踪数据';

  @override
  String get imagesScriptsStylesheets => '图片、脚本、样式表';

  @override
  String get closeTabAfterClearing => '清除后关闭标签页';

  @override
  String get closeThisTabOnceDataCleared => '数据清除后关闭此标签页';

  @override
  String get clearingEllipsis => '正在清除…';

  @override
  String get clearNow => '立即清除';

  @override
  String get cachedFilesLowercase => '缓存文件';

  @override
  String get siteDataLowercase => '网站数据';

  @override
  String get authSessionsLowercase => '身份验证会话';

  @override
  String get dropTabOntoTab => '将标签页拖放到另一个标签页上';

  @override
  String get chooseTabRelationship => '选择这些标签页之间的关系。';

  @override
  String get createContainer => '创建容器';

  @override
  String get createContainerWithBothTabs => '创建一个包含这两个标签页的新容器。';

  @override
  String get assignNewParent => '分配新的父标签页';

  @override
  String get makeDroppedOnTabParent => '将接收拖放的标签页设为父标签页。';

  @override
  String errorWithDetails(String error) {
    return '错误：$error';
  }

  @override
  String get tabNoLongerExists => '标签页已不存在';

  @override
  String get makeStandalone => '设为独立标签页';

  @override
  String get detachFromCurrentParent => '从当前父标签页分离';

  @override
  String get clearAllContainerDataPrompt => '这将清除此容器的所有数据：';

  @override
  String get cache => '缓存';

  @override
  String get permissions => '权限';

  @override
  String get recreateTabsAfterClearing => '清除后重新创建标签页';

  @override
  String get clearDataAction => '清除数据';

  @override
  String get autoplay => '自动播放';

  @override
  String get allowAll => '全部允许';

  @override
  String get blockAudible => '阻止有声媒体';

  @override
  String get blockAll => '全部阻止';

  @override
  String get alwaysUseDesktopSite => '始终使用桌面版网站';

  @override
  String get openLinksForThisSite => '打开此网站的链接';

  @override
  String get followsDefault => '遵循默认设置';

  @override
  String get followDefault => '遵循默认设置';

  @override
  String get openInAppLowercase => '在应用中打开';

  @override
  String get keepInBrowser => '留在浏览器中';

  @override
  String get removeTracking => '移除跟踪参数';

  @override
  String get sandboxedCapture => '沙盒捕获';

  @override
  String get connectionIsSecure => '连接安全';

  @override
  String verifiedBy(String issuer) {
    return '验证者：$issuer';
  }

  @override
  String get selectXpiFile => '选择 XPI 文件';

  @override
  String get homeTargetHomeLabel => '主页';

  @override
  String get homeTargetResumeLastTabLabel => '上次打开的标签页';

  @override
  String get homeTargetCustomUrlLabel => '自定义地址';

  @override
  String get homeTargetHomeDescription => '显示快捷方式和你选择的版块';

  @override
  String get homeTargetResumeLastTabDescription => '从上次离开的地方继续';

  @override
  String get homeTargetCustomUrlDescription => '打开指定页面';

  @override
  String get searchModuleRecentSearchesLabel => '最近搜索';

  @override
  String get searchModuleSearchProvidersLabel => '搜索提供商';

  @override
  String get searchModuleSearchSuggestionsLabel => '建议';

  @override
  String get searchModuleTabsLabel => '标签页';

  @override
  String get searchModuleArticlesLabel => '文章';

  @override
  String get searchModuleBookmarksLabel => '书签';

  @override
  String get searchModuleHistoryLabel => '历史记录（引擎）';

  @override
  String get searchModuleLocalHistoryLabel => '本地内容';

  @override
  String get searchModuleCombinedHistoryLabel => '历史记录';

  @override
  String get searchModulePopularSitesLabel => '热门网站';

  @override
  String get searchModuleHistoryHighlightsLabel => '历史记录精选';

  @override
  String get searchModuleTopSitesLabel => '快捷方式';

  @override
  String get searchModuleRecentHistoryLabel => '最近历史记录';

  @override
  String get searchModuleRecentArticlesLabel => '最近文章';

  @override
  String get searchModuleRecentTabsLabel => '最近标签页';

  @override
  String get searchModuleContainersLabel => '容器';

  @override
  String get searchModuleFrequentBangsLabel => '常用 Bang';

  @override
  String get searchModuleQuoteLabel => '名言';

  @override
  String get searchModuleQuickActionsLabel => '快速操作';

  @override
  String get uBlockAssetGroupDefaultLabel => '默认';

  @override
  String get uBlockAssetGroupAdsLabel => '广告';

  @override
  String get uBlockAssetGroupPrivacyLabel => '隐私';

  @override
  String get uBlockAssetGroupMalwareLabel => '恶意软件';

  @override
  String get uBlockAssetGroupAnnoyancesLabel => '烦扰内容';

  @override
  String get uBlockAssetGroupMultipurposeLabel => '多用途';

  @override
  String get uBlockAssetGroupRegionsLabel => '区域';

  @override
  String get uBlockAssetSubGroupCookiesLabel => 'Cookie 提示';

  @override
  String get uBlockAssetSubGroupSocialLabel => '社交组件';

  @override
  String get torTrademark => '商标';

  @override
  String get torStartAutomatically => '自动启动';

  @override
  String torStartOrStopService(Object brand) {
    return '启动或停止 $brand 服务';
  }

  @override
  String get torRequestNewIdentity => '请求新身份';

  @override
  String get torUseFreshCircuit => '为新连接使用新的电路';

  @override
  String get torAutoConfigureTransport => '自动配置传输';

  @override
  String get torCannotConnectWithoutBridge => '我确定没有网桥无法连接';

  @override
  String get torAutoConfigured => '自动配置';

  @override
  String get torDirectConnection => '直连';

  @override
  String get torFetchFreshBridges => '连接前获取新网桥';

  @override
  String get torSuitableForHeavyCensorship => '适用于严格审查环境';

  @override
  String get userBangs => '用户快捷搜索';

  @override
  String get manageUserBangs => '管理用户快捷搜索';

  @override
  String get searchBangs => '搜索快捷搜索';

  @override
  String get browseCategories => '浏览分类';

  @override
  String get bangCategories => '快捷搜索分类';

  @override
  String get deleteBang => '删除快捷搜索';

  @override
  String get deleteBangConfirm => '确定要删除此快捷搜索吗？';

  @override
  String get openBasePath => '打开基础路径';

  @override
  String get urlEncodePlaceholder => 'URL 编码占位符';

  @override
  String get urlEncodeSpaceToPlus => 'URL 编码空格为加号';

  @override
  String get trigger => '触发词';

  @override
  String get url => 'URL';

  @override
  String get category => '分类';

  @override
  String get subCategory => '子分类';

  @override
  String get enableSync => '启用同步';

  @override
  String get storeCurrent => '存储当前';

  @override
  String get storeSnapshot => '存储快照';

  @override
  String get editLabel => '编辑标签';

  @override
  String get restoreSnapshot => '恢复快照';

  @override
  String get deleteSnapshot => '删除快照';

  @override
  String get restoreSnapshotOverwrite => '这将覆盖当前的本地设置。';

  @override
  String deleteSnapshotConfirm(Object label) {
    return '确定要删除 $label 吗？';
  }

  @override
  String get becomeSupporter => '成为支持者';

  @override
  String get couldNotLoadSubscription => '无法加载订阅';

  @override
  String get delivery => '投递';

  @override
  String get unifiedPushDistributor => 'UnifiedPush 分发器';

  @override
  String get unifiedPushDistributorSubtitle => '投递网站推送通知的应用';

  @override
  String get notificationPermission => '通知权限';

  @override
  String get notificationPermissionSubtitle => '显示网站通知所需';

  @override
  String get subscriptions => '订阅';

  @override
  String get siteSubscriptions => '网站订阅';

  @override
  String get siteSubscriptionsSubtitle => '已订阅推送通知的网站';

  @override
  String get webPushNotifications => '通知';

  @override
  String get webPushNotificationsSubtitle => 'Web 推送投递、分发器和网站订阅。';

  @override
  String get gestureConfiguration => '配置';

  @override
  String get gestureBindings => '手势绑定';

  @override
  String get gestureBehaviorTiming => '行为与计时';

  @override
  String get gestureExcludedSites => '排除的网站';

  @override
  String get gestureFeedback => '反馈';

  @override
  String get gestureOverlay => '叠加层';

  @override
  String get gestureLiveFeedback => '实时反馈';

  @override
  String get gestureLiveFeedbackSubtitle => '绘制时显示手势轨迹及其动作';

  @override
  String get gestureSuggestNext => '建议下一个';

  @override
  String get searchingTheWeb => '正在搜索网页...';

  @override
  String get buySearchPack => '购买搜索包';

  @override
  String get checkConnectionRetry => '请检查网络连接并点击重试。';

  @override
  String get buySearchPackToStart => '购买搜索包以开始';

  @override
  String get requestingTokens => '正在请求令牌...';

  @override
  String get getTokens => '获取令牌';

  @override
  String requestTokens(Object count) {
    return '请求 $count 个令牌';
  }

  @override
  String get noCreditsRemaining => '没有剩余额度';

  @override
  String get buyMore => '购买更多';

  @override
  String get fetchPageData => '获取页面数据';

  @override
  String get find => '查找';

  @override
  String get show => '显示';

  @override
  String get switch_ => '切换';

  @override
  String get dismiss => '忽略';

  @override
  String get navigateBackToCloseTab => '再按一次返回键关闭当前标签页';

  @override
  String get navigateBackToExitApp => '再按一次返回键退出应用';

  @override
  String get openLinkFromClipboard => '要打开剪贴板中的链接吗？';

  @override
  String tabsClosed(Object count) {
    return '已关闭 $count 个标签页';
  }

  @override
  String get tabClosed => '已关闭标签页';

  @override
  String get closeIsolatedTabs => '关闭隔离标签页？';

  @override
  String get hidingDisabledBySite => '网站已禁用隐藏';

  @override
  String get quickStart => '快速开始';

  @override
  String get quickStartSubtitle => '使用推荐默认设置并开始浏览。';

  @override
  String get customSetup => '自定义设置';

  @override
  String get customSetupSubtitle => '配置 DNS、工具栏、扩展等。';

  @override
  String get restoreFromBackup => '从备份恢复';

  @override
  String get restoreFromBackupSubtitle => '从加密备份文件导入配置。';

  @override
  String get endUserLicenseAgreement => '最终用户许可协议';

  @override
  String get couldNotLoadSearchEngines => '无法加载搜索引擎';

  @override
  String get failedToLoadFeeds => '加载订阅源失败';

  @override
  String get failedToLoadFeed => '加载订阅源失败';

  @override
  String get failedToLoadArticles => '加载文章失败';

  @override
  String get failedReadingArticle => '阅读文章失败';

  @override
  String get testConnection => '测试连接';

  @override
  String get testing => '测试中...';

  @override
  String get failed => '失败';

  @override
  String get direct => '直连';

  @override
  String get clearOnExit => '退出时清除';

  @override
  String get pinned => '已固定';

  @override
  String get hue => '色相';

  @override
  String get saturation => '饱和度';

  @override
  String get lightness => '亮度';

  @override
  String get smallWebUnavailable => 'Small Web 不可用';

  @override
  String get couldNotLoadSmallWebSession => '无法加载 Small Web 会话';

  @override
  String get autoDeviceDefault => '自动（设备默认）';

  @override
  String get anyRegion => '任意地区';

  @override
  String get anyTime => '任意时间';

  @override
  String get defaultModerate => '默认（适中）';

  @override
  String get syncSettingsSubtitle => '账户状态、二维码配对和设备名称';

  @override
  String get syncServerOverridesSubtitle => '自定义 Firefox 账户和令牌服务器端点';

  @override
  String get restore => '恢复';

  @override
  String get store => '存储';

  @override
  String get previewUnavailable => '预览不可用';

  @override
  String get searchFailed => '搜索失败';

  @override
  String get gestureSuggestNextSubtitle => '同时显示其他可以完成的手势';
}
