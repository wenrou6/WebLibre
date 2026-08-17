// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'WebLibre';

  @override
  String hostNotAssignedToContainer(String host) {
    return '$host is not assigned to this container';
  }

  @override
  String get siteNotAssignedToContainer =>
      'This site is not assigned to this container';

  @override
  String get initializationError => 'Initialization Error';

  @override
  String get couldNotInitializeApp => 'Could not initialize App';

  @override
  String get downloadCompleted => 'Download completed';

  @override
  String get open => 'Open';

  @override
  String get couldNotOpenDownloadedFile => 'Could not open downloaded file';

  @override
  String downloadFailed(String fileName) {
    return 'Download failed: $fileName';
  }

  @override
  String get settings => 'Settings';

  @override
  String get generalSettings => 'General';

  @override
  String get privacySecurity => 'Privacy & Security';

  @override
  String get search => 'Search';

  @override
  String get extensions => 'Extensions';

  @override
  String get advanced => 'Advanced';

  @override
  String get cancel => 'Cancel';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Delete';

  @override
  String get done => 'Done';

  @override
  String get retry => 'Retry';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get enable => 'Enable';

  @override
  String get disable => 'Disable';

  @override
  String get newTab => 'New Tab';

  @override
  String get newPrivateTab => 'New Private Tab';

  @override
  String get closeTab => 'Close Tab';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get history => 'History';

  @override
  String get downloads => 'Downloads';

  @override
  String get translatePage => 'Translate Page';

  @override
  String get showOriginal => 'Show Original';

  @override
  String get retranslate => 'Retranslate';

  @override
  String get translate => 'Translate';

  @override
  String get failedToRestorePage => 'Failed to restore page';

  @override
  String get failedToTranslatePage => 'Failed to translate page';

  @override
  String translationError(String errorName) {
    return 'Translation error: $errorName';
  }

  @override
  String get from => 'From';

  @override
  String get to => 'To';

  @override
  String get reload => 'Reload';

  @override
  String get stop => 'Stop';

  @override
  String get forward => 'Forward';

  @override
  String get back => 'Back';

  @override
  String get share => 'Share';

  @override
  String get findInPage => 'Find in Page';

  @override
  String get desktopSite => 'Desktop Site';

  @override
  String get clearData => 'Clear Data';

  @override
  String get clearSiteData => 'Clear Site Data';

  @override
  String get cookies => 'Cookies';

  @override
  String get cachedFiles => 'Cached Files';

  @override
  String get siteData => 'Site Data';

  @override
  String get browsingHistory => 'Browsing History';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get license => 'License';

  @override
  String get sourceCode => 'Source Code';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get enableSearchSuggestions => 'Search Suggestions';

  @override
  String get defaultSearchEngine => 'Default Search Engine';

  @override
  String get addSearchEngine => 'Add Search Engine';

  @override
  String get removeSearchEngine => 'Remove';

  @override
  String get editSearchEngine => 'Edit';

  @override
  String get container => 'Container';

  @override
  String get containers => 'Containers';

  @override
  String get newContainer => 'New Container';

  @override
  String get color => 'Color';

  @override
  String get name => 'Name';

  @override
  String get icon => 'Icon';

  @override
  String get proxy => 'Proxy';

  @override
  String get tor => 'Tor';

  @override
  String get connections => 'Connections';

  @override
  String get connected => 'Connected';

  @override
  String get disconnected => 'Disconnected';

  @override
  String get connecting => 'Connecting...';

  @override
  String get error => 'Error';

  @override
  String get warning => 'Warning';

  @override
  String get loading => 'Loading...';

  @override
  String get noResults => 'No results found';

  @override
  String get searchSettings => 'Search Settings';

  @override
  String get languageRegionSettings => 'Language & Region Settings';

  @override
  String get browserLanguages => 'Browser Languages';

  @override
  String get customLocale => 'Custom Locale';

  @override
  String get searchLocalesByTag => 'Search locales by tag';

  @override
  String get browserLanguagePreference => 'Browser language preference';

  @override
  String get addCustomLocale => 'Add custom locale';

  @override
  String get enterLocaleTag => 'Enter a locale tag such as en-US';

  @override
  String get localeTagExample => 'en-US';

  @override
  String get invalidLocaleIdentifier => 'Invalid locale identifier';

  @override
  String get pureBlack => 'Pure Black (OLED)';

  @override
  String get refreshRate => 'Refresh Rate';

  @override
  String get systemDefault => 'System Default';

  @override
  String get high => 'High';

  @override
  String get low => 'Low';

  @override
  String get uiScale => 'UI Scale';

  @override
  String get fontSize => 'Font Size';

  @override
  String get disableAnimations => 'Disable Animations';

  @override
  String get resetAllPreferences => 'Reset All Preferences';

  @override
  String get showCloseButton => 'Show Close Button';

  @override
  String get customTabs => 'Custom Tabs';

  @override
  String get updateAllExtensions => 'Update All';

  @override
  String get installExtension => 'Install';

  @override
  String get uninstallExtension => 'Remove';

  @override
  String get extensionsSettings => 'Extensions';

  @override
  String get allowUnsignedExtensions => 'Allow Unsigned Extensions';

  @override
  String get searchHistory => 'Search History';

  @override
  String get clearHistory => 'Clear History';

  @override
  String get recentSearches => 'Recent Searches';

  @override
  String get topSites => 'Shortcuts';

  @override
  String get pinShortcut => 'Pin';

  @override
  String get unpinShortcut => 'Unpin';

  @override
  String get editShortcut => 'Edit';

  @override
  String get removeShortcut => 'Remove';

  @override
  String get onboardingWelcome => 'Welcome to WebLibre';

  @override
  String get onboardingGetStarted => 'Get Started';

  @override
  String get onboardingNext => 'Next';

  @override
  String get onboardingSkip => 'Skip';

  @override
  String get onboardingFinish => 'Finish';

  @override
  String get restoreBackup => 'Restore Backup';

  @override
  String get createBackup => 'Create Backup';

  @override
  String get backupPassword => 'Backup Password';

  @override
  String get importBookmarks => 'Import Bookmarks';

  @override
  String get exportBookmarks => 'Export Bookmarks';

  @override
  String get printPage => 'Print';

  @override
  String get saveAsPdf => 'Save as PDF';

  @override
  String get exportAsImage => 'Save as Image';

  @override
  String get exportAsMarkdown => 'Export as Markdown';

  @override
  String get copyAsMarkdown => 'Copy as Markdown';

  @override
  String get copyImage => 'Copy Image';

  @override
  String get copyLink => 'Copy Link';

  @override
  String get openInNewTab => 'Open in New Tab';

  @override
  String get openInPrivateTab => 'Open in Private Tab';

  @override
  String get openInContainer => 'Open in Container';

  @override
  String get screenshotProtection => 'Screenshot Protection';

  @override
  String get privateTabsNotification => 'Private tabs are open';

  @override
  String get closeAllPrivateTabs => 'Close All Private Tabs';

  @override
  String get lockOnStartupOnly => 'Lock on Startup Only';

  @override
  String get trackingProtection => 'Tracking Protection';

  @override
  String get enhancedTrackingProtection => 'Enhanced Tracking Protection';

  @override
  String get contentBlocking => 'Content Blocking';

  @override
  String get safeBrowsing => 'Safe Browsing';

  @override
  String get geolocationPrivacy => 'Geolocation Privacy';

  @override
  String get webglPrivacy => 'WebGL Privacy';

  @override
  String get webrtcIpLeak => 'WebRTC IP Leak Prevention';

  @override
  String get certificateTransparency => 'Certificate Transparency';

  @override
  String get urlCleaner => 'URL Cleaner';

  @override
  String get dnsOverHttps => 'DNS over HTTPS';

  @override
  String get customDns => 'Custom DNS';

  @override
  String get editProfile => 'Edit Profile';

  @override
  String get startAutomatically => 'Start Automatically';

  @override
  String get addProfile => 'Add Profile';

  @override
  String get proxyConnections => 'Proxy Connections';

  @override
  String get proxyLogs => 'Proxy Logs';

  @override
  String get allLevels => 'All levels';

  @override
  String get error2 => 'Error';

  @override
  String get warning2 => 'Warning';

  @override
  String get info => 'Info';

  @override
  String get debug => 'Debug';

  @override
  String get trace => 'Trace';

  @override
  String get containerBasedRouting => 'Container-Based Routing';

  @override
  String get globalRouting => 'Global Routing';

  @override
  String get notUsedInContainerRouting => 'Not used in container-based routing';

  @override
  String get none => 'None';

  @override
  String get useNormalConnection => 'Use the normal browser connection';

  @override
  String get unknownProxy => 'Unknown proxy';

  @override
  String get proxyNoLongerExists => 'The selected proxy no longer exists.';

  @override
  String get importSubscription => 'Import Subscription';

  @override
  String get fetch => 'Fetch';

  @override
  String get selectAll => 'Select all';

  @override
  String importNProfiles(int count) {
    return 'Import $count profile(s)';
  }

  @override
  String get noSettingsPage =>
      'This extension does not expose a settings page.';

  @override
  String get android => 'Android';

  @override
  String get desktop => 'Desktop';

  @override
  String get failedToLoadExtensions => 'Failed to load extensions';

  @override
  String get noExtensionsFound => 'No extensions found.';

  @override
  String get checkForUpdates => 'Check for updates';

  @override
  String get installFromFile => 'Install from file';

  @override
  String get privateBrowsing => 'Private Browsing';

  @override
  String get extensionNotFound => 'This extension could not be found.';

  @override
  String get noSpecialPermissions => 'No special permissions listed';

  @override
  String get learnMore => 'Learn More';

  @override
  String get recommended => 'Recommended';

  @override
  String byAuthor(String name) {
    return 'by $name';
  }

  @override
  String get installed => 'Installed';

  @override
  String get extension => 'Extension';

  @override
  String get clear => 'Clear';

  @override
  String get defaultBrowser => 'Default Browser';

  @override
  String get setAsDefaultBrowser => 'Set WebLibre as the default browser';

  @override
  String get appearance => 'Appearance';

  @override
  String get appLanguage => 'App Language';

  @override
  String get appLanguageSubtitle => 'Choose the language used by WebLibre';

  @override
  String get languageSystem => 'System';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageChineseSimplified => '简体中文';

  @override
  String get theme => 'Theme';

  @override
  String get chooseSystemLightOrDark =>
      'Choose between system, light, or dark theme';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get useTrueBlackOledSubtitle => 'Use true black for OLED displays';

  @override
  String get userInterfaceZoom => 'User Interface Zoom';

  @override
  String get makeUiSmallerOrLarger =>
      'Make the user interface smaller or larger';

  @override
  String get requestHighOrLowRefreshRate =>
      'Request a high or low refresh rate';

  @override
  String get refreshRateSubtitle =>
      'Choose High for smoother scrolling or Low to save battery';

  @override
  String get reduceMotionAndDisableAnimations =>
      'Reduce motion and turn off app animations';

  @override
  String get showModalBarrier => 'Show Modal Barrier';

  @override
  String get dimBackgroundBehindDialogs => 'Dim the background behind dialogs';

  @override
  String get addCloseButtonSubtitle =>
      'Add a close button to the new tab screen';

  @override
  String get useExternalDownloadManager => 'Use External Download Manager';

  @override
  String get manageDownloadsWithAnotherApp =>
      'Manage downloads with another app';

  @override
  String get generalSettingsSubtitle =>
      'Appearance, downloads, and general behavior';

  @override
  String get webLibreIsDefaultBrowser => 'WebLibre is the default browser';

  @override
  String get defaultButton => 'Default';

  @override
  String get setButton => 'Set';

  @override
  String get searchSettingsHint => 'Search settings';

  @override
  String get noSettingsAvailable => 'No settings available.';

  @override
  String noSettingsMatch(String query) {
    return 'No settings match \"$query\".';
  }

  @override
  String get deleteAllExceptionsQuestion => 'Delete All Exceptions?';

  @override
  String get reenableTrackingProtectionAllExceptionSites =>
      'This will re-enable tracking protection for all exception sites.';

  @override
  String get userAgentChanged => 'User Agent Changed';

  @override
  String get browserRestartForUserAgent =>
      'The browser needs to restart for the new user agent to take effect.';

  @override
  String get later => 'Later';

  @override
  String get restartNow => 'Restart Now';

  @override
  String get entryCopied => 'Entry copied';

  @override
  String get messageLabel => 'Message:';

  @override
  String get errorLabel => 'Error:';

  @override
  String get stackTraceLabel => 'Stack Trace:';

  @override
  String get copy => 'Copy';

  @override
  String get sync => 'Sync';

  @override
  String get chooseSearchProvider => 'Choose a search provider';

  @override
  String get nothingAddedYet => 'Nothing added yet.';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Remove';

  @override
  String get entries => 'Entries';

  @override
  String get lastSync => 'Last Sync';

  @override
  String get notAvailable => 'N/A';

  @override
  String get searchAllSettings => 'Search all settings';

  @override
  String get appearanceDownloads => 'Appearance, downloads';

  @override
  String get browsing => 'Browsing';

  @override
  String get tabsNavigationExternalLinks => 'Tabs, navigation, external links';

  @override
  String get homeAndNewTab => 'Home & New Tab';

  @override
  String get homeAndNewTabSubtitle => 'What the home and new tab pages show';

  @override
  String get gestures => 'Gestures';

  @override
  String get strokeGesturesForBrowserActions =>
      'Stroke gestures for browser actions';

  @override
  String get toolbarAndLayout => 'Toolbar & Layout';

  @override
  String get toolbarAndLayoutSubtitle =>
      'Tab bar, toolbar, quick switcher, tab view';

  @override
  String get webContent => 'Web Content';

  @override
  String get webContentSubtitle => 'Page display, PDF, reader mode, AI';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsSettingsSubtitle =>
      'Web push delivery, distributor, site subscriptions';

  @override
  String get searchCategorySubtitle => 'Providers, bangs, search history';

  @override
  String get trackingProtectionDataClearing =>
      'Tracking protection, data clearing';

  @override
  String get connectionsAndRouting => 'Connections and routing';

  @override
  String get installManageExtensionSources =>
      'Install and manage extension sources';

  @override
  String get webLibreAccount => 'WebLibre Account';

  @override
  String get signInSyncSettings => 'Sign in, sync settings';

  @override
  String get firefoxSync => 'Firefox Sync';

  @override
  String get firefoxSyncSubtitle => 'Account, sync now, engine selection';

  @override
  String get advancedCategorySubtitle => 'JavaScript, user agent, debugging';

  @override
  String get browser => 'Browser';

  @override
  String get servicesAndAdvanced => 'Services & Advanced';

  @override
  String get startup => 'Startup';

  @override
  String get whenNoTabToShow => 'When there is no tab to show';

  @override
  String get onStartupAndAfterClosingLastTab =>
      'On startup, and after closing the last tab';

  @override
  String get applyWhenLastTabCloses => 'Apply when the last tab closes';

  @override
  String get otherwiseOpenTabFromAnotherContainer =>
      'Otherwise a tab from another container is opened instead';

  @override
  String get layout => 'Layout';

  @override
  String get customizeHomeSections => 'Customize home sections';

  @override
  String get chooseOrderHomePage => 'Choose and order what the home page shows';

  @override
  String get customizeNewTabSections => 'Customize new tab sections';

  @override
  String get chooseOrderNewTabPage =>
      'Choose and order what the new tab page shows';

  @override
  String get address => 'Address';

  @override
  String get enterAddressOrShowHomePage =>
      'Enter an address, or the home page is shown instead';

  @override
  String get notValidAddress => 'Not a valid address';

  @override
  String get closingLastTabStaysInContainer =>
      'Closing the last tab in a container stays there instead of opening a tab from somewhere else';

  @override
  String get homePage => 'Home page';

  @override
  String get lastOpenedTab => 'Last opened tab';

  @override
  String get customAddress => 'Custom address';

  @override
  String get showChosenHomeSections =>
      'Show shortcuts and the sections you have chosen';

  @override
  String get pickUpWhereLeftOff => 'Pick up where you left off';

  @override
  String get openSpecificPage => 'Open a specific page';

  @override
  String get providers => 'Providers';

  @override
  String get defaultSearchProvider => 'Default Search Provider';

  @override
  String get chooseDefaultSearchEngine =>
      'Choose the default engine for searches';

  @override
  String get defaultAutocompleteProvider => 'Default Autocomplete Provider';

  @override
  String get chooseSearchSuggestionsProvider =>
      'Choose the provider for search suggestions';

  @override
  String get customSearchEngines => 'Custom Search Engines';

  @override
  String get addManageSearchProviders =>
      'Add and manage your own search providers';

  @override
  String get bangShortcuts => 'Bang Shortcuts';

  @override
  String get bangSettings => 'Bang Settings';

  @override
  String get manageBangRepositories =>
      'Manage bang repositories and usage data';

  @override
  String get historyAndSuggestions => 'History & Suggestions';

  @override
  String get searchHistoryLimit => 'Search History Limit';

  @override
  String get maximumRecentSearches =>
      'Maximum number of recent searches to remember';

  @override
  String get allowClipboardAccessSuggestions =>
      'Allow clipboard access for suggestions';

  @override
  String get browserReadClipboardSuggestUrls =>
      'Browser can read clipboard to suggest URLs';

  @override
  String get autocompleteOnEnter => 'Autocomplete on enter';

  @override
  String get acceptInlineSuggestionOnEnterShort =>
      'Accept the inline suggestion when pressing enter';

  @override
  String get acceptInlineSuggestionOnEnter =>
      'Accept the inline suggestion when pressing enter on the keyboard';

  @override
  String get popularSiteSuggestions => 'Popular site suggestions';

  @override
  String get completeTextWithKnownDomainsShort =>
      'Complete typed text with well-known domains';

  @override
  String get completeTextWithKnownDomains =>
      'Complete typed text with well-known domains when your history has no match';

  @override
  String get localSearchIndex => 'Local Search Index';

  @override
  String get enableLocalSearchIndex => 'Enable local search index';

  @override
  String get indexVisitedPagesLocally =>
      'Index visited pages locally for content search';

  @override
  String get indexPrivateTabs => 'Index private tabs';

  @override
  String get includePrivateTabsLocalIndexShort =>
      'Include private tabs in the local index';

  @override
  String get indexedPages => 'Indexed pages';

  @override
  String get viewClearLocalIndex => 'View and clear the local index';

  @override
  String get searchSettingsSubtitle =>
      'Providers, bangs, history suggestions, and on-device search.';

  @override
  String get disabled => 'Disabled';

  @override
  String get entriesLowercase => 'entries';

  @override
  String get pleaseEnterValue => 'Please enter a value';

  @override
  String get pleaseEnterValidNumber => 'Please enter a valid number';

  @override
  String get valueBetweenZeroAndHundred => 'Value must be between 0 and 100';

  @override
  String get localSearchIndexDescription =>
      'Index visited pages locally so the browser can search their content. Visit metadata stays in the engine; only page text is stored on-device.';

  @override
  String get indexPrivateTabsDescription =>
      'Include pages opened in private tabs in the local index. Off by default.';

  @override
  String get clearLocalSearchIndexQuestion => 'Clear local search index?';

  @override
  String get clearLocalSearchIndexDescription =>
      'This removes all locally indexed page content. Engine history (visit metadata) is not affected.';

  @override
  String pagesIndexed(int count) {
    return '$count pages indexed';
  }

  @override
  String get loadingEllipsis => 'Loading…';

  @override
  String get contentAndIdentity => 'Content & Identity';

  @override
  String get enableJavaScript => 'Enable JavaScript';

  @override
  String get turnWebsiteScriptingOnOff => 'Turn website scripting on or off';

  @override
  String get customUserAgent => 'Custom User Agent';

  @override
  String get overrideBrowserUserAgent =>
      'Override the browser user agent string';

  @override
  String get useThirdPartyCaCertificates => 'Use third party CA certificates';

  @override
  String get allowAndroidCaStoreCertificates =>
      'Allow Android CA store certificates';

  @override
  String get experimental => 'Experimental';

  @override
  String get experimentalFeatures => 'Experimental Features';

  @override
  String get experimentalFeaturesSubtitle =>
      'Low-level runtime features and startup behavior';

  @override
  String get developerTools => 'Developer Tools';

  @override
  String get unmountEngineOffScreen => 'Unmount Engine Off-Screen';

  @override
  String get freeEngineUnderOverlay =>
      'Free the web engine when an overlay is on top';

  @override
  String get iconCache => 'Icon Cache';

  @override
  String get storedFavicons => 'Stored favicons';

  @override
  String get mlDownloads => 'ML Downloads';

  @override
  String get downloadedAiModelsRuntimeFiles =>
      'Downloaded AI models and runtime files';

  @override
  String get errorLogs => 'Error Logs';

  @override
  String get viewCopyLogsIssueReporting =>
      'View and copy logs for issue reporting';

  @override
  String get dartVm => 'Dart VM';

  @override
  String get copyDartVmServiceUrl => 'Copy Dart VM service URL';

  @override
  String get resetUi => 'Reset UI';

  @override
  String get rebuildEntireBrowserUi => 'Rebuild the entire browser UI';

  @override
  String get advancedSettingsSubtitle =>
      'Engine behavior, runtime overrides, and developer tools.';

  @override
  String get javascriptDisabledWarning =>
      'While turning off JavaScript can boost security, privacy, and speed, it may cause some sites to not work as intended.';

  @override
  String get thirdPartyCertificatesAndroidCaStore =>
      'Allows the use of third party certificates from the Android CA store';

  @override
  String get unmountEngineOffScreenDescription =>
      'Unmount the web engine while a full-screen overlay (settings, tabs, search) is on top, freeing its resources. On Android 12 and lower this is always done; enabling it applies the same behavior on Android 13+, which may cause the page to reload when returning.';

  @override
  String get size => 'Size';

  @override
  String get clearMlDownloadsQuestion => 'Clear ML downloads?';

  @override
  String get clearMlDownloadsDescription =>
      'This clears downloaded AI models and ONNX runtime files for this profile. They will be downloaded again when needed. Restart WebLibre before retrying ML features.';

  @override
  String get mlDownloadsCleared =>
      'ML downloads cleared. Restart WebLibre before retrying.';

  @override
  String failedToClearMlDownloads(String error) {
    return 'Failed to clear ML downloads: $error';
  }

  @override
  String get clearing => 'Clearing';

  @override
  String get serviceUrlCopied => 'Service URL copied';

  @override
  String get reset => 'Reset';

  @override
  String get manageProxyProfilesAndConnections =>
      'Manage proxy profiles and connections';

  @override
  String get proxyRouting => 'Proxy Routing';

  @override
  String get chooseProxyForRegularAndPrivateTabs =>
      'Choose which proxy carries regular and private tabs';

  @override
  String get proxySettingsSubtitle =>
      'Manage proxy connections and choose which tabs use them.';

  @override
  String get manageExtensions => 'Manage Extensions';

  @override
  String get browseInstalledAndAvailableExtensions =>
      'Browse installed, disabled, available, and unsupported extensions';

  @override
  String get customCollection => 'Custom Collection';

  @override
  String get useCustomMozillaAddonCollection =>
      'Use a custom Mozilla addon collection';

  @override
  String get updates => 'Updates';

  @override
  String get automaticUpdates => 'Automatic updates';

  @override
  String get automaticExtensionUpdatesEvery12Hours =>
      'Automatically check for and install extension updates every 12 hours';

  @override
  String get security => 'Security';

  @override
  String get unsignedExtensionsNotVerifiedByMozilla =>
      'Unsigned extensions have not been verified by Mozilla';

  @override
  String get extensionsSettingsSubtitle =>
      'Manage add-ons, update behavior, and extension security.';

  @override
  String extensionSettingFailedToLoad(String error) {
    return 'Failed to load: $error';
  }

  @override
  String get unsignedExtensionTrustWarning =>
      'Only install unsigned extensions from sources you trust. They may contain malicious code.';

  @override
  String get allowUnsignedExtensionsQuestion => 'Allow unsigned extensions?';

  @override
  String get unsignedExtensionsSecurityWarning =>
      'Warning: This significantly weakens your browser\'s security.';

  @override
  String get unsignedExtensionsRiskDetails =>
      'Unsigned extensions bypass Mozilla\'s safety review process. Malicious extensions can:\n\n• Read and modify everything you see on any website\n• Steal passwords, banking details, and personal data\n• Monitor your browsing activity silently\n• Install additional malware on your device';

  @override
  String get unsignedExtensionsDeveloperOnly =>
      'Only enable this if you are a developer installing your own extension or absolutely trust the source.';

  @override
  String get allow => 'Allow';

  @override
  String allowAfterSeconds(int seconds) {
    return 'Allow ($seconds)';
  }

  @override
  String get runtimeAndStartup => 'Runtime & Startup';

  @override
  String get isolatedContentProcess => 'Isolated Content Process';

  @override
  String get runWebContentInIsolatedProcess =>
      'Run web content in an isolated process';

  @override
  String get appZygoteProcess => 'App Zygote Process';

  @override
  String get preloadContentServiceForFasterIsolatedStartup =>
      'Preload the content service for faster isolated startup';

  @override
  String get experimentalSettingsSubtitle =>
      'Runtime isolation and startup behavior.';

  @override
  String get isolatedContentProcessRequiresRestart =>
      'Run web content in an isolated process. Requires app restart.';

  @override
  String get appZygoteProcessRequiresAndroidAndRestart =>
      'Preload the content service for faster isolated process startup. Requires Android 10+ and app restart.';

  @override
  String get customExtensionCollection => 'Custom Extension Collection';

  @override
  String get collectionSource => 'Collection Source';

  @override
  String get collectionConfiguration => 'Collection configuration';

  @override
  String get collectionConfigurationSubtitle =>
      'Mozilla server, collection owner, and collection name';

  @override
  String get serverUrl => 'Server URL';

  @override
  String get collectionUser => 'Collection User';

  @override
  String get collectionName => 'Collection Name';

  @override
  String get actions => 'Actions';

  @override
  String get saveAndRestartBrowser => 'Save & Restart Browser';

  @override
  String get applyCustomCollectionAndRestartBrowser =>
      'Apply the custom collection and restart the browser';

  @override
  String get usageData => 'Usage Data';

  @override
  String get bangFrequencies => 'Bang Frequencies';

  @override
  String get bangFrequenciesSubtitle =>
      'Tracked usage for bang recommendations';

  @override
  String get repositories => 'Repositories';

  @override
  String get generalBangs => 'General Bangs';

  @override
  String get syncOnDemandFromGitHub => 'Sync on demand from GitHub';

  @override
  String get kagiBangs => 'Kagi Bangs';

  @override
  String get bangSettingsTitle => 'Bang Settings';

  @override
  String get bangSettingsSubtitle =>
      'Bang shortcuts usage, repositories, and on-demand sync.';

  @override
  String get desktopModeSites => 'Desktop mode sites';

  @override
  String get desktopModeSitesDescription =>
      'These sites always load in desktop mode, overriding the default. Subdomains are included (e.g. \"example.com\" also covers \"m.example.com\").';

  @override
  String get noSitesAdded => 'No sites added.';

  @override
  String get moduleSearchProviders => 'Search Providers';

  @override
  String get moduleSuggestions => 'Suggestions';

  @override
  String get moduleTabs => 'Tabs';

  @override
  String get moduleArticles => 'Articles';

  @override
  String get moduleHistoryEngine => 'History (engine)';

  @override
  String get moduleLocalContent => 'Local content';

  @override
  String get modulePopularSites => 'Popular Sites';

  @override
  String get moduleHistoryHighlights => 'History Highlights';

  @override
  String get moduleShortcuts => 'Shortcuts';

  @override
  String get moduleRecentHistory => 'Recent History';

  @override
  String get moduleRecentArticles => 'Recent Articles';

  @override
  String get moduleRecentTabs => 'Recent Tabs';

  @override
  String get moduleFrequentBangs => 'Frequent Bangs';

  @override
  String get moduleQuote => 'Quote';

  @override
  String get moduleQuickActions => 'Quick Actions';

  @override
  String get customizeHome => 'Customize Home';

  @override
  String get customizeNewTab => 'Customize New Tab';

  @override
  String get customizeSearch => 'Customize Search';

  @override
  String get moduleSurfaceReorderDescription =>
      'Drag to reorder. Switch a section off to hide it here without affecting the other page.';

  @override
  String get resetToDefaults => 'Reset to Defaults';

  @override
  String get trackingProtectionExceptions => 'Tracking Protection Exceptions';

  @override
  String get searchExceptionUrls => 'Search exception URLs';

  @override
  String get deleteAll => 'Delete All';

  @override
  String get exceptionList => 'Exception List';

  @override
  String get siteWithTrackingProtectionDisabled =>
      'Site with tracking protection disabled';

  @override
  String failedToDeleteExceptions(String error) {
    return 'Failed to delete exceptions: $error';
  }

  @override
  String failedToRemoveException(String error) {
    return 'Failed to remove exception: $error';
  }

  @override
  String get removeException => 'Remove exception';

  @override
  String get noExceptions => 'No exceptions';

  @override
  String get exceptionSitesAppearHere =>
      'Sites added to exceptions will appear here';

  @override
  String get errorLoadingExceptions => 'Error loading exceptions';

  @override
  String get logLevelFatal => 'Fatal';

  @override
  String get logLevelAll => 'All';

  @override
  String get logLevelVerbose => 'Verbose';

  @override
  String get logLevelUnexpected => 'Unexpected';

  @override
  String get logLevelNothing => 'Nothing';

  @override
  String get logLevelOff => 'Off';

  @override
  String get accordion => 'Accordion';

  @override
  String get accordionSubtitle => 'Expandable stacked tab groups';

  @override
  String get addBookmark => 'Add Bookmark';

  @override
  String get addChildTab => 'Add Child Tab';

  @override
  String get addIsolatedTab => 'Add Isolated Tab';

  @override
  String get addPrivateTab => 'Add Private Tab';

  @override
  String get addRegularTab => 'Add Regular Tab';

  @override
  String get addressBar => 'Address Bar';

  @override
  String get allowLoginAppCallbacks => 'Allow Login App Callbacks';

  @override
  String get allowLoginAppCallbacksSubtitle =>
      'Allow links that return to an app after browser login';

  @override
  String get always => 'Always';

  @override
  String get alwaysKeepInBrowser => 'Always keep in browser';

  @override
  String get alwaysOpenInApp => 'Always open in app';

  @override
  String get alwaysOpenLinksInBrowser => 'Always open links in browser';

  @override
  String get alwaysOpenLinksInNativeApps => 'Always open links in native apps';

  @override
  String get alwaysRequestDesktopSite => 'Always Request Desktop Site';

  @override
  String get alwaysRequestDesktopSiteSubtitle =>
      'Open new tabs in desktop mode by default';

  @override
  String get askBeforeOpening => 'Ask before opening';

  @override
  String get askBeforeOpeningLinksInAppsSubtitle =>
      'Ask before opening links in native apps';

  @override
  String get askHowBookmarkOpens => 'Ask how the bookmark should open';

  @override
  String get askHowExternalLinksOpen => 'Ask how external links should open';

  @override
  String get autoHideTabBar => 'Auto-Hide Tab Bar';

  @override
  String get autoHideTabBarSubtitle => 'Hide the tab bar while scrolling pages';

  @override
  String get background => 'Background';

  @override
  String get backgroundTabBehavior => 'Background Tab Behavior';

  @override
  String get backgroundTabBehaviorSubtitle =>
      'Choose what happens after a tab opens in the background';

  @override
  String get bookmark => 'Bookmark';

  @override
  String get bookmarkOpenBehavior => 'Bookmark Open Behavior';

  @override
  String get bookmarkOpenBehaviorSubtitle =>
      'Choose how tapping a bookmark opens it';

  @override
  String get bottomSheetTabView => 'Bottom Sheet';

  @override
  String get bottomSheetTabViewSubtitle => 'Show tabs in a bottom sheet';

  @override
  String get browsingNavigationSection => 'Navigation';

  @override
  String get browsingSettings => 'Browsing';

  @override
  String get browsingSettingsSubtitle =>
      'Tabs, navigation, app links, and Small Web behavior.';

  @override
  String get browsingTabsSection => 'Tabs';

  @override
  String get cloneAsIsolated => 'Clone as Isolated';

  @override
  String get cloneAsPrivate => 'Clone as Private';

  @override
  String get cloneAsRegular => 'Clone as Regular';

  @override
  String get closeButtonsOnAllTabs => 'Close Buttons on All Tabs';

  @override
  String get closeButtonsOnAllTabsSubtitle =>
      'Show a close button on every tab';

  @override
  String get closeFromSameHost => 'Close from Same Host';

  @override
  String get closeOthers => 'Close Others';

  @override
  String get compact => 'Compact';

  @override
  String get compactTabBarSubtitle => 'A single compact row of tabs';

  @override
  String get containerTabs => 'Container Tabs';

  @override
  String get containerTabsSubtitle => 'Group tabs by container';

  @override
  String get contextualToolbarSection => 'Contextual Toolbar';

  @override
  String get continueIntoNextContainer => 'Continue into Next Container';

  @override
  String get continueIntoNextContainerSubtitle =>
      'Move to the next container after its last tab';

  @override
  String get createChildTabs => 'Create Child Tabs';

  @override
  String get createChildTabsSubtitle =>
      'Open links from tabs in the same container context';

  @override
  String get customTab => 'Custom Tab';

  @override
  String get customTabsBrowsingSubtitle =>
      'Control how WebLibre handles Android custom tabs';

  @override
  String get customizeSwitcherButtons => 'Customize Switcher Buttons';

  @override
  String get customizeSwitcherButtonsSubtitle =>
      'Choose buttons shown in the quick tab switcher';

  @override
  String get customizeToolbarButtons => 'Customize Toolbar Buttons';

  @override
  String get customizeToolbarButtonsSubtitle =>
      'Choose and arrange contextual toolbar buttons';

  @override
  String get decreaseFont => 'Decrease Font';

  @override
  String get desktopModeSection => 'Desktop Mode';

  @override
  String get desktopModeSitesSubtitle =>
      'Sites that always load in desktop mode';

  @override
  String get disableGestures => 'Disable gestures';

  @override
  String get doubleBackToCloseTab => 'Double Back to Close Tab';

  @override
  String get doubleBackToCloseTabSubtitle =>
      'Require double back press before closing the current tab';

  @override
  String get duplicateTab => 'Duplicate Tab';

  @override
  String get enableGestures => 'Enable gestures';

  @override
  String get extensionsMenu => 'Extensions Menu';

  @override
  String get externalLinkHandling => 'External Link Handling';

  @override
  String get externalLinkHandlingSubtitle =>
      'Choose how external links open in WebLibre';

  @override
  String get externalLinksSection => 'External Links';

  @override
  String get hardRefreshBypassCache => 'Hard Refresh (bypass cache)';

  @override
  String get hideQuickTabSwitcherBar => 'Hide Quick Tab Switcher Bar';

  @override
  String get hideTabBar => 'Hide Tab Bar';

  @override
  String get historyMenuForwardPages => 'History Menu (Forward pages)';

  @override
  String get historyMenuPreviousPages => 'History Menu (Previous pages)';

  @override
  String get home => 'Home';

  @override
  String get homeScreenSection => 'Home Screen';

  @override
  String get increaseFont => 'Increase Font';

  @override
  String get installSitesAsApps => 'Install Sites as Apps';

  @override
  String get installSitesAsAppsSubtitle =>
      'Allow websites without a manifest to be installed as apps';

  @override
  String get livePreview => 'Live Preview';

  @override
  String get livePreviewSubtitle => 'Preview toolbar and layout changes';

  @override
  String get longPressUrlToCopy => 'Long Press URL to Copy';

  @override
  String get longPressUrlToCopySubtitle =>
      'Copy the current URL by long-pressing the address bar';

  @override
  String get loopAround => 'Loop Around';

  @override
  String get loopAroundSubtitle =>
      'Continue from the other end after the first or last tab';

  @override
  String get menu => 'Menu';

  @override
  String get navigateSequentialTabs => 'Navigate Sequential Tabs';

  @override
  String get navigateSequentialTabsSubtitle => 'Move to the adjacent tab';

  @override
  String get never => 'Never';

  @override
  String get newTabDefault => 'New Tab Default';

  @override
  String get newTabDefaultSubtitle =>
      'Choose the default type for manually created tabs';

  @override
  String get newestFirst => 'Newest first';

  @override
  String get off => 'Off';

  @override
  String get offerAppStoreFallback => 'Offer App Store Fallback';

  @override
  String get offerAppStoreFallbackSubtitle =>
      'Offer to find an app when no installed app can open a link';

  @override
  String get oldestFirst => 'Oldest first';

  @override
  String get openBookmarkCustomTab => 'Open the bookmark in a custom tab';

  @override
  String get openBookmarkIsolatedTab => 'Open the bookmark in an isolated tab';

  @override
  String get openBookmarkPrivateTab => 'Open the bookmark in a private tab';

  @override
  String get openBookmarkRegularTab => 'Open the bookmark in a regular tab';

  @override
  String get openBookmarks => 'Open Bookmarks';

  @override
  String get openExternalLinksIsolatedTab =>
      'Open external links in an isolated tab';

  @override
  String get openExternalLinksPrivateTab =>
      'Open external links in a private tab';

  @override
  String get openExternalLinksRegularTab =>
      'Open external links in a regular tab';

  @override
  String get openLinksInApps => 'Open Links in Apps';

  @override
  String get openLinksInAppsSubtitle => 'Choose how external app links open';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get pageDown => 'Page Down';

  @override
  String get pageUp => 'Page Up';

  @override
  String get positionBottom => 'Bottom';

  @override
  String get positionBottomSubtitle => 'Place the bar at the bottom';

  @override
  String get positionLeft => 'Left';

  @override
  String get positionRight => 'Right';

  @override
  String get positionTop => 'Top';

  @override
  String get positionTopSubtitle => 'Place the bar at the top';

  @override
  String get previewBank => 'Bank';

  @override
  String get previewNews => 'News';

  @override
  String get previewPageContent => 'Page content';

  @override
  String get prompt => 'Prompt';

  @override
  String get pullToRefresh => 'Pull to Refresh';

  @override
  String get pullToRefreshSubtitle => 'Swipe down on pages to reload them';

  @override
  String get quickSwitcherHierarchyDepth => 'Quick Switcher Hierarchy Depth';

  @override
  String get quickSwitcherHierarchyDepthSubtitle =>
      'Choose how many tab hierarchy levels to show';

  @override
  String quickSwitcherHierarchyLevelCount(int count) {
    return '$count levels';
  }

  @override
  String get quickSwitcherHistoryFallback => 'Quick Switcher History Fallback';

  @override
  String get quickSwitcherHistoryFallbackSubtitle =>
      'Use recently visited tabs when hierarchy has no match';

  @override
  String get quickSwitcherTitleWidth => 'Quick Switcher Title Width';

  @override
  String get quickSwitcherTitleWidthSubtitle =>
      'Choose how much space tab titles use';

  @override
  String get quickTabSwitcherSection => 'Quick Tab Switcher';

  @override
  String get quit => 'Quit';

  @override
  String get quitWithoutConfirmation => 'Quit without confirmation';

  @override
  String get readerMode => 'Reader Mode';

  @override
  String get recentlyUsedTabs => 'Recently Used Tabs';

  @override
  String get recentlyUsedTabsSubtitle =>
      'Show recently used tabs in the quick switcher';

  @override
  String get rememberedSiteRules => 'Remembered Site Rules';

  @override
  String get removeBookmark => 'Remove Bookmark';

  @override
  String get removeRule => 'Remove rule';

  @override
  String get scrollToBottom => 'Scroll to Bottom';

  @override
  String get scrollToTop => 'Scroll to Top';

  @override
  String get searchToolbarLayoutSettings =>
      'Search toolbar and layout settings';

  @override
  String get sequentialTabNavigation => 'Sequential Tab Navigation';

  @override
  String get sequentialTabNavigationSubtitle =>
      'Choose where stepping through tabs in order ends';

  @override
  String get showContainerUi => 'Show Container UI';

  @override
  String get showContainerUiSubtitle =>
      'Show container selectors, menus, and management';

  @override
  String get showContextualToolbar => 'Show Contextual Toolbar';

  @override
  String get showContextualToolbarSubtitle =>
      'Show the contextual toolbar while browsing';

  @override
  String get showFaviconsInListView => 'Show Favicons in List View';

  @override
  String get showFaviconsInListViewSubtitle => 'Display site icons beside tabs';

  @override
  String get showIsolatedTabUi => 'Show Isolated Tab UI';

  @override
  String get showIsolatedTabUiSubtitle =>
      'Show isolated-tab creation options in the UI';

  @override
  String get showTitlesInQuickTabSwitcher =>
      'Show Titles in Quick Tab Switcher';

  @override
  String get showTitlesInQuickTabSwitcherSubtitle =>
      'Display tab titles in the quick switcher';

  @override
  String get showTranslationOptions => 'Show Translation Options';

  @override
  String get smallWebTabDefault => 'Small Web Tab Default';

  @override
  String get smallWebTabDefaultSubtitle =>
      'Choose the tab type used when entering Small Web';

  @override
  String get stayAndOfferToSwitch => 'Stay and Offer to Switch';

  @override
  String get stayAndOfferToSwitchSubtitle =>
      'Stay on the current tab and offer to switch';

  @override
  String get switchImmediately => 'Switch Immediately';

  @override
  String get switchImmediatelySubtitle =>
      'Switch to the newly opened background tab';

  @override
  String get switchToLastUsedTab => 'Switch to Last Used Tab';

  @override
  String get switchToLastUsedTabSubtitle => 'Return to the previously used tab';

  @override
  String get tabBarDirection => 'Tab Bar Direction';

  @override
  String get tabBarDirectionSubtitle =>
      'Choose how tabs are ordered in the tab bar';

  @override
  String get tabBarPosition => 'Tab Bar Position';

  @override
  String get tabBarPositionSubtitle => 'Choose where the tab bar appears';

  @override
  String get tabBarSection => 'Tab Bar';

  @override
  String get tabBarStyle => 'Tab Bar Style';

  @override
  String get tabBarStyleSubtitle => 'Choose the tab bar layout';

  @override
  String get tabBarSwipeBehavior => 'Tab Bar Swipe Behavior';

  @override
  String get tabBarSwipeBehaviorSubtitle =>
      'Choose what horizontal swipes on the tab bar do';

  @override
  String get tabListDirection => 'Tab List Direction';

  @override
  String get tabListDirectionSubtitle =>
      'Choose how tabs are ordered in the list view';

  @override
  String get tabStacking => 'Tab Stacking';

  @override
  String get tabStackingSubtitle => 'Choose how tabs are grouped and displayed';

  @override
  String get tabTypeIsolated => 'Isolated';

  @override
  String get tabTypePrivate => 'Private';

  @override
  String get tabTypeRegular => 'Regular';

  @override
  String get tabViewSection => 'Tab View';

  @override
  String get tabs => 'Tabs';

  @override
  String get textSize => 'Text Size';

  @override
  String get twoRows => 'Two Rows';

  @override
  String get twoRowsSubtitle => 'Show tabs across two rows';

  @override
  String get unshortener => 'Unshortener';

  @override
  String get unshortenerSubtitle => 'Short link resolver and API token';

  @override
  String get urlCleanerBrowsingSubtitle =>
      'Tracking removal rules and catalog updates';

  @override
  String get verticalSideRailSubtitle => 'Show tabs in a vertical side rail';

  @override
  String get webLibrePreview => 'WebLibre Preview';

  @override
  String get withTitle => 'With Title';

  @override
  String get withTitleSubtitle => 'Show tab titles in the tab bar';

  @override
  String get addExternalFilterList => 'Add external filter list';

  @override
  String get addExternalList => 'Add external list';

  @override
  String get ads => 'Ads';

  @override
  String get adsAnalyticsAndSocialTrackers =>
      'Ads, Analytics, and Social Trackers';

  @override
  String get adsAnalyticsAndSocialTrackersSubtitle =>
      'Block advertising, analytics, social, and Mozilla social tracker categories';

  @override
  String get advancedFingerprintingProtection =>
      'Advanced Fingerprinting Protection';

  @override
  String get advancedSecurity => 'Advanced Security';

  @override
  String get allCookiesMayBreakSites => 'All cookies (may break sites)';

  @override
  String get allTabs => 'All tabs';

  @override
  String get allThirdPartyCookies => 'All third-party cookies';

  @override
  String get allowlistExceptions => 'Allowlist exceptions';

  @override
  String get allowlistExceptionsSubtitle =>
      'Compatibility exceptions for major and minor website issues';

  @override
  String get alreadyAdded => 'Already added';

  @override
  String get alwaysAllowed => 'Always allowed';

  @override
  String get alwaysBlocked => 'Always blocked';

  @override
  String get annoyances => 'Annoyances';

  @override
  String get appOpeningProtection => 'App-Opening Protection';

  @override
  String appPolicyWithPackage(Object policy, Object packageName) {
    return '$policy · $packageName';
  }

  @override
  String get apply => 'Apply';

  @override
  String get applyTo => 'Apply to';

  @override
  String get applyWebLibreHardenings => 'Apply WebLibre Hardenings';

  @override
  String get applyWebLibreHardeningsDescription =>
      'This will enable a curated set of additional filter lists and add a legitimate URL shortener list as an external list.';

  @override
  String get applyWebLibreHardeningsQuestion => 'Apply WebLibre Hardenings?';

  @override
  String get applyWebLibreHardeningsSubtitle =>
      'Enable a curated set of additional filter lists.';

  @override
  String get autoClearHistory => 'Auto-Clear History';

  @override
  String get autoClearHistorySummary =>
      'Automatically delete browsing history older than the selected time period';

  @override
  String get autoClearUnassignedTabs => 'Auto-Clear Unassigned Tabs';

  @override
  String get autoClearUnassignedTabsSummary =>
      'Automatically close unassigned tabs older than the selected time period';

  @override
  String get autoSelectLanguages => 'Auto-select languages';

  @override
  String get autoSelectLanguagesSubtitle =>
      'Enable regional filter lists matching your device languages.';

  @override
  String get autoSelectedForLanguage => 'Auto-selected for your language';

  @override
  String get block => 'Block';

  @override
  String get blockAppsFromOpeningBrowser =>
      'Block apps from opening your browser';

  @override
  String get blockAppsFromOpeningBrowserSubtitle =>
      'Ask before opening links that other apps send to WebLibre.';

  @override
  String get blockAppsFromOpeningBrowserSummary =>
      'Ask before opening links from other apps';

  @override
  String get blockCookies => 'Block Cookies';

  @override
  String get blockCookiesSubtitle => 'Block cookies based on the policy below';

  @override
  String get blockInsecureHttpConnections => 'Block insecure HTTP connections';

  @override
  String get blockInsecureHttpConnectionsSummary =>
      'Require secure HTTPS connections';

  @override
  String get blockLocalNetworkRequests => 'Block Local Network Requests';

  @override
  String get blockLocalNetworkRequestsSubtitle =>
      'Block web page requests to local network addresses';

  @override
  String get blockLocalNetworkRequestsSummary =>
      'Block requests to local network addresses';

  @override
  String get blockLocalNetworkTrackers => 'Block Local Network Trackers';

  @override
  String get blockLocalNetworkTrackersSubtitle =>
      'Block trackers from accessing local network resources';

  @override
  String get blockLocalNetworkTrackersSummary =>
      'Block trackers accessing local resources';

  @override
  String get blockTrackingContent => 'Block Tracking Content';

  @override
  String get blockTrackingContentSubtitle =>
      'Block tracking scripts and resources embedded in websites';

  @override
  String get bounceTrackingProtection => 'Bounce Tracking Protection';

  @override
  String get bounceTrackingProtectionSubtitle =>
      'Blocks redirect trackers that collect data through intermediate URL redirects between websites';

  @override
  String get bounceTrackingProtectionSummary =>
      'Block trackers using intermediate redirects';

  @override
  String get cachedImagesAndFiles => 'Cached images and files';

  @override
  String get cachedImagesAndFilesDescription => 'Cached images and files';

  @override
  String get chooseLanguagesWebsitesCanSee =>
      'Choose languages websites can see';

  @override
  String get chooseTrackingProtectionAggressiveness =>
      'Choose tracking protection aggressiveness';

  @override
  String get completeHardening => 'Complete Hardening';

  @override
  String get completeHardeningSearchTerms =>
      'overview complete hardening apply reset all grouped hardening preferences';

  @override
  String get completeHardeningSubtitle =>
      'Apply or reset all grouped hardening preferences';

  @override
  String get completeHardeningToggleSubtitle =>
      'Toggle all grouped hardening preferences at once.';

  @override
  String get configureBrowserLanguagesSubtitle =>
      'Configure language preferences exposed to websites';

  @override
  String get connectionSecurity => 'Connection Security';

  @override
  String get contentBlockingDatabase => 'Content Blocking Database';

  @override
  String get contentBlockingDatabaseSubtitle =>
      'Manage the tracker and ad blocking database';

  @override
  String get contentBlockingDatabaseSummary =>
      'Tracker and ad blocking database';

  @override
  String get cookieBlockingModeAndPolicySelection =>
      'Cookie blocking mode and policy selection';

  @override
  String get cookieNotices => 'Cookie Notices';

  @override
  String get cookiePolicy => 'Cookie Policy';

  @override
  String get cookiesAndSiteData => 'Cookies and site data';

  @override
  String get cookiesAndSiteDataDescription => 'Cookies and site data';

  @override
  String get couldNotLoadPreferenceSettings =>
      'Could not load preference settings';

  @override
  String get crossSiteAndSocialMediaTrackers =>
      'Cross-site and social media trackers';

  @override
  String get cryptominers => 'Cryptominers';

  @override
  String get cryptominersSubtitle =>
      'Block scripts that use your device to mine cryptocurrency';

  @override
  String get custom => 'Custom';

  @override
  String get customResolverUrl => 'Custom Resolver URL';

  @override
  String get customTrackingProtection => 'Custom Tracking Protection';

  @override
  String get customTrackingProtectionChoiceSubtitle =>
      'Choose which tracking protections to enable';

  @override
  String get customTrackingProtectionSubtitle =>
      'Custom cookie, content, tracker, and fingerprinting controls.';

  @override
  String get dataManagement => 'Data Management';

  @override
  String get defaultFilterLists => 'Default';

  @override
  String get defaultOn => 'Default on';

  @override
  String get defaultProtection => 'Default Protection';

  @override
  String get defaultProtectionSubtitle =>
      'DoH used only when default DNS fails';

  @override
  String get deleteBrowsingData => 'Delete browsing data';

  @override
  String get deleteBrowsingDataSummary => 'Clear selected browsing data';

  @override
  String get descriptionOptional => 'Description (optional)';

  @override
  String get dohProtectionLevelDescription =>
      'Domain Name System (DNS) over HTTPS sends your request for a domain name through an encrypted connection, providing a secure DNS and making it harder for others to see which website you are about to access.';

  @override
  String get dohProvider => 'DoH Provider';

  @override
  String get dohResolverSettingsSubtitle =>
      'Protection level, provider choice, and custom resolver URL';

  @override
  String get dohSettingsSubtitle =>
      'Encrypted DNS protection level and resolver selection.';

  @override
  String durationDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '$count day',
    );
    return '$_temp0';
  }

  @override
  String durationMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count months',
      one: '$count month',
    );
    return '$_temp0';
  }

  @override
  String durationWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count weeks',
      one: '$count week',
    );
    return '$_temp0';
  }

  @override
  String get edit => 'Edit';

  @override
  String get editExternalFilterList => 'Edit external filter list';

  @override
  String get enabled => 'Enabled';

  @override
  String get encryptDnsLookups => 'Encrypt DNS lookups';

  @override
  String get extensionsWebApi => 'Extensions Web API';

  @override
  String get extensionsWebApiSubtitle =>
      'Enable mozAddonManager API exposure for web content and extension pages. Requires app restart.';

  @override
  String get extensionsWebApiSummary => 'Expose the extensions Web API';

  @override
  String get externalListDescriptionHint => 'e.g. Annoyances — myAuthor';

  @override
  String get externalListUrlHint => 'https://example.com/list.txt';

  @override
  String get externalLists => 'External Lists';

  @override
  String get externalListsRawUrlsNote =>
      'Raw URLs are forwarded to uBlock Origin as external lists. Descriptions are only shown here in WebLibre.';

  @override
  String failedToLoadFilterListAssets(Object error) {
    return 'Failed to load filter list assets: $error';
  }

  @override
  String get filterLists => 'Filter Lists';

  @override
  String get fingerprintProtection => 'Fingerprint Protection';

  @override
  String get fingerprintProtectionSubtitle =>
      'Granular control over browser fingerprinting';

  @override
  String get fingerprinting => 'Fingerprinting';

  @override
  String get fissionSiteIsolation => 'Fission (Site Isolation)';

  @override
  String get fissionSiteIsolationSubtitle =>
      'Isolates each site into a separate OS process for improved security. Requires app restart.';

  @override
  String get fissionSiteIsolationSummary =>
      'Isolate sites into separate processes';

  @override
  String get fixWebsiteMajorIssues => 'Fix website major issues';

  @override
  String get fixWebsiteMajorIssuesSubtitle =>
      'Apply exceptions required to avoid major website breakage (recommended)';

  @override
  String get fixWebsiteMinorIssues => 'Fix website minor issues';

  @override
  String get fixWebsiteMinorIssuesSubtitle =>
      'Apply exceptions to fix minor issues and enable convenience features';

  @override
  String get globalPrivacyControl => 'Global Privacy Control';

  @override
  String get globalPrivacyControlSummary =>
      'Tell websites not to sell or share your data';

  @override
  String get googleSafeBrowsing => 'Google Safe Browsing';

  @override
  String get groupControls => 'Group Controls';

  @override
  String get groupControlsCompleteHardening =>
      'group controls complete hardening';

  @override
  String get hardeningGroups => 'Hardening Groups';

  @override
  String get incognitoMode => 'Incognito Mode';

  @override
  String get incognitoModeSubtitle => 'Use private browsing mode';

  @override
  String get incognitoModeSummary => 'Private browsing';

  @override
  String get increasedProtection => 'Increased Protection';

  @override
  String get increasedProtectionSubtitle =>
      'DoH preferred, default DNS as fallback';

  @override
  String get invalidUrl => 'Invalid URL';

  @override
  String get knownFingerprinters => 'Known Fingerprinters';

  @override
  String get knownFingerprintersSubtitle =>
      'Block scripts that collect information to uniquely identify your device';

  @override
  String get listUrl => 'List URL';

  @override
  String get loadDefaults => 'Load Defaults';

  @override
  String get loadHardenedDefaults => 'Load Hardened Defaults';

  @override
  String get localNetworkAccess => 'Local Network Access';

  @override
  String get localNetworkAccessSubtitle =>
      'Enable local network and device access blocking';

  @override
  String get localNetworkAccessSummary =>
      'Control access to local network resources';

  @override
  String get malware => 'Malware';

  @override
  String get manageWithWebLibre => 'Manage with WebLibre';

  @override
  String get manageWithWebLibreSubtitle =>
      'WebLibre controls uBlock Origin\'s enabled filter lists on next browser start.';

  @override
  String get managedApps => 'Managed apps';

  @override
  String get management => 'Management';

  @override
  String get managementBaselineNote =>
      'Enabling management starts from uBO\'s common baseline lists and preserves My filters.';

  @override
  String get maxProtection => 'Max Protection';

  @override
  String get maxProtectionSubtitle => 'DoH only, no fallback';

  @override
  String get multipurpose => 'Multipurpose';

  @override
  String get networkProtection => 'Network Protection';

  @override
  String get noExternalListsConfigured => 'No external lists configured.';

  @override
  String noExternalListsMatch(Object query) {
    return 'No external lists match \"$query\".';
  }

  @override
  String get openTabs => 'Open tabs';

  @override
  String get optional => 'Optional';

  @override
  String get overrideTargets => 'Override Targets';

  @override
  String get overview => 'Overview';

  @override
  String get preferenceSettings => 'Preference Settings';

  @override
  String get privacy => 'Privacy';

  @override
  String get privacySecuritySettingsSubtitle =>
      'Tracking protection, network security, and privacy controls.';

  @override
  String get privacySignalsAndModes => 'Privacy Signals and Modes';

  @override
  String get privateModeOnly => 'Private mode only';

  @override
  String get privateTabsOnly => 'Private tabs only';

  @override
  String get protectionLevel => 'Protection Level';

  @override
  String get queryParameterStripping => 'Query Parameter Stripping';

  @override
  String get queryParameterStrippingSummary =>
      'Removes tracking parameters from URLs to prevent cross-site user tracking';

  @override
  String get quickActions => 'Quick Actions';

  @override
  String get recentSearchesDataDescription => 'Recent searches';

  @override
  String get redirectTrackers => 'Redirect Trackers';

  @override
  String get redirectTrackersSubtitle =>
      'Block trackers that collect data through intermediate URL redirects';

  @override
  String get regions => 'Regions';

  @override
  String get resetAllPreferencesDescription =>
      'This will reset all user-defined web engine preferences to their defaults.';

  @override
  String get resetAllPreferencesQuestion => 'Reset all preferences?';

  @override
  String get resetToDefaultsDescription =>
      'This will restore uBlock Origin to its default filter list configuration and remove any external lists you added.';

  @override
  String get resetToDefaultsQuestion => 'Reset to defaults?';

  @override
  String get resetToDefaultsSubtitle =>
      'Restore uBlock Origin\'s default filter list configuration.';

  @override
  String get resistFingerprinting => 'Resist Fingerprinting';

  @override
  String get resistFingerprintingSubtitle =>
      'Advanced fingerprinting protection hardening';

  @override
  String get resolverSettings => 'Resolver Settings';

  @override
  String get safeBrowsingMalwareProtection =>
      'Safe Browsing Malware Protection';

  @override
  String get safeBrowsingMalwareProtectionSubtitle =>
      'Warn about dangerous websites and malicious downloads.';

  @override
  String get safeBrowsingMalwareProtectionSummary =>
      'Warn about malware and dangerous downloads';

  @override
  String get safeBrowsingPhishingProtection =>
      'Safe Browsing Phishing Protection';

  @override
  String get safeBrowsingPhishingProtectionSubtitle =>
      'Warn about deceptive websites and login pages.';

  @override
  String get safeBrowsingPhishingProtectionSummary =>
      'Warn about phishing websites';

  @override
  String get screenshotProtectionAndroidSubtitle =>
      'Prevent screenshots and screen recording on Android';

  @override
  String get screenshotProtectionSummary =>
      'Prevent screenshots and screen recording';

  @override
  String get searchFingerprintOverrideTargets =>
      'Search fingerprint override targets';

  @override
  String get searchHardeningGroups => 'Search hardening groups';

  @override
  String get searchHardeningSettings => 'Search hardening settings';

  @override
  String get searchListsGroupsExternalUrls =>
      'Search lists, groups, and external URLs';

  @override
  String get sitePermissions => 'Site permissions';

  @override
  String get standard => 'Standard';

  @override
  String get standardTrackingProtectionSubtitle =>
      'Balanced protection for everyday browsing';

  @override
  String get strict => 'Strict';

  @override
  String get strictTrackingProtectionSubtitle =>
      'Stronger protection that may break some sites';

  @override
  String get socialWidgets => 'Social Widgets';

  @override
  String get suspectedFingerprinters => 'Suspected Fingerprinters';

  @override
  String get suspectedFingerprintersAndTabScope =>
      'Suspected fingerprinters and tab scope';

  @override
  String get suspectedFingerprintersSubtitle =>
      'Block additional fingerprinting techniques that may be used to track you';

  @override
  String get totalCookieProtectionRecommended =>
      'Total Cookie Protection (Recommended)';

  @override
  String get trackers => 'Trackers';

  @override
  String get trackersSubtitle =>
      'Cryptominers, known fingerprinters, and redirect trackers';

  @override
  String get trackingContent => 'Tracking Content';

  @override
  String get trackingProtectionExceptionsSubtitle =>
      'Manage sites excluded from tracking protection';

  @override
  String get trackingScriptsAndScopeForBlocking =>
      'Tracking scripts and scope for blocking';

  @override
  String get ublockFilterLists => 'uBlock Filter Lists';

  @override
  String get ublockFilterListsAndHardenings =>
      'uBlock Filter Lists & Hardenings';

  @override
  String get ublockFilterListsAndHardeningsSubtitle =>
      'Manage filter lists and apply WebLibre hardenings';

  @override
  String get ublockFilterListsRestartMessage =>
      'Changes to uBlock Origin filter lists require an app restart to take effect. Due to caching, some changes may need a few minutes and an additional restart to fully apply.';

  @override
  String get unvisitedSites => 'Unvisited sites';

  @override
  String get urlMustBeProvided => 'URL must be provided';

  @override
  String get useDefaultDnsResolver => 'Use your default DNS resolver';

  @override
  String get visitSupportPage => 'Visit support page';

  @override
  String get webEngineHardening => 'Web Engine Hardening';

  @override
  String get webEngineHardeningSummary => 'Harden web engine preferences';

  @override
  String get searchOrEnterUrl => 'Search or enter URL';

  @override
  String get noPreviousPages => 'No previous pages';

  @override
  String get noForwardPages => 'No forward pages';

  @override
  String get hardRefresh => 'Hard Refresh';

  @override
  String get closeTabAndDescendants => 'Close Tab and Descendants';

  @override
  String get fetchFeedsOnPage => 'Fetch Feeds on Page';

  @override
  String get addToHomeScreen => 'Add to Home Screen';

  @override
  String get cloneTab => 'Clone Tab';

  @override
  String get regular => 'Regular';

  @override
  String get private => 'Private';

  @override
  String get isolated => 'Isolated';

  @override
  String get assignContainer => 'Assign Container';

  @override
  String get urlRelation => 'URL relation';

  @override
  String get unassignUrlRelation => 'Unassign URL relation';

  @override
  String get unassignContainer => 'Unassign Container';

  @override
  String get moveUp => 'Move up';

  @override
  String get moveDown => 'Move down';

  @override
  String get reorder => 'Reorder';

  @override
  String get export => 'Export';

  @override
  String get desktopMode => 'Desktop Mode';

  @override
  String get changeParent => 'Change parent…';

  @override
  String get detachFromParent => 'Detach from parent';

  @override
  String get hierarchy => 'Hierarchy';

  @override
  String get shareLink => 'Share Link';

  @override
  String get showQrCode => 'Show QR Code';

  @override
  String get exportAsPdf => 'Export as PDF';

  @override
  String get print => 'Print';

  @override
  String get failedToPrintPage => 'Failed to print page';

  @override
  String get shareScreenshot => 'Share Screenshot';

  @override
  String get exportAsPng => 'Export as PNG';

  @override
  String get copyAddress => 'Copy Address';

  @override
  String get openInApp => 'Open in App';

  @override
  String openInNamedApp(String appName) {
    return 'Open in $appName';
  }

  @override
  String get sendToDevice => 'Send To Device';

  @override
  String get noTargetDevices => 'No target devices';

  @override
  String get loadingDevices => 'Loading devices…';

  @override
  String get failedToLoadDevices => 'Failed to load devices';

  @override
  String sentTabToDevice(String deviceName) {
    return 'Sent tab to $deviceName';
  }

  @override
  String get failedToSendTab => 'Failed to send tab';

  @override
  String get searchInsideTabs => 'Search inside tabs';

  @override
  String get tabType => 'Tab Type';

  @override
  String get sortPinnedFirst => 'Sort Pinned First';

  @override
  String get sort => 'Sort';

  @override
  String get hierarchicalView => 'Hierarchical View';

  @override
  String get filterDate => 'Filter Date';

  @override
  String get quickInterval => 'Quick Interval';

  @override
  String get resetFilter => 'Reset Filter';

  @override
  String get filterAndSort => 'Filter & Sort';

  @override
  String get changeViewMode => 'Change view mode';

  @override
  String get listView => 'List';

  @override
  String get gridView => 'Grid';

  @override
  String get treeView => 'Tree';

  @override
  String get privateTabs => 'Private Tabs';

  @override
  String get isolatedTabs => 'Isolated Tabs';

  @override
  String get filteredTabs => 'Filtered Tabs';

  @override
  String get closeTabs => 'Close Tabs';

  @override
  String get bookmarkAll => 'Bookmark all';

  @override
  String get bookmarkAllTabs => 'Bookmark All Tabs';

  @override
  String get fast => 'Fast';

  @override
  String get automaticallyAddTabsToFolder =>
      'Automatically add all tabs to a selected folder';

  @override
  String get detailed => 'Detailed';

  @override
  String get reviewEachBookmark => 'Review and edit each bookmark individually';

  @override
  String bookmarksAdded(int count) {
    return '$count bookmark(s) added';
  }

  @override
  String get closeAllTabs => 'Close All Tabs';

  @override
  String get closeAllDisplayedTabsQuestion =>
      'Are you sure you want to close all displayed tabs?';

  @override
  String get closeAllPrivateTabsQuestion =>
      'Are you sure you want to close all private tabs?';

  @override
  String get tabActions => 'Tab actions';

  @override
  String get clearContainerData => 'Clear Container Data';

  @override
  String get containerDataCleared => 'Container data cleared successfully';

  @override
  String containerDataClearedTabsClosed(int count) {
    return 'Container data cleared. $count tab(s) closed.';
  }

  @override
  String errorClearingData(String error) {
    return 'Error clearing data: $error';
  }

  @override
  String downloadingAiModels(int progress) {
    return 'Downloading AI models ($progress%)';
  }

  @override
  String get enableAiTabSuggestions => 'Enable AI tab suggestions';

  @override
  String get disableAiTabSuggestions => 'Disable AI tab suggestions';

  @override
  String get disableReorderingMode => 'Disable reordering mode';

  @override
  String get enableReorderingMode => 'Enable reordering mode';

  @override
  String get reorderingRequiresManualMode =>
      'Reordering requires default manual mode';

  @override
  String get dragTabsToReorder => 'Drag and drop tabs to reorder them';

  @override
  String get noSyncedTabsAvailable => 'No synced tabs available';

  @override
  String failedToLoadSyncedTabs(String error) {
    return 'Failed to load synced tabs: $error';
  }

  @override
  String get undo => 'Undo';

  @override
  String get extensionSettings => 'Extension settings';

  @override
  String get more => 'More';

  @override
  String get connection => 'Connection';

  @override
  String get bangs => 'Bangs';

  @override
  String get feeds => 'Feeds';

  @override
  String get smallWeb => 'Small Web';

  @override
  String get syncNow => 'Sync Now';

  @override
  String get pinnedToShortcuts => 'Pinned to Shortcuts';

  @override
  String get unpinnedFromShortcuts => 'Unpinned from Shortcuts';

  @override
  String get failedToUpdateShortcuts => 'Failed to update Shortcuts';

  @override
  String get urlCleaned => 'URL cleaned';

  @override
  String get urlPreviewApplied => 'URL preview applied';

  @override
  String get selectAtLeastOneDataType => 'Select at least one data type';

  @override
  String get siteDataCleared => 'Site data cleared';

  @override
  String failedToClearSiteData(String error) {
    return 'Failed to clear site data: $error';
  }

  @override
  String get failedToLoadTrackingProtection =>
      'Failed to load tracking protection';

  @override
  String failedToToggleTrackingProtection(String error) {
    return 'Failed to toggle tracking protection: $error';
  }

  @override
  String errorLoadingPermissions(String error) {
    return 'Error loading permissions: $error';
  }

  @override
  String get ask => 'Ask';

  @override
  String get select => 'Select';

  @override
  String get keepTabQuestion => 'Keep tab?';

  @override
  String get keepTabPrompt => 'Do you want to keep this tab or discard it?';

  @override
  String get discard => 'Discard';

  @override
  String get keep => 'Keep';

  @override
  String get extractedContent => 'Extracted Content';

  @override
  String get fullContent => 'Full Content';

  @override
  String get reader => 'Reader';

  @override
  String get noWebFeedsFound => 'No Web Feeds Found';

  @override
  String get availableWebFeeds => 'Available Web Feeds';

  @override
  String get fetchingWebFeeds => 'Fetching Web Feeds…';

  @override
  String get enableAiTabSuggestionsTitle => 'Enable AI Tab Suggestions';

  @override
  String get resetToHundredPercent => 'Reset to 100%';

  @override
  String get clearSiteDataTitle => 'Clear Site Data';

  @override
  String get selectDataTypesToClear => 'Select data types to clear';

  @override
  String get cookiesCacheAndSiteData => 'Cookies, cache, and site data';

  @override
  String get authSessions => 'Auth Sessions';

  @override
  String get savedLoginsActiveSessions => 'Saved logins, active sessions';

  @override
  String get offlineStorageDatabasesLocalFiles =>
      'Offline storage, databases, local files';

  @override
  String get loginTokensPreferencesTrackingData =>
      'Login tokens, preferences, tracking data';

  @override
  String get imagesScriptsStylesheets => 'Images, scripts, stylesheets';

  @override
  String get closeTabAfterClearing => 'Close tab after clearing';

  @override
  String get closeThisTabOnceDataCleared =>
      'Close this tab once data is cleared';

  @override
  String get clearingEllipsis => 'Clearing…';

  @override
  String get clearNow => 'Clear Now';

  @override
  String get cachedFilesLowercase => 'cached files';

  @override
  String get siteDataLowercase => 'site data';

  @override
  String get authSessionsLowercase => 'auth sessions';

  @override
  String get dropTabOntoTab => 'Drop tab onto tab';

  @override
  String get chooseTabRelationship =>
      'Choose how these tabs should be related.';

  @override
  String get createContainer => 'Create container';

  @override
  String get createContainerWithBothTabs =>
      'Create a new container with both tabs.';

  @override
  String get assignNewParent => 'Assign new parent';

  @override
  String get makeDroppedOnTabParent => 'Make the dropped-on tab the parent.';

  @override
  String errorWithDetails(String error) {
    return 'Error: $error';
  }

  @override
  String get tabNoLongerExists => 'Tab no longer exists';

  @override
  String get makeStandalone => 'Make standalone';

  @override
  String get detachFromCurrentParent => 'Detach from current parent';

  @override
  String get clearAllContainerDataPrompt =>
      'This will clear all data for this container:';

  @override
  String get cache => 'Cache';

  @override
  String get permissions => 'Permissions';

  @override
  String get recreateTabsAfterClearing => 'Recreate tabs after clearing';

  @override
  String get clearDataAction => 'Clear Data';

  @override
  String get autoplay => 'Autoplay';

  @override
  String get allowAll => 'Allow All';

  @override
  String get blockAudible => 'Block Audible';

  @override
  String get blockAll => 'Block All';

  @override
  String get alwaysUseDesktopSite => 'Always use desktop site';

  @override
  String get openLinksForThisSite => 'Open links for this site';

  @override
  String get followsDefault => 'Follows the default';

  @override
  String get followDefault => 'Follow default';

  @override
  String get openInAppLowercase => 'Open in app';

  @override
  String get keepInBrowser => 'Keep in browser';

  @override
  String get removeTracking => 'Remove tracking';

  @override
  String get sandboxedCapture => 'Sandboxed capture';

  @override
  String get connectionIsSecure => 'Connection is secure';

  @override
  String verifiedBy(String issuer) {
    return 'Verified By: $issuer';
  }

  @override
  String get selectXpiFile => 'Select XPI File';

  @override
  String get homeTargetHomeLabel => 'Home page';

  @override
  String get homeTargetResumeLastTabLabel => 'Last opened tab';

  @override
  String get homeTargetCustomUrlLabel => 'Custom address';

  @override
  String get homeTargetHomeDescription =>
      'Show shortcuts and the sections you have chosen';

  @override
  String get homeTargetResumeLastTabDescription => 'Pick up where you left off';

  @override
  String get homeTargetCustomUrlDescription => 'Open a specific page';

  @override
  String get searchModuleRecentSearchesLabel => 'Recent Searches';

  @override
  String get searchModuleSearchProvidersLabel => 'Search Providers';

  @override
  String get searchModuleSearchSuggestionsLabel => 'Suggestions';

  @override
  String get searchModuleTabsLabel => 'Tabs';

  @override
  String get searchModuleArticlesLabel => 'Articles';

  @override
  String get searchModuleBookmarksLabel => 'Bookmarks';

  @override
  String get searchModuleHistoryLabel => 'History (engine)';

  @override
  String get searchModuleLocalHistoryLabel => 'Local content';

  @override
  String get searchModuleCombinedHistoryLabel => 'History';

  @override
  String get searchModulePopularSitesLabel => 'Popular Sites';

  @override
  String get searchModuleHistoryHighlightsLabel => 'History Highlights';

  @override
  String get searchModuleTopSitesLabel => 'Shortcuts';

  @override
  String get searchModuleRecentHistoryLabel => 'Recent History';

  @override
  String get searchModuleRecentArticlesLabel => 'Recent Articles';

  @override
  String get searchModuleRecentTabsLabel => 'Recent Tabs';

  @override
  String get searchModuleContainersLabel => 'Containers';

  @override
  String get searchModuleFrequentBangsLabel => 'Frequent Bangs';

  @override
  String get searchModuleQuoteLabel => 'Quote';

  @override
  String get searchModuleQuickActionsLabel => 'Quick Actions';

  @override
  String get uBlockAssetGroupDefaultLabel => 'Default';

  @override
  String get uBlockAssetGroupAdsLabel => 'Ads';

  @override
  String get uBlockAssetGroupPrivacyLabel => 'Privacy';

  @override
  String get uBlockAssetGroupMalwareLabel => 'Malware';

  @override
  String get uBlockAssetGroupAnnoyancesLabel => 'Annoyances';

  @override
  String get uBlockAssetGroupMultipurposeLabel => 'Multipurpose';

  @override
  String get uBlockAssetGroupRegionsLabel => 'Regions';

  @override
  String get uBlockAssetSubGroupCookiesLabel => 'Cookie Notices';

  @override
  String get uBlockAssetSubGroupSocialLabel => 'Social Widgets';

  @override
  String get torTrademark => 'Trademark';

  @override
  String get torStartAutomatically => 'Start Automatically';

  @override
  String torStartOrStopService(Object brand) {
    return 'Start or stop the $brand service';
  }

  @override
  String get torRequestNewIdentity => 'Request New Identity';

  @override
  String get torUseFreshCircuit => 'Use a fresh circuit for new connections';

  @override
  String get torAutoConfigureTransport => 'Auto Configure Transport';

  @override
  String get torCannotConnectWithoutBridge =>
      'I\'m sure I cannot connect without a bridge';

  @override
  String get torAutoConfigured => 'Auto-configured';

  @override
  String get torDirectConnection => 'Direct Connection';

  @override
  String get torFetchFreshBridges => 'Fetch fresh Bridges before connecting';

  @override
  String get torSuitableForHeavyCensorship => 'Suitable for heavy censorship';

  @override
  String get userBangs => 'User Bangs';

  @override
  String get manageUserBangs => 'Manage User Bangs';

  @override
  String get searchBangs => 'Search Bangs';

  @override
  String get browseCategories => 'Browse Categories';

  @override
  String get bangCategories => 'Bang Categories';

  @override
  String get deleteBang => 'Delete Bang';

  @override
  String get deleteBangConfirm => 'Are you sure you want to delete this Bang?';

  @override
  String get openBasePath => 'Open Base Path';

  @override
  String get urlEncodePlaceholder => 'URL Encode Placeholder';

  @override
  String get urlEncodeSpaceToPlus => 'URL Encode Space to Plus';

  @override
  String get trigger => 'Trigger';

  @override
  String get url => 'URL';

  @override
  String get category => 'Category';

  @override
  String get subCategory => 'Sub Category';

  @override
  String get enableSync => 'Enable Sync';

  @override
  String get storeCurrent => 'Store Current';

  @override
  String get storeSnapshot => 'Store Snapshot';

  @override
  String get editLabel => 'Edit Label';

  @override
  String get restoreSnapshot => 'Restore Snapshot';

  @override
  String get deleteSnapshot => 'Delete Snapshot';

  @override
  String get restoreSnapshotOverwrite =>
      'This will overwrite your current local settings.';

  @override
  String deleteSnapshotConfirm(Object label) {
    return 'Are you sure you want to delete $label?';
  }

  @override
  String get becomeSupporter => 'Become a Supporter';

  @override
  String get couldNotLoadSubscription => 'Could not load subscription';

  @override
  String get delivery => 'Delivery';

  @override
  String get unifiedPushDistributor => 'UnifiedPush Distributor';

  @override
  String get unifiedPushDistributorSubtitle =>
      'The app that delivers website push notifications';

  @override
  String get notificationPermission => 'Notification Permission';

  @override
  String get notificationPermissionSubtitle =>
      'Required to display website notifications';

  @override
  String get subscriptions => 'Subscriptions';

  @override
  String get siteSubscriptions => 'Site Subscriptions';

  @override
  String get siteSubscriptionsSubtitle =>
      'Websites subscribed to push notifications';

  @override
  String get webPushNotifications => 'Notifications';

  @override
  String get webPushNotificationsSubtitle =>
      'Web push delivery, distributor, and site subscriptions.';

  @override
  String get gestureConfiguration => 'Configuration';

  @override
  String get gestureBindings => 'Gesture bindings';

  @override
  String get gestureBehaviorTiming => 'Behavior & timing';

  @override
  String get gestureExcludedSites => 'Excluded sites';

  @override
  String get gestureFeedback => 'Feedback';

  @override
  String get gestureOverlay => 'Overlay';

  @override
  String get gestureLiveFeedback => 'Live feedback';

  @override
  String get gestureLiveFeedbackSubtitle =>
      'Show the stroke and its action while you draw';

  @override
  String get gestureSuggestNext => 'Suggest next';

  @override
  String get searchingTheWeb => 'Searching the web...';

  @override
  String get buySearchPack => 'Buy a search pack';

  @override
  String get checkConnectionRetry =>
      'Check your connection and tap refresh to retry.';

  @override
  String get buySearchPackToStart => 'Buy a search pack to get started';

  @override
  String get requestingTokens => 'Requesting tokens...';

  @override
  String get getTokens => 'Get tokens';

  @override
  String requestTokens(Object count) {
    return 'Request $count tokens';
  }

  @override
  String get noCreditsRemaining => 'No credits remaining';

  @override
  String get buyMore => 'Buy more';

  @override
  String get fetchPageData => 'Fetch Page Data';

  @override
  String get find => 'Find';

  @override
  String get show => 'Show';

  @override
  String get switch_ => 'Switch';

  @override
  String get dismiss => 'Dismiss';

  @override
  String get navigateBackToCloseTab =>
      'Navigate BACK again to close current tab';

  @override
  String get navigateBackToExitApp => 'Navigate BACK again to exit app';

  @override
  String get openLinkFromClipboard => 'Want to open link from clipboard?';

  @override
  String tabsClosed(Object count) {
    return '$count Tabs closed';
  }

  @override
  String get tabClosed => 'Tab closed';

  @override
  String get closeIsolatedTabs => 'Close isolated tabs?';

  @override
  String get hidingDisabledBySite => 'Hiding disabled by site';

  @override
  String get quickStart => 'Quick Start';

  @override
  String get quickStartSubtitle => 'Use recommended defaults and get browsing.';

  @override
  String get customSetup => 'Custom Setup';

  @override
  String get customSetupSubtitle =>
      'Configure DNS, toolbar, extensions, and more.';

  @override
  String get restoreFromBackup => 'Restore from Backup';

  @override
  String get restoreFromBackupSubtitle =>
      'Import a profile from an encrypted backup file.';

  @override
  String get endUserLicenseAgreement => 'End User License Agreement';

  @override
  String get couldNotLoadSearchEngines => 'Could not load search engines';

  @override
  String get failedToLoadFeeds => 'Failed to load Feeds';

  @override
  String get failedToLoadFeed => 'Failed to load feed';

  @override
  String get failedToLoadArticles => 'Failed to load Articles';

  @override
  String get failedReadingArticle => 'Failed reading article';

  @override
  String get testConnection => 'Test connection';

  @override
  String get testing => 'Testing...';

  @override
  String get failed => 'Failed';

  @override
  String get direct => 'Direct';

  @override
  String get clearOnExit => 'Clear on exit';

  @override
  String get pinned => 'Pinned';

  @override
  String get hue => 'Hue';

  @override
  String get saturation => 'Saturation';

  @override
  String get lightness => 'Lightness';

  @override
  String get smallWebUnavailable => 'Small Web unavailable';

  @override
  String get couldNotLoadSmallWebSession => 'Could not load Small Web session';

  @override
  String get autoDeviceDefault => 'Auto (device default)';

  @override
  String get anyRegion => 'Any region';

  @override
  String get anyTime => 'Any time';

  @override
  String get defaultModerate => 'Default (moderate)';

  @override
  String get syncSettingsSubtitle =>
      'Account status, QR pairing, and device name';

  @override
  String get syncServerOverridesSubtitle =>
      'Custom Firefox Account and token server endpoints';

  @override
  String get restore => 'Restore';

  @override
  String get store => 'Store';

  @override
  String get previewUnavailable => 'Preview unavailable';

  @override
  String get searchFailed => 'Search failed';
}
