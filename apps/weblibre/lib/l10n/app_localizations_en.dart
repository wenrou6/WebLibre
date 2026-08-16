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
}
