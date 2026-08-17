import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh'),
  ];

  /// Application title
  ///
  /// In en, this message translates to:
  /// **'WebLibre'**
  String get appTitle;

  /// Snackbar when a host is blocked by strict container mode
  ///
  /// In en, this message translates to:
  /// **'{host} is not assigned to this container'**
  String hostNotAssignedToContainer(String host);

  /// Snackbar when a site without a host is blocked by strict container mode
  ///
  /// In en, this message translates to:
  /// **'This site is not assigned to this container'**
  String get siteNotAssignedToContainer;

  /// Title shown when app fails to initialize
  ///
  /// In en, this message translates to:
  /// **'Initialization Error'**
  String get initializationError;

  /// Error message when app initialization fails
  ///
  /// In en, this message translates to:
  /// **'Could not initialize App'**
  String get couldNotInitializeApp;

  /// Snackbar message for completed download
  ///
  /// In en, this message translates to:
  /// **'Download completed'**
  String get downloadCompleted;

  /// Button to open a file
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// Error message when opening downloaded file fails
  ///
  /// In en, this message translates to:
  /// **'Could not open downloaded file'**
  String get couldNotOpenDownloadedFile;

  /// Error message for failed download
  ///
  /// In en, this message translates to:
  /// **'Download failed: {fileName}'**
  String downloadFailed(String fileName);

  /// Settings screen title
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// General settings section
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get generalSettings;

  /// Privacy and Security settings section
  ///
  /// In en, this message translates to:
  /// **'Privacy & Security'**
  String get privacySecurity;

  /// Search label
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// Extensions section
  ///
  /// In en, this message translates to:
  /// **'Extensions'**
  String get extensions;

  /// Advanced settings section
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get advanced;

  /// Cancel button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Save button
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Delete button
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// Done button
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// Retry button
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Close button
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// OK button
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// Enable toggle
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get enable;

  /// Disable toggle
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get disable;

  /// New tab action
  ///
  /// In en, this message translates to:
  /// **'New Tab'**
  String get newTab;

  /// New private tab action
  ///
  /// In en, this message translates to:
  /// **'New Private Tab'**
  String get newPrivateTab;

  /// Close tab action
  ///
  /// In en, this message translates to:
  /// **'Close Tab'**
  String get closeTab;

  /// Bookmarks section
  ///
  /// In en, this message translates to:
  /// **'Bookmarks'**
  String get bookmarks;

  /// History section
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// Downloads section
  ///
  /// In en, this message translates to:
  /// **'Downloads'**
  String get downloads;

  /// Translate page button
  ///
  /// In en, this message translates to:
  /// **'Translate Page'**
  String get translatePage;

  /// Show original untranslated page
  ///
  /// In en, this message translates to:
  /// **'Show Original'**
  String get showOriginal;

  /// Retranslate button
  ///
  /// In en, this message translates to:
  /// **'Retranslate'**
  String get retranslate;

  /// Translate button
  ///
  /// In en, this message translates to:
  /// **'Translate'**
  String get translate;

  /// Error when page restoration fails
  ///
  /// In en, this message translates to:
  /// **'Failed to restore page'**
  String get failedToRestorePage;

  /// Error when translation fails
  ///
  /// In en, this message translates to:
  /// **'Failed to translate page'**
  String get failedToTranslatePage;

  /// Translation error message
  ///
  /// In en, this message translates to:
  /// **'Translation error: {errorName}'**
  String translationError(String errorName);

  /// Translation source language label
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// Translation target language label
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// Reload page action
  ///
  /// In en, this message translates to:
  /// **'Reload'**
  String get reload;

  /// Stop loading action
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get stop;

  /// Navigate forward
  ///
  /// In en, this message translates to:
  /// **'Forward'**
  String get forward;

  /// Navigate back
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// Share action
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// Find in page action
  ///
  /// In en, this message translates to:
  /// **'Find in Page'**
  String get findInPage;

  /// Toggle desktop site
  ///
  /// In en, this message translates to:
  /// **'Desktop Site'**
  String get desktopSite;

  /// Clear browsing data
  ///
  /// In en, this message translates to:
  /// **'Clear Data'**
  String get clearData;

  /// Clear site data
  ///
  /// In en, this message translates to:
  /// **'Clear Site Data'**
  String get clearSiteData;

  /// Cookies label
  ///
  /// In en, this message translates to:
  /// **'Cookies'**
  String get cookies;

  /// Cached files label
  ///
  /// In en, this message translates to:
  /// **'Cached Files'**
  String get cachedFiles;

  /// Site data label
  ///
  /// In en, this message translates to:
  /// **'Site Data'**
  String get siteData;

  /// Browsing history label
  ///
  /// In en, this message translates to:
  /// **'Browsing History'**
  String get browsingHistory;

  /// About section
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// App version label
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// License label
  ///
  /// In en, this message translates to:
  /// **'License'**
  String get license;

  /// Source code link
  ///
  /// In en, this message translates to:
  /// **'Source Code'**
  String get sourceCode;

  /// Privacy policy link
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// Search suggestions toggle
  ///
  /// In en, this message translates to:
  /// **'Search Suggestions'**
  String get enableSearchSuggestions;

  /// Default search engine setting
  ///
  /// In en, this message translates to:
  /// **'Default Search Engine'**
  String get defaultSearchEngine;

  /// Add custom search engine
  ///
  /// In en, this message translates to:
  /// **'Add Search Engine'**
  String get addSearchEngine;

  /// Remove search engine
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get removeSearchEngine;

  /// Edit search engine
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get editSearchEngine;

  /// Container label
  ///
  /// In en, this message translates to:
  /// **'Container'**
  String get container;

  /// Containers section
  ///
  /// In en, this message translates to:
  /// **'Containers'**
  String get containers;

  /// Create new container
  ///
  /// In en, this message translates to:
  /// **'New Container'**
  String get newContainer;

  /// Color picker label
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get color;

  /// Name input label
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// Icon picker label
  ///
  /// In en, this message translates to:
  /// **'Icon'**
  String get icon;

  /// Proxy settings section
  ///
  /// In en, this message translates to:
  /// **'Proxy'**
  String get proxy;

  /// Tor settings section
  ///
  /// In en, this message translates to:
  /// **'Tor'**
  String get tor;

  /// Connections section
  ///
  /// In en, this message translates to:
  /// **'Connections'**
  String get connections;

  /// Connection status connected
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get connected;

  /// Connection status disconnected
  ///
  /// In en, this message translates to:
  /// **'Disconnected'**
  String get disconnected;

  /// Connection status connecting
  ///
  /// In en, this message translates to:
  /// **'Connecting...'**
  String get connecting;

  /// Generic error label
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// Generic warning label
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// Loading indicator text
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No search results message
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get noResults;

  /// Search within settings
  ///
  /// In en, this message translates to:
  /// **'Search Settings'**
  String get searchSettings;

  /// Language and region settings title
  ///
  /// In en, this message translates to:
  /// **'Language & Region Settings'**
  String get languageRegionSettings;

  /// Browser languages setting
  ///
  /// In en, this message translates to:
  /// **'Browser Languages'**
  String get browserLanguages;

  /// Custom locale setting
  ///
  /// In en, this message translates to:
  /// **'Custom Locale'**
  String get customLocale;

  /// Search hint for browser locale settings
  ///
  /// In en, this message translates to:
  /// **'Search locales by tag'**
  String get searchLocalesByTag;

  /// Subtitle for a browser language preference
  ///
  /// In en, this message translates to:
  /// **'Browser language preference'**
  String get browserLanguagePreference;

  /// Action to add a custom browser locale
  ///
  /// In en, this message translates to:
  /// **'Add custom locale'**
  String get addCustomLocale;

  /// Description of the custom locale input
  ///
  /// In en, this message translates to:
  /// **'Enter a locale tag such as en-US'**
  String get enterLocaleTag;

  /// Example BCP 47 locale tag
  ///
  /// In en, this message translates to:
  /// **'en-US'**
  String get localeTagExample;

  /// Validation error for a malformed locale identifier
  ///
  /// In en, this message translates to:
  /// **'Invalid locale identifier'**
  String get invalidLocaleIdentifier;

  /// Pure black OLED setting
  ///
  /// In en, this message translates to:
  /// **'Pure Black (OLED)'**
  String get pureBlack;

  /// Display refresh rate setting
  ///
  /// In en, this message translates to:
  /// **'Refresh Rate'**
  String get refreshRate;

  /// System default option
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get systemDefault;

  /// High refresh rate option
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get high;

  /// Low refresh rate option
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get low;

  /// UI scale factor setting
  ///
  /// In en, this message translates to:
  /// **'UI Scale'**
  String get uiScale;

  /// Font size setting
  ///
  /// In en, this message translates to:
  /// **'Font Size'**
  String get fontSize;

  /// Disable animations setting
  ///
  /// In en, this message translates to:
  /// **'Disable Animations'**
  String get disableAnimations;

  /// Reset all settings to defaults
  ///
  /// In en, this message translates to:
  /// **'Reset All Preferences'**
  String get resetAllPreferences;

  /// Show close button on new tab screen
  ///
  /// In en, this message translates to:
  /// **'Show Close Button'**
  String get showCloseButton;

  /// Custom tabs toggle
  ///
  /// In en, this message translates to:
  /// **'Custom Tabs'**
  String get customTabs;

  /// Update all extensions button
  ///
  /// In en, this message translates to:
  /// **'Update All'**
  String get updateAllExtensions;

  /// Install extension button
  ///
  /// In en, this message translates to:
  /// **'Install'**
  String get installExtension;

  /// Remove extension button
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get uninstallExtension;

  /// Extensions settings section title
  ///
  /// In en, this message translates to:
  /// **'Extensions'**
  String get extensionsSettings;

  /// Allow unsigned extensions setting
  ///
  /// In en, this message translates to:
  /// **'Allow Unsigned Extensions'**
  String get allowUnsignedExtensions;

  /// Search history label
  ///
  /// In en, this message translates to:
  /// **'Search History'**
  String get searchHistory;

  /// Clear history action
  ///
  /// In en, this message translates to:
  /// **'Clear History'**
  String get clearHistory;

  /// Recent searches label
  ///
  /// In en, this message translates to:
  /// **'Recent Searches'**
  String get recentSearches;

  /// Top sites / shortcuts label
  ///
  /// In en, this message translates to:
  /// **'Shortcuts'**
  String get topSites;

  /// Pin shortcut action
  ///
  /// In en, this message translates to:
  /// **'Pin'**
  String get pinShortcut;

  /// Unpin shortcut action
  ///
  /// In en, this message translates to:
  /// **'Unpin'**
  String get unpinShortcut;

  /// Edit shortcut action
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get editShortcut;

  /// Remove shortcut action
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get removeShortcut;

  /// Onboarding welcome title
  ///
  /// In en, this message translates to:
  /// **'Welcome to WebLibre'**
  String get onboardingWelcome;

  /// Onboarding get started button
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get onboardingGetStarted;

  /// Onboarding next button
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get onboardingNext;

  /// Onboarding skip button
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get onboardingSkip;

  /// Onboarding finish button
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get onboardingFinish;

  /// Restore backup button
  ///
  /// In en, this message translates to:
  /// **'Restore Backup'**
  String get restoreBackup;

  /// Create backup button
  ///
  /// In en, this message translates to:
  /// **'Create Backup'**
  String get createBackup;

  /// Backup password input
  ///
  /// In en, this message translates to:
  /// **'Backup Password'**
  String get backupPassword;

  /// Import bookmarks action
  ///
  /// In en, this message translates to:
  /// **'Import Bookmarks'**
  String get importBookmarks;

  /// Export bookmarks action
  ///
  /// In en, this message translates to:
  /// **'Export Bookmarks'**
  String get exportBookmarks;

  /// Print page action
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get printPage;

  /// Save page as PDF action
  ///
  /// In en, this message translates to:
  /// **'Save as PDF'**
  String get saveAsPdf;

  /// Export page as image action
  ///
  /// In en, this message translates to:
  /// **'Save as Image'**
  String get exportAsImage;

  /// Action to export page content as Markdown
  ///
  /// In en, this message translates to:
  /// **'Export as Markdown'**
  String get exportAsMarkdown;

  /// Action to copy page content as Markdown
  ///
  /// In en, this message translates to:
  /// **'Copy as Markdown'**
  String get copyAsMarkdown;

  /// Copy image action
  ///
  /// In en, this message translates to:
  /// **'Copy Image'**
  String get copyImage;

  /// Copy link action
  ///
  /// In en, this message translates to:
  /// **'Copy Link'**
  String get copyLink;

  /// Open link in new tab
  ///
  /// In en, this message translates to:
  /// **'Open in New Tab'**
  String get openInNewTab;

  /// Open link in private tab
  ///
  /// In en, this message translates to:
  /// **'Open in Private Tab'**
  String get openInPrivateTab;

  /// Open link in container tab
  ///
  /// In en, this message translates to:
  /// **'Open in Container'**
  String get openInContainer;

  /// Screenshot protection setting
  ///
  /// In en, this message translates to:
  /// **'Screenshot Protection'**
  String get screenshotProtection;

  /// Notification text for private tabs
  ///
  /// In en, this message translates to:
  /// **'Private tabs are open'**
  String get privateTabsNotification;

  /// Title of close-all-private-tabs dialog
  ///
  /// In en, this message translates to:
  /// **'Close All Private Tabs'**
  String get closeAllPrivateTabs;

  /// Lock on startup only setting
  ///
  /// In en, this message translates to:
  /// **'Lock on Startup Only'**
  String get lockOnStartupOnly;

  /// Tracking protection label
  ///
  /// In en, this message translates to:
  /// **'Tracking Protection'**
  String get trackingProtection;

  /// Enhanced tracking protection label
  ///
  /// In en, this message translates to:
  /// **'Enhanced Tracking Protection'**
  String get enhancedTrackingProtection;

  /// Content blocking label
  ///
  /// In en, this message translates to:
  /// **'Content Blocking'**
  String get contentBlocking;

  /// Safe browsing setting
  ///
  /// In en, this message translates to:
  /// **'Safe Browsing'**
  String get safeBrowsing;

  /// Geolocation privacy setting
  ///
  /// In en, this message translates to:
  /// **'Geolocation Privacy'**
  String get geolocationPrivacy;

  /// WebGL privacy setting
  ///
  /// In en, this message translates to:
  /// **'WebGL Privacy'**
  String get webglPrivacy;

  /// WebRTC IP leak prevention
  ///
  /// In en, this message translates to:
  /// **'WebRTC IP Leak Prevention'**
  String get webrtcIpLeak;

  /// Certificate transparency setting
  ///
  /// In en, this message translates to:
  /// **'Certificate Transparency'**
  String get certificateTransparency;

  /// URL cleaner setting
  ///
  /// In en, this message translates to:
  /// **'URL Cleaner'**
  String get urlCleaner;

  /// DNS over HTTPS setting
  ///
  /// In en, this message translates to:
  /// **'DNS over HTTPS'**
  String get dnsOverHttps;

  /// Custom DNS setting
  ///
  /// In en, this message translates to:
  /// **'Custom DNS'**
  String get customDns;

  /// Edit proxy profile title
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// Auto-start proxy setting
  ///
  /// In en, this message translates to:
  /// **'Start Automatically'**
  String get startAutomatically;

  /// Add proxy profile button
  ///
  /// In en, this message translates to:
  /// **'Add Profile'**
  String get addProfile;

  /// Proxy connections list title
  ///
  /// In en, this message translates to:
  /// **'Proxy Connections'**
  String get proxyConnections;

  /// Proxy logs screen title
  ///
  /// In en, this message translates to:
  /// **'Proxy Logs'**
  String get proxyLogs;

  /// Log level filter: all
  ///
  /// In en, this message translates to:
  /// **'All levels'**
  String get allLevels;

  /// Log level filter: error
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error2;

  /// Log level filter: warning
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning2;

  /// Log level filter: info
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get info;

  /// Log level filter: debug
  ///
  /// In en, this message translates to:
  /// **'Debug'**
  String get debug;

  /// Log level filter: trace
  ///
  /// In en, this message translates to:
  /// **'Trace'**
  String get trace;

  /// Container-based proxy routing title
  ///
  /// In en, this message translates to:
  /// **'Container-Based Routing'**
  String get containerBasedRouting;

  /// Global proxy routing title
  ///
  /// In en, this message translates to:
  /// **'Global Routing'**
  String get globalRouting;

  /// Proxy not used in container routing
  ///
  /// In en, this message translates to:
  /// **'Not used in container-based routing'**
  String get notUsedInContainerRouting;

  /// No proxy selected
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// Subtitle for no proxy selected
  ///
  /// In en, this message translates to:
  /// **'Use the normal browser connection'**
  String get useNormalConnection;

  /// Selected proxy no longer exists
  ///
  /// In en, this message translates to:
  /// **'Unknown proxy'**
  String get unknownProxy;

  /// Subtitle for unknown proxy
  ///
  /// In en, this message translates to:
  /// **'The selected proxy no longer exists.'**
  String get proxyNoLongerExists;

  /// Import subscription screen title
  ///
  /// In en, this message translates to:
  /// **'Import Subscription'**
  String get importSubscription;

  /// Fetch button
  ///
  /// In en, this message translates to:
  /// **'Fetch'**
  String get fetch;

  /// Select all button
  ///
  /// In en, this message translates to:
  /// **'Select all'**
  String get selectAll;

  /// Import N profiles button
  ///
  /// In en, this message translates to:
  /// **'Import {count} profile(s)'**
  String importNProfiles(int count);

  /// No extension settings available
  ///
  /// In en, this message translates to:
  /// **'This extension does not expose a settings page.'**
  String get noSettingsPage;

  /// Android platform label
  ///
  /// In en, this message translates to:
  /// **'Android'**
  String get android;

  /// Compact desktop mode label
  ///
  /// In en, this message translates to:
  /// **'Desktop'**
  String get desktop;

  /// Failed to load extensions message
  ///
  /// In en, this message translates to:
  /// **'Failed to load extensions'**
  String get failedToLoadExtensions;

  /// No extensions found message
  ///
  /// In en, this message translates to:
  /// **'No extensions found.'**
  String get noExtensionsFound;

  /// Check for extension updates button
  ///
  /// In en, this message translates to:
  /// **'Check for updates'**
  String get checkForUpdates;

  /// Install extension from file button
  ///
  /// In en, this message translates to:
  /// **'Install from file'**
  String get installFromFile;

  /// Private browsing chip label
  ///
  /// In en, this message translates to:
  /// **'Private Browsing'**
  String get privateBrowsing;

  /// Extension not found message
  ///
  /// In en, this message translates to:
  /// **'This extension could not be found.'**
  String get extensionNotFound;

  /// No special permissions message
  ///
  /// In en, this message translates to:
  /// **'No special permissions listed'**
  String get noSpecialPermissions;

  /// Learn more link
  ///
  /// In en, this message translates to:
  /// **'Learn More'**
  String get learnMore;

  /// Recommended badge
  ///
  /// In en, this message translates to:
  /// **'Recommended'**
  String get recommended;

  /// Extension author attribution
  ///
  /// In en, this message translates to:
  /// **'by {name}'**
  String byAuthor(String name);

  /// Installed badge
  ///
  /// In en, this message translates to:
  /// **'Installed'**
  String get installed;

  /// Extension details screen title
  ///
  /// In en, this message translates to:
  /// **'Extension'**
  String get extension;

  /// Clear
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// Default Browser
  ///
  /// In en, this message translates to:
  /// **'Default Browser'**
  String get defaultBrowser;

  /// Set WebLibre as the default browser
  ///
  /// In en, this message translates to:
  /// **'Set WebLibre as the default browser'**
  String get setAsDefaultBrowser;

  /// Appearance
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// Language used by WebLibre's own interface
  ///
  /// In en, this message translates to:
  /// **'App Language'**
  String get appLanguage;

  /// Subtitle for the app language setting
  ///
  /// In en, this message translates to:
  /// **'Choose the language used by WebLibre'**
  String get appLanguageSubtitle;

  /// Use the operating system language
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get languageSystem;

  /// English app language option
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// Simplified Chinese app language option
  ///
  /// In en, this message translates to:
  /// **'简体中文'**
  String get languageChineseSimplified;

  /// Theme
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// Choose between system, light, or dark theme
  ///
  /// In en, this message translates to:
  /// **'Choose between system, light, or dark theme'**
  String get chooseSystemLightOrDark;

  /// Light theme option
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// Dark theme option
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// Use true black for OLED displays
  ///
  /// In en, this message translates to:
  /// **'Use true black for OLED displays'**
  String get useTrueBlackOledSubtitle;

  /// User Interface Zoom
  ///
  /// In en, this message translates to:
  /// **'User Interface Zoom'**
  String get userInterfaceZoom;

  /// Make the user interface smaller or larger
  ///
  /// In en, this message translates to:
  /// **'Make the user interface smaller or larger'**
  String get makeUiSmallerOrLarger;

  /// Request a high or low refresh rate
  ///
  /// In en, this message translates to:
  /// **'Request a high or low refresh rate'**
  String get requestHighOrLowRefreshRate;

  /// Description of the refresh rate setting
  ///
  /// In en, this message translates to:
  /// **'Choose High for smoother scrolling or Low to save battery'**
  String get refreshRateSubtitle;

  /// Reduce motion and turn off app animations
  ///
  /// In en, this message translates to:
  /// **'Reduce motion and turn off app animations'**
  String get reduceMotionAndDisableAnimations;

  /// Show Modal Barrier
  ///
  /// In en, this message translates to:
  /// **'Show Modal Barrier'**
  String get showModalBarrier;

  /// Dim the background behind dialogs
  ///
  /// In en, this message translates to:
  /// **'Dim the background behind dialogs'**
  String get dimBackgroundBehindDialogs;

  /// Add a close button to the new tab screen
  ///
  /// In en, this message translates to:
  /// **'Add a close button to the new tab screen'**
  String get addCloseButtonSubtitle;

  /// Use External Download Manager
  ///
  /// In en, this message translates to:
  /// **'Use External Download Manager'**
  String get useExternalDownloadManager;

  /// Manage downloads with another app
  ///
  /// In en, this message translates to:
  /// **'Manage downloads with another app'**
  String get manageDownloadsWithAnotherApp;

  /// Appearance, downloads, and general behavior
  ///
  /// In en, this message translates to:
  /// **'Appearance, downloads, and general behavior'**
  String get generalSettingsSubtitle;

  /// WebLibre is the default browser
  ///
  /// In en, this message translates to:
  /// **'WebLibre is the default browser'**
  String get webLibreIsDefaultBrowser;

  /// Default
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultButton;

  /// Set
  ///
  /// In en, this message translates to:
  /// **'Set'**
  String get setButton;

  /// Hint shown in settings search fields
  ///
  /// In en, this message translates to:
  /// **'Search settings'**
  String get searchSettingsHint;

  /// Empty state when a settings screen has no entries
  ///
  /// In en, this message translates to:
  /// **'No settings available.'**
  String get noSettingsAvailable;

  /// Empty state for settings search results
  ///
  /// In en, this message translates to:
  /// **'No settings match \"{query}\".'**
  String noSettingsMatch(String query);

  /// Confirmation dialog title for deleting tracking protection exceptions
  ///
  /// In en, this message translates to:
  /// **'Delete All Exceptions?'**
  String get deleteAllExceptionsQuestion;

  /// Confirmation dialog message for deleting all tracking protection exceptions
  ///
  /// In en, this message translates to:
  /// **'This will re-enable tracking protection for all exception sites.'**
  String get reenableTrackingProtectionAllExceptionSites;

  /// Dialog title shown after changing the user agent
  ///
  /// In en, this message translates to:
  /// **'User Agent Changed'**
  String get userAgentChanged;

  /// Dialog message explaining that a user agent change requires restart
  ///
  /// In en, this message translates to:
  /// **'The browser needs to restart for the new user agent to take effect.'**
  String get browserRestartForUserAgent;

  /// Button to postpone an action
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get later;

  /// Button to restart the app immediately
  ///
  /// In en, this message translates to:
  /// **'Restart Now'**
  String get restartNow;

  /// Snackbar shown after copying a log entry
  ///
  /// In en, this message translates to:
  /// **'Entry copied'**
  String get entryCopied;

  /// Message field label in log details
  ///
  /// In en, this message translates to:
  /// **'Message:'**
  String get messageLabel;

  /// Error field label in log details
  ///
  /// In en, this message translates to:
  /// **'Error:'**
  String get errorLabel;

  /// Stack trace field label in log details
  ///
  /// In en, this message translates to:
  /// **'Stack Trace:'**
  String get stackTraceLabel;

  /// Copy action
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// Sync action
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get sync;

  /// Button prompting the user to select a search provider
  ///
  /// In en, this message translates to:
  /// **'Choose a search provider'**
  String get chooseSearchProvider;

  /// Empty state for reusable settings lists
  ///
  /// In en, this message translates to:
  /// **'Nothing added yet.'**
  String get nothingAddedYet;

  /// Add action tooltip
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// Remove action tooltip
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// Number of synchronized entries label
  ///
  /// In en, this message translates to:
  /// **'Entries'**
  String get entries;

  /// Last synchronization time label
  ///
  /// In en, this message translates to:
  /// **'Last Sync'**
  String get lastSync;

  /// Value is not available
  ///
  /// In en, this message translates to:
  /// **'N/A'**
  String get notAvailable;

  /// Hint on the main settings search field
  ///
  /// In en, this message translates to:
  /// **'Search all settings'**
  String get searchAllSettings;

  /// General settings category subtitle
  ///
  /// In en, this message translates to:
  /// **'Appearance, downloads'**
  String get appearanceDownloads;

  /// Browsing settings category title
  ///
  /// In en, this message translates to:
  /// **'Browsing'**
  String get browsing;

  /// Browsing settings category subtitle
  ///
  /// In en, this message translates to:
  /// **'Tabs, navigation, external links'**
  String get tabsNavigationExternalLinks;

  /// Home and new tab settings title
  ///
  /// In en, this message translates to:
  /// **'Home & New Tab'**
  String get homeAndNewTab;

  /// Home and new tab settings subtitle
  ///
  /// In en, this message translates to:
  /// **'What the home and new tab pages show'**
  String get homeAndNewTabSubtitle;

  /// Gesture settings category title
  ///
  /// In en, this message translates to:
  /// **'Gestures'**
  String get gestures;

  /// Gesture settings category subtitle
  ///
  /// In en, this message translates to:
  /// **'Stroke gestures for browser actions'**
  String get strokeGesturesForBrowserActions;

  /// Toolbar and layout settings category title
  ///
  /// In en, this message translates to:
  /// **'Toolbar & Layout'**
  String get toolbarAndLayout;

  /// Toolbar and layout settings category subtitle
  ///
  /// In en, this message translates to:
  /// **'Tab bar, toolbar, quick switcher, tab view'**
  String get toolbarAndLayoutSubtitle;

  /// Web content settings category title
  ///
  /// In en, this message translates to:
  /// **'Web Content'**
  String get webContent;

  /// Web content settings category subtitle
  ///
  /// In en, this message translates to:
  /// **'Page display, PDF, reader mode, AI'**
  String get webContentSubtitle;

  /// Notification settings category title
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// Notification settings category subtitle
  ///
  /// In en, this message translates to:
  /// **'Web push delivery, distributor, site subscriptions'**
  String get notificationsSettingsSubtitle;

  /// Search settings category subtitle
  ///
  /// In en, this message translates to:
  /// **'Providers, bangs, search history'**
  String get searchCategorySubtitle;

  /// Privacy and security settings category subtitle
  ///
  /// In en, this message translates to:
  /// **'Tracking protection, data clearing'**
  String get trackingProtectionDataClearing;

  /// Proxy settings category subtitle
  ///
  /// In en, this message translates to:
  /// **'Connections and routing'**
  String get connectionsAndRouting;

  /// Extensions settings category subtitle
  ///
  /// In en, this message translates to:
  /// **'Install and manage extension sources'**
  String get installManageExtensionSources;

  /// WebLibre account settings category title
  ///
  /// In en, this message translates to:
  /// **'WebLibre Account'**
  String get webLibreAccount;

  /// WebLibre account settings category subtitle
  ///
  /// In en, this message translates to:
  /// **'Sign in, sync settings'**
  String get signInSyncSettings;

  /// Firefox Sync settings category title
  ///
  /// In en, this message translates to:
  /// **'Firefox Sync'**
  String get firefoxSync;

  /// Firefox Sync settings category subtitle
  ///
  /// In en, this message translates to:
  /// **'Account, sync now, engine selection'**
  String get firefoxSyncSubtitle;

  /// Advanced settings category subtitle
  ///
  /// In en, this message translates to:
  /// **'JavaScript, user agent, debugging'**
  String get advancedCategorySubtitle;

  /// Browser settings group title
  ///
  /// In en, this message translates to:
  /// **'Browser'**
  String get browser;

  /// Services and advanced settings group title
  ///
  /// In en, this message translates to:
  /// **'Services & Advanced'**
  String get servicesAndAdvanced;

  /// Startup settings section title
  ///
  /// In en, this message translates to:
  /// **'Startup'**
  String get startup;

  /// Home target setting title
  ///
  /// In en, this message translates to:
  /// **'When there is no tab to show'**
  String get whenNoTabToShow;

  /// Home target setting subtitle
  ///
  /// In en, this message translates to:
  /// **'On startup, and after closing the last tab'**
  String get onStartupAndAfterClosingLastTab;

  /// Apply home target on last tab close setting
  ///
  /// In en, this message translates to:
  /// **'Apply when the last tab closes'**
  String get applyWhenLastTabCloses;

  /// Home target on last tab close metadata subtitle
  ///
  /// In en, this message translates to:
  /// **'Otherwise a tab from another container is opened instead'**
  String get otherwiseOpenTabFromAnotherContainer;

  /// Layout settings section title
  ///
  /// In en, this message translates to:
  /// **'Layout'**
  String get layout;

  /// Customize home page sections setting
  ///
  /// In en, this message translates to:
  /// **'Customize home sections'**
  String get customizeHomeSections;

  /// Customize home page sections subtitle
  ///
  /// In en, this message translates to:
  /// **'Choose and order what the home page shows'**
  String get chooseOrderHomePage;

  /// Customize new tab sections setting
  ///
  /// In en, this message translates to:
  /// **'Customize new tab sections'**
  String get customizeNewTabSections;

  /// Customize new tab sections subtitle
  ///
  /// In en, this message translates to:
  /// **'Choose and order what the new tab page shows'**
  String get chooseOrderNewTabPage;

  /// Web address field label
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// Validation message for an empty custom home address
  ///
  /// In en, this message translates to:
  /// **'Enter an address, or the home page is shown instead'**
  String get enterAddressOrShowHomePage;

  /// Validation message for an invalid address
  ///
  /// In en, this message translates to:
  /// **'Not a valid address'**
  String get notValidAddress;

  /// Detailed description of applying the home target after closing the last tab
  ///
  /// In en, this message translates to:
  /// **'Closing the last tab in a container stays there instead of opening a tab from somewhere else'**
  String get closingLastTabStaysInContainer;

  /// Home target option
  ///
  /// In en, this message translates to:
  /// **'Home page'**
  String get homePage;

  /// Resume last tab home target option
  ///
  /// In en, this message translates to:
  /// **'Last opened tab'**
  String get lastOpenedTab;

  /// Custom URL home target option
  ///
  /// In en, this message translates to:
  /// **'Custom address'**
  String get customAddress;

  /// Home page target description
  ///
  /// In en, this message translates to:
  /// **'Show shortcuts and the sections you have chosen'**
  String get showChosenHomeSections;

  /// Resume last tab target description
  ///
  /// In en, this message translates to:
  /// **'Pick up where you left off'**
  String get pickUpWhereLeftOff;

  /// Custom address target description
  ///
  /// In en, this message translates to:
  /// **'Open a specific page'**
  String get openSpecificPage;

  /// Search providers settings section
  ///
  /// In en, this message translates to:
  /// **'Providers'**
  String get providers;

  /// Default search provider setting
  ///
  /// In en, this message translates to:
  /// **'Default Search Provider'**
  String get defaultSearchProvider;

  /// Default search provider subtitle
  ///
  /// In en, this message translates to:
  /// **'Choose the default engine for searches'**
  String get chooseDefaultSearchEngine;

  /// Default autocomplete provider setting
  ///
  /// In en, this message translates to:
  /// **'Default Autocomplete Provider'**
  String get defaultAutocompleteProvider;

  /// Autocomplete provider subtitle
  ///
  /// In en, this message translates to:
  /// **'Choose the provider for search suggestions'**
  String get chooseSearchSuggestionsProvider;

  /// Custom search engines setting
  ///
  /// In en, this message translates to:
  /// **'Custom Search Engines'**
  String get customSearchEngines;

  /// Custom search engines subtitle
  ///
  /// In en, this message translates to:
  /// **'Add and manage your own search providers'**
  String get addManageSearchProviders;

  /// Bang shortcuts settings section
  ///
  /// In en, this message translates to:
  /// **'Bang Shortcuts'**
  String get bangShortcuts;

  /// Bang settings entry title
  ///
  /// In en, this message translates to:
  /// **'Bang Settings'**
  String get bangSettings;

  /// Bang settings entry subtitle
  ///
  /// In en, this message translates to:
  /// **'Manage bang repositories and usage data'**
  String get manageBangRepositories;

  /// Search history and suggestions settings section
  ///
  /// In en, this message translates to:
  /// **'History & Suggestions'**
  String get historyAndSuggestions;

  /// Search history limit setting
  ///
  /// In en, this message translates to:
  /// **'Search History Limit'**
  String get searchHistoryLimit;

  /// Search history limit subtitle
  ///
  /// In en, this message translates to:
  /// **'Maximum number of recent searches to remember'**
  String get maximumRecentSearches;

  /// Clipboard access for search suggestions setting
  ///
  /// In en, this message translates to:
  /// **'Allow clipboard access for suggestions'**
  String get allowClipboardAccessSuggestions;

  /// Clipboard search suggestions subtitle
  ///
  /// In en, this message translates to:
  /// **'Browser can read clipboard to suggest URLs'**
  String get browserReadClipboardSuggestUrls;

  /// Accept autocomplete on submit setting
  ///
  /// In en, this message translates to:
  /// **'Autocomplete on enter'**
  String get autocompleteOnEnter;

  /// Short autocomplete on enter subtitle used in search metadata
  ///
  /// In en, this message translates to:
  /// **'Accept the inline suggestion when pressing enter'**
  String get acceptInlineSuggestionOnEnterShort;

  /// Autocomplete on enter setting description
  ///
  /// In en, this message translates to:
  /// **'Accept the inline suggestion when pressing enter on the keyboard'**
  String get acceptInlineSuggestionOnEnter;

  /// Popular site autocomplete setting
  ///
  /// In en, this message translates to:
  /// **'Popular site suggestions'**
  String get popularSiteSuggestions;

  /// Short popular site suggestions subtitle used in search metadata
  ///
  /// In en, this message translates to:
  /// **'Complete typed text with well-known domains'**
  String get completeTextWithKnownDomainsShort;

  /// Popular site suggestions setting description
  ///
  /// In en, this message translates to:
  /// **'Complete typed text with well-known domains when your history has no match'**
  String get completeTextWithKnownDomains;

  /// Local search index settings section
  ///
  /// In en, this message translates to:
  /// **'Local Search Index'**
  String get localSearchIndex;

  /// Enable local search index setting
  ///
  /// In en, this message translates to:
  /// **'Enable local search index'**
  String get enableLocalSearchIndex;

  /// Local search index metadata subtitle
  ///
  /// In en, this message translates to:
  /// **'Index visited pages locally for content search'**
  String get indexVisitedPagesLocally;

  /// Index private tabs setting
  ///
  /// In en, this message translates to:
  /// **'Index private tabs'**
  String get indexPrivateTabs;

  /// Index private tabs metadata subtitle
  ///
  /// In en, this message translates to:
  /// **'Include private tabs in the local index'**
  String get includePrivateTabsLocalIndexShort;

  /// Indexed page count setting
  ///
  /// In en, this message translates to:
  /// **'Indexed pages'**
  String get indexedPages;

  /// Indexed pages metadata subtitle
  ///
  /// In en, this message translates to:
  /// **'View and clear the local index'**
  String get viewClearLocalIndex;

  /// Search settings screen subtitle
  ///
  /// In en, this message translates to:
  /// **'Providers, bangs, history suggestions, and on-device search.'**
  String get searchSettingsSubtitle;

  /// Disabled option label
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get disabled;

  /// Suffix for a numeric number of entries field
  ///
  /// In en, this message translates to:
  /// **'entries'**
  String get entriesLowercase;

  /// Required numeric value validation message
  ///
  /// In en, this message translates to:
  /// **'Please enter a value'**
  String get pleaseEnterValue;

  /// Invalid numeric value validation message
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid number'**
  String get pleaseEnterValidNumber;

  /// Search history limit range validation message
  ///
  /// In en, this message translates to:
  /// **'Value must be between 0 and 100'**
  String get valueBetweenZeroAndHundred;

  /// Detailed local search index setting description
  ///
  /// In en, this message translates to:
  /// **'Index visited pages locally so the browser can search their content. Visit metadata stays in the engine; only page text is stored on-device.'**
  String get localSearchIndexDescription;

  /// Index private tabs setting description
  ///
  /// In en, this message translates to:
  /// **'Include pages opened in private tabs in the local index. Off by default.'**
  String get indexPrivateTabsDescription;

  /// Confirmation title for clearing the local search index
  ///
  /// In en, this message translates to:
  /// **'Clear local search index?'**
  String get clearLocalSearchIndexQuestion;

  /// Confirmation message for clearing the local search index
  ///
  /// In en, this message translates to:
  /// **'This removes all locally indexed page content. Engine history (visit metadata) is not affected.'**
  String get clearLocalSearchIndexDescription;

  /// Number of locally indexed pages
  ///
  /// In en, this message translates to:
  /// **'{count} pages indexed'**
  String pagesIndexed(int count);

  /// Loading state using an ellipsis character
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get loadingEllipsis;

  /// Advanced content and identity settings section
  ///
  /// In en, this message translates to:
  /// **'Content & Identity'**
  String get contentAndIdentity;

  /// Enable JavaScript setting
  ///
  /// In en, this message translates to:
  /// **'Enable JavaScript'**
  String get enableJavaScript;

  /// Enable JavaScript metadata subtitle
  ///
  /// In en, this message translates to:
  /// **'Turn website scripting on or off'**
  String get turnWebsiteScriptingOnOff;

  /// Custom user agent setting
  ///
  /// In en, this message translates to:
  /// **'Custom User Agent'**
  String get customUserAgent;

  /// Custom user agent subtitle
  ///
  /// In en, this message translates to:
  /// **'Override the browser user agent string'**
  String get overrideBrowserUserAgent;

  /// Use third-party CA certificates setting
  ///
  /// In en, this message translates to:
  /// **'Use third party CA certificates'**
  String get useThirdPartyCaCertificates;

  /// Third-party CA certificates metadata subtitle
  ///
  /// In en, this message translates to:
  /// **'Allow Android CA store certificates'**
  String get allowAndroidCaStoreCertificates;

  /// Experimental settings section
  ///
  /// In en, this message translates to:
  /// **'Experimental'**
  String get experimental;

  /// Experimental features setting
  ///
  /// In en, this message translates to:
  /// **'Experimental Features'**
  String get experimentalFeatures;

  /// Experimental features setting subtitle
  ///
  /// In en, this message translates to:
  /// **'Low-level runtime features and startup behavior'**
  String get experimentalFeaturesSubtitle;

  /// Developer tools settings section
  ///
  /// In en, this message translates to:
  /// **'Developer Tools'**
  String get developerTools;

  /// Unmount browser engine while off-screen setting
  ///
  /// In en, this message translates to:
  /// **'Unmount Engine Off-Screen'**
  String get unmountEngineOffScreen;

  /// Unmount engine metadata subtitle
  ///
  /// In en, this message translates to:
  /// **'Free the web engine when an overlay is on top'**
  String get freeEngineUnderOverlay;

  /// Icon cache setting
  ///
  /// In en, this message translates to:
  /// **'Icon Cache'**
  String get iconCache;

  /// Icon cache subtitle
  ///
  /// In en, this message translates to:
  /// **'Stored favicons'**
  String get storedFavicons;

  /// Downloaded machine learning files setting
  ///
  /// In en, this message translates to:
  /// **'ML Downloads'**
  String get mlDownloads;

  /// Machine learning downloads subtitle
  ///
  /// In en, this message translates to:
  /// **'Downloaded AI models and runtime files'**
  String get downloadedAiModelsRuntimeFiles;

  /// Error logs setting
  ///
  /// In en, this message translates to:
  /// **'Error Logs'**
  String get errorLogs;

  /// Error logs setting subtitle
  ///
  /// In en, this message translates to:
  /// **'View and copy logs for issue reporting'**
  String get viewCopyLogsIssueReporting;

  /// Dart VM developer setting
  ///
  /// In en, this message translates to:
  /// **'Dart VM'**
  String get dartVm;

  /// Dart VM developer setting subtitle
  ///
  /// In en, this message translates to:
  /// **'Copy Dart VM service URL'**
  String get copyDartVmServiceUrl;

  /// Reset UI developer setting
  ///
  /// In en, this message translates to:
  /// **'Reset UI'**
  String get resetUi;

  /// Reset UI developer setting subtitle
  ///
  /// In en, this message translates to:
  /// **'Rebuild the entire browser UI'**
  String get rebuildEntireBrowserUi;

  /// Advanced settings screen subtitle
  ///
  /// In en, this message translates to:
  /// **'Engine behavior, runtime overrides, and developer tools.'**
  String get advancedSettingsSubtitle;

  /// Detailed JavaScript setting warning
  ///
  /// In en, this message translates to:
  /// **'While turning off JavaScript can boost security, privacy, and speed, it may cause some sites to not work as intended.'**
  String get javascriptDisabledWarning;

  /// Detailed third-party CA certificate setting description
  ///
  /// In en, this message translates to:
  /// **'Allows the use of third party certificates from the Android CA store'**
  String get thirdPartyCertificatesAndroidCaStore;

  /// Detailed description for unmounting the web engine off-screen
  ///
  /// In en, this message translates to:
  /// **'Unmount the web engine while a full-screen overlay (settings, tabs, search) is on top, freeing its resources. On Android 12 and lower this is always done; enabling it applies the same behavior on Android 13+, which may cause the page to reload when returning.'**
  String get unmountEngineOffScreenDescription;

  /// Storage size label
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get size;

  /// Confirmation title for clearing machine learning files
  ///
  /// In en, this message translates to:
  /// **'Clear ML downloads?'**
  String get clearMlDownloadsQuestion;

  /// Confirmation message for clearing machine learning files
  ///
  /// In en, this message translates to:
  /// **'This clears downloaded AI models and ONNX runtime files for this profile. They will be downloaded again when needed. Restart WebLibre before retrying ML features.'**
  String get clearMlDownloadsDescription;

  /// Success message after clearing machine learning files
  ///
  /// In en, this message translates to:
  /// **'ML downloads cleared. Restart WebLibre before retrying.'**
  String get mlDownloadsCleared;

  /// Error message after failing to clear machine learning files
  ///
  /// In en, this message translates to:
  /// **'Failed to clear ML downloads: {error}'**
  String failedToClearMlDownloads(String error);

  /// Progress label while clearing data
  ///
  /// In en, this message translates to:
  /// **'Clearing'**
  String get clearing;

  /// Snackbar after copying the Dart VM service URL
  ///
  /// In en, this message translates to:
  /// **'Service URL copied'**
  String get serviceUrlCopied;

  /// Reset action
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// Proxy connections entry subtitle
  ///
  /// In en, this message translates to:
  /// **'Manage proxy profiles and connections'**
  String get manageProxyProfilesAndConnections;

  /// Proxy routing entry title
  ///
  /// In en, this message translates to:
  /// **'Proxy Routing'**
  String get proxyRouting;

  /// Proxy routing entry subtitle
  ///
  /// In en, this message translates to:
  /// **'Choose which proxy carries regular and private tabs'**
  String get chooseProxyForRegularAndPrivateTabs;

  /// Proxy settings screen subtitle
  ///
  /// In en, this message translates to:
  /// **'Manage proxy connections and choose which tabs use them.'**
  String get proxySettingsSubtitle;

  /// Extensions entry title
  ///
  /// In en, this message translates to:
  /// **'Manage Extensions'**
  String get manageExtensions;

  /// Extensions entry subtitle
  ///
  /// In en, this message translates to:
  /// **'Browse installed, disabled, available, and unsupported extensions'**
  String get browseInstalledAndAvailableExtensions;

  /// Custom extension collection entry title
  ///
  /// In en, this message translates to:
  /// **'Custom Collection'**
  String get customCollection;

  /// Custom extension collection entry subtitle
  ///
  /// In en, this message translates to:
  /// **'Use a custom Mozilla addon collection'**
  String get useCustomMozillaAddonCollection;

  /// Extensions update section title
  ///
  /// In en, this message translates to:
  /// **'Updates'**
  String get updates;

  /// Automatic extension updates title
  ///
  /// In en, this message translates to:
  /// **'Automatic updates'**
  String get automaticUpdates;

  /// Automatic extension updates subtitle
  ///
  /// In en, this message translates to:
  /// **'Automatically check for and install extension updates every 12 hours'**
  String get automaticExtensionUpdatesEvery12Hours;

  /// Extensions security section title
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// Unsigned extension setting subtitle
  ///
  /// In en, this message translates to:
  /// **'Unsigned extensions have not been verified by Mozilla'**
  String get unsignedExtensionsNotVerifiedByMozilla;

  /// Extensions settings screen subtitle
  ///
  /// In en, this message translates to:
  /// **'Manage add-ons, update behavior, and extension security.'**
  String get extensionsSettingsSubtitle;

  /// Error shown when an extension setting cannot be loaded
  ///
  /// In en, this message translates to:
  /// **'Failed to load: {error}'**
  String extensionSettingFailedToLoad(String error);

  /// Warning shown while unsigned extensions are enabled
  ///
  /// In en, this message translates to:
  /// **'Only install unsigned extensions from sources you trust. They may contain malicious code.'**
  String get unsignedExtensionTrustWarning;

  /// Confirmation dialog title for unsigned extensions
  ///
  /// In en, this message translates to:
  /// **'Allow unsigned extensions?'**
  String get allowUnsignedExtensionsQuestion;

  /// Security warning in unsigned extension confirmation
  ///
  /// In en, this message translates to:
  /// **'Warning: This significantly weakens your browser\'s security.'**
  String get unsignedExtensionsSecurityWarning;

  /// Risk details in unsigned extension confirmation
  ///
  /// In en, this message translates to:
  /// **'Unsigned extensions bypass Mozilla\'s safety review process. Malicious extensions can:\n\n• Read and modify everything you see on any website\n• Steal passwords, banking details, and personal data\n• Monitor your browsing activity silently\n• Install additional malware on your device'**
  String get unsignedExtensionsRiskDetails;

  /// Final caution in unsigned extension confirmation
  ///
  /// In en, this message translates to:
  /// **'Only enable this if you are a developer installing your own extension or absolutely trust the source.'**
  String get unsignedExtensionsDeveloperOnly;

  /// Unsigned extension confirmation action
  ///
  /// In en, this message translates to:
  /// **'Allow'**
  String get allow;

  /// Disabled unsigned extension action during countdown
  ///
  /// In en, this message translates to:
  /// **'Allow ({seconds})'**
  String allowAfterSeconds(int seconds);

  /// Experimental settings section title
  ///
  /// In en, this message translates to:
  /// **'Runtime & Startup'**
  String get runtimeAndStartup;

  /// Isolated content process setting title
  ///
  /// In en, this message translates to:
  /// **'Isolated Content Process'**
  String get isolatedContentProcess;

  /// Isolated content process entry subtitle
  ///
  /// In en, this message translates to:
  /// **'Run web content in an isolated process'**
  String get runWebContentInIsolatedProcess;

  /// App zygote process setting title
  ///
  /// In en, this message translates to:
  /// **'App Zygote Process'**
  String get appZygoteProcess;

  /// App zygote process entry subtitle
  ///
  /// In en, this message translates to:
  /// **'Preload the content service for faster isolated startup'**
  String get preloadContentServiceForFasterIsolatedStartup;

  /// Experimental settings screen subtitle
  ///
  /// In en, this message translates to:
  /// **'Runtime isolation and startup behavior.'**
  String get experimentalSettingsSubtitle;

  /// Isolated content process switch subtitle
  ///
  /// In en, this message translates to:
  /// **'Run web content in an isolated process. Requires app restart.'**
  String get isolatedContentProcessRequiresRestart;

  /// App zygote process switch subtitle
  ///
  /// In en, this message translates to:
  /// **'Preload the content service for faster isolated process startup. Requires Android 10+ and app restart.'**
  String get appZygoteProcessRequiresAndroidAndRestart;

  /// Custom extension collection screen title
  ///
  /// In en, this message translates to:
  /// **'Custom Extension Collection'**
  String get customExtensionCollection;

  /// Custom extension collection section title
  ///
  /// In en, this message translates to:
  /// **'Collection Source'**
  String get collectionSource;

  /// Custom extension collection entry title
  ///
  /// In en, this message translates to:
  /// **'Collection configuration'**
  String get collectionConfiguration;

  /// Custom extension collection entry subtitle
  ///
  /// In en, this message translates to:
  /// **'Mozilla server, collection owner, and collection name'**
  String get collectionConfigurationSubtitle;

  /// Custom extension collection server field label
  ///
  /// In en, this message translates to:
  /// **'Server URL'**
  String get serverUrl;

  /// Custom extension collection user field label
  ///
  /// In en, this message translates to:
  /// **'Collection User'**
  String get collectionUser;

  /// Custom extension collection name field label
  ///
  /// In en, this message translates to:
  /// **'Collection Name'**
  String get collectionName;

  /// Custom extension collection actions section title
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get actions;

  /// Save custom extension collection action
  ///
  /// In en, this message translates to:
  /// **'Save & Restart Browser'**
  String get saveAndRestartBrowser;

  /// Save custom extension collection entry subtitle
  ///
  /// In en, this message translates to:
  /// **'Apply the custom collection and restart the browser'**
  String get applyCustomCollectionAndRestartBrowser;

  /// Bang settings usage section title
  ///
  /// In en, this message translates to:
  /// **'Usage Data'**
  String get usageData;

  /// Bang frequency setting title
  ///
  /// In en, this message translates to:
  /// **'Bang Frequencies'**
  String get bangFrequencies;

  /// Bang frequency setting subtitle
  ///
  /// In en, this message translates to:
  /// **'Tracked usage for bang recommendations'**
  String get bangFrequenciesSubtitle;

  /// Bang repositories section title
  ///
  /// In en, this message translates to:
  /// **'Repositories'**
  String get repositories;

  /// General Bang repository title
  ///
  /// In en, this message translates to:
  /// **'General Bangs'**
  String get generalBangs;

  /// Bang repository subtitle
  ///
  /// In en, this message translates to:
  /// **'Sync on demand from GitHub'**
  String get syncOnDemandFromGitHub;

  /// Kagi Bang repository title
  ///
  /// In en, this message translates to:
  /// **'Kagi Bangs'**
  String get kagiBangs;

  /// Bang settings screen title
  ///
  /// In en, this message translates to:
  /// **'Bang Settings'**
  String get bangSettingsTitle;

  /// Bang settings screen subtitle
  ///
  /// In en, this message translates to:
  /// **'Bang shortcuts usage, repositories, and on-demand sync.'**
  String get bangSettingsSubtitle;

  /// Desktop mode sites screen title
  ///
  /// In en, this message translates to:
  /// **'Desktop mode sites'**
  String get desktopModeSites;

  /// Desktop mode sites screen description
  ///
  /// In en, this message translates to:
  /// **'These sites always load in desktop mode, overriding the default. Subdomains are included (e.g. \"example.com\" also covers \"m.example.com\").'**
  String get desktopModeSitesDescription;

  /// Empty desktop mode sites state
  ///
  /// In en, this message translates to:
  /// **'No sites added.'**
  String get noSitesAdded;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'Search Providers'**
  String get moduleSearchProviders;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'Suggestions'**
  String get moduleSuggestions;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'Tabs'**
  String get moduleTabs;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'Articles'**
  String get moduleArticles;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'History (engine)'**
  String get moduleHistoryEngine;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'Local content'**
  String get moduleLocalContent;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'Popular Sites'**
  String get modulePopularSites;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'History Highlights'**
  String get moduleHistoryHighlights;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'Shortcuts'**
  String get moduleShortcuts;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'Recent History'**
  String get moduleRecentHistory;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'Recent Articles'**
  String get moduleRecentArticles;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'Recent Tabs'**
  String get moduleRecentTabs;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'Frequent Bangs'**
  String get moduleFrequentBangs;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'Quote'**
  String get moduleQuote;

  /// Search module label
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get moduleQuickActions;

  /// Home module layout screen title
  ///
  /// In en, this message translates to:
  /// **'Customize Home'**
  String get customizeHome;

  /// New tab module layout screen title
  ///
  /// In en, this message translates to:
  /// **'Customize New Tab'**
  String get customizeNewTab;

  /// Search module layout screen title
  ///
  /// In en, this message translates to:
  /// **'Customize Search'**
  String get customizeSearch;

  /// Module layout screen explanatory text
  ///
  /// In en, this message translates to:
  /// **'Drag to reorder. Switch a section off to hide it here without affecting the other page.'**
  String get moduleSurfaceReorderDescription;

  /// Module layout reset action
  ///
  /// In en, this message translates to:
  /// **'Reset to Defaults'**
  String get resetToDefaults;

  /// Tracking protection exceptions screen title
  ///
  /// In en, this message translates to:
  /// **'Tracking Protection Exceptions'**
  String get trackingProtectionExceptions;

  /// Tracking protection exceptions search hint
  ///
  /// In en, this message translates to:
  /// **'Search exception URLs'**
  String get searchExceptionUrls;

  /// Delete all tracking protection exceptions action
  ///
  /// In en, this message translates to:
  /// **'Delete All'**
  String get deleteAll;

  /// Tracking protection exception list section title
  ///
  /// In en, this message translates to:
  /// **'Exception List'**
  String get exceptionList;

  /// Tracking protection exception entry subtitle
  ///
  /// In en, this message translates to:
  /// **'Site with tracking protection disabled'**
  String get siteWithTrackingProtectionDisabled;

  /// Tracking protection delete error
  ///
  /// In en, this message translates to:
  /// **'Failed to delete exceptions: {error}'**
  String failedToDeleteExceptions(String error);

  /// Tracking protection remove error
  ///
  /// In en, this message translates to:
  /// **'Failed to remove exception: {error}'**
  String failedToRemoveException(String error);

  /// Tracking protection exception remove tooltip
  ///
  /// In en, this message translates to:
  /// **'Remove exception'**
  String get removeException;

  /// Empty tracking protection exceptions title
  ///
  /// In en, this message translates to:
  /// **'No exceptions'**
  String get noExceptions;

  /// Empty tracking protection exceptions description
  ///
  /// In en, this message translates to:
  /// **'Sites added to exceptions will appear here'**
  String get exceptionSitesAppearHere;

  /// Tracking protection exceptions error state title
  ///
  /// In en, this message translates to:
  /// **'Error loading exceptions'**
  String get errorLoadingExceptions;

  /// Log level label
  ///
  /// In en, this message translates to:
  /// **'Fatal'**
  String get logLevelFatal;

  /// Log level label
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get logLevelAll;

  /// Log level label
  ///
  /// In en, this message translates to:
  /// **'Verbose'**
  String get logLevelVerbose;

  /// Log level label
  ///
  /// In en, this message translates to:
  /// **'Unexpected'**
  String get logLevelUnexpected;

  /// Log level label
  ///
  /// In en, this message translates to:
  /// **'Nothing'**
  String get logLevelNothing;

  /// Log level label
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get logLevelOff;

  /// No description provided for @accordion.
  ///
  /// In en, this message translates to:
  /// **'Accordion'**
  String get accordion;

  /// No description provided for @accordionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Expandable stacked tab groups'**
  String get accordionSubtitle;

  /// No description provided for @addBookmark.
  ///
  /// In en, this message translates to:
  /// **'Add Bookmark'**
  String get addBookmark;

  /// No description provided for @addChildTab.
  ///
  /// In en, this message translates to:
  /// **'Add Child Tab'**
  String get addChildTab;

  /// No description provided for @addIsolatedTab.
  ///
  /// In en, this message translates to:
  /// **'Add Isolated Tab'**
  String get addIsolatedTab;

  /// No description provided for @addPrivateTab.
  ///
  /// In en, this message translates to:
  /// **'Add Private Tab'**
  String get addPrivateTab;

  /// No description provided for @addRegularTab.
  ///
  /// In en, this message translates to:
  /// **'Add Regular Tab'**
  String get addRegularTab;

  /// No description provided for @addressBar.
  ///
  /// In en, this message translates to:
  /// **'Address Bar'**
  String get addressBar;

  /// No description provided for @allowLoginAppCallbacks.
  ///
  /// In en, this message translates to:
  /// **'Allow Login App Callbacks'**
  String get allowLoginAppCallbacks;

  /// No description provided for @allowLoginAppCallbacksSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Allow links that return to an app after browser login'**
  String get allowLoginAppCallbacksSubtitle;

  /// No description provided for @always.
  ///
  /// In en, this message translates to:
  /// **'Always'**
  String get always;

  /// No description provided for @alwaysKeepInBrowser.
  ///
  /// In en, this message translates to:
  /// **'Always keep in browser'**
  String get alwaysKeepInBrowser;

  /// No description provided for @alwaysOpenInApp.
  ///
  /// In en, this message translates to:
  /// **'Always open in app'**
  String get alwaysOpenInApp;

  /// No description provided for @alwaysOpenLinksInBrowser.
  ///
  /// In en, this message translates to:
  /// **'Always open links in browser'**
  String get alwaysOpenLinksInBrowser;

  /// No description provided for @alwaysOpenLinksInNativeApps.
  ///
  /// In en, this message translates to:
  /// **'Always open links in native apps'**
  String get alwaysOpenLinksInNativeApps;

  /// No description provided for @alwaysRequestDesktopSite.
  ///
  /// In en, this message translates to:
  /// **'Always Request Desktop Site'**
  String get alwaysRequestDesktopSite;

  /// No description provided for @alwaysRequestDesktopSiteSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Open new tabs in desktop mode by default'**
  String get alwaysRequestDesktopSiteSubtitle;

  /// No description provided for @askBeforeOpening.
  ///
  /// In en, this message translates to:
  /// **'Ask before opening'**
  String get askBeforeOpening;

  /// No description provided for @askBeforeOpeningLinksInAppsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Ask before opening links in native apps'**
  String get askBeforeOpeningLinksInAppsSubtitle;

  /// No description provided for @askHowBookmarkOpens.
  ///
  /// In en, this message translates to:
  /// **'Ask how the bookmark should open'**
  String get askHowBookmarkOpens;

  /// No description provided for @askHowExternalLinksOpen.
  ///
  /// In en, this message translates to:
  /// **'Ask how external links should open'**
  String get askHowExternalLinksOpen;

  /// No description provided for @autoHideTabBar.
  ///
  /// In en, this message translates to:
  /// **'Auto-Hide Tab Bar'**
  String get autoHideTabBar;

  /// No description provided for @autoHideTabBarSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Hide the tab bar while scrolling pages'**
  String get autoHideTabBarSubtitle;

  /// No description provided for @background.
  ///
  /// In en, this message translates to:
  /// **'Background'**
  String get background;

  /// No description provided for @backgroundTabBehavior.
  ///
  /// In en, this message translates to:
  /// **'Background Tab Behavior'**
  String get backgroundTabBehavior;

  /// No description provided for @backgroundTabBehaviorSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose what happens after a tab opens in the background'**
  String get backgroundTabBehaviorSubtitle;

  /// No description provided for @bookmark.
  ///
  /// In en, this message translates to:
  /// **'Bookmark'**
  String get bookmark;

  /// No description provided for @bookmarkOpenBehavior.
  ///
  /// In en, this message translates to:
  /// **'Bookmark Open Behavior'**
  String get bookmarkOpenBehavior;

  /// No description provided for @bookmarkOpenBehaviorSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose how tapping a bookmark opens it'**
  String get bookmarkOpenBehaviorSubtitle;

  /// No description provided for @bottomSheetTabView.
  ///
  /// In en, this message translates to:
  /// **'Bottom Sheet'**
  String get bottomSheetTabView;

  /// No description provided for @bottomSheetTabViewSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show tabs in a bottom sheet'**
  String get bottomSheetTabViewSubtitle;

  /// No description provided for @browsingNavigationSection.
  ///
  /// In en, this message translates to:
  /// **'Navigation'**
  String get browsingNavigationSection;

  /// No description provided for @browsingSettings.
  ///
  /// In en, this message translates to:
  /// **'Browsing'**
  String get browsingSettings;

  /// No description provided for @browsingSettingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tabs, navigation, app links, and Small Web behavior.'**
  String get browsingSettingsSubtitle;

  /// No description provided for @browsingTabsSection.
  ///
  /// In en, this message translates to:
  /// **'Tabs'**
  String get browsingTabsSection;

  /// No description provided for @cloneAsIsolated.
  ///
  /// In en, this message translates to:
  /// **'Clone as Isolated'**
  String get cloneAsIsolated;

  /// No description provided for @cloneAsPrivate.
  ///
  /// In en, this message translates to:
  /// **'Clone as Private'**
  String get cloneAsPrivate;

  /// No description provided for @cloneAsRegular.
  ///
  /// In en, this message translates to:
  /// **'Clone as Regular'**
  String get cloneAsRegular;

  /// No description provided for @closeButtonsOnAllTabs.
  ///
  /// In en, this message translates to:
  /// **'Close Buttons on All Tabs'**
  String get closeButtonsOnAllTabs;

  /// No description provided for @closeButtonsOnAllTabsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show a close button on every tab'**
  String get closeButtonsOnAllTabsSubtitle;

  /// No description provided for @closeFromSameHost.
  ///
  /// In en, this message translates to:
  /// **'Close from Same Host'**
  String get closeFromSameHost;

  /// No description provided for @closeOthers.
  ///
  /// In en, this message translates to:
  /// **'Close Others'**
  String get closeOthers;

  /// No description provided for @compact.
  ///
  /// In en, this message translates to:
  /// **'Compact'**
  String get compact;

  /// No description provided for @compactTabBarSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A single compact row of tabs'**
  String get compactTabBarSubtitle;

  /// No description provided for @containerTabs.
  ///
  /// In en, this message translates to:
  /// **'Container Tabs'**
  String get containerTabs;

  /// No description provided for @containerTabsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Group tabs by container'**
  String get containerTabsSubtitle;

  /// No description provided for @contextualToolbarSection.
  ///
  /// In en, this message translates to:
  /// **'Contextual Toolbar'**
  String get contextualToolbarSection;

  /// No description provided for @continueIntoNextContainer.
  ///
  /// In en, this message translates to:
  /// **'Continue into Next Container'**
  String get continueIntoNextContainer;

  /// No description provided for @continueIntoNextContainerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Move to the next container after its last tab'**
  String get continueIntoNextContainerSubtitle;

  /// No description provided for @createChildTabs.
  ///
  /// In en, this message translates to:
  /// **'Create Child Tabs'**
  String get createChildTabs;

  /// No description provided for @createChildTabsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Open links from tabs in the same container context'**
  String get createChildTabsSubtitle;

  /// No description provided for @customTab.
  ///
  /// In en, this message translates to:
  /// **'Custom Tab'**
  String get customTab;

  /// No description provided for @customTabsBrowsingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Control how WebLibre handles Android custom tabs'**
  String get customTabsBrowsingSubtitle;

  /// No description provided for @customizeSwitcherButtons.
  ///
  /// In en, this message translates to:
  /// **'Customize Switcher Buttons'**
  String get customizeSwitcherButtons;

  /// No description provided for @customizeSwitcherButtonsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose buttons shown in the quick tab switcher'**
  String get customizeSwitcherButtonsSubtitle;

  /// No description provided for @customizeToolbarButtons.
  ///
  /// In en, this message translates to:
  /// **'Customize Toolbar Buttons'**
  String get customizeToolbarButtons;

  /// No description provided for @customizeToolbarButtonsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose and arrange contextual toolbar buttons'**
  String get customizeToolbarButtonsSubtitle;

  /// No description provided for @decreaseFont.
  ///
  /// In en, this message translates to:
  /// **'Decrease Font'**
  String get decreaseFont;

  /// No description provided for @desktopModeSection.
  ///
  /// In en, this message translates to:
  /// **'Desktop Mode'**
  String get desktopModeSection;

  /// No description provided for @desktopModeSitesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sites that always load in desktop mode'**
  String get desktopModeSitesSubtitle;

  /// No description provided for @disableGestures.
  ///
  /// In en, this message translates to:
  /// **'Disable gestures'**
  String get disableGestures;

  /// No description provided for @doubleBackToCloseTab.
  ///
  /// In en, this message translates to:
  /// **'Double Back to Close Tab'**
  String get doubleBackToCloseTab;

  /// No description provided for @doubleBackToCloseTabSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Require double back press before closing the current tab'**
  String get doubleBackToCloseTabSubtitle;

  /// No description provided for @duplicateTab.
  ///
  /// In en, this message translates to:
  /// **'Duplicate Tab'**
  String get duplicateTab;

  /// No description provided for @enableGestures.
  ///
  /// In en, this message translates to:
  /// **'Enable gestures'**
  String get enableGestures;

  /// No description provided for @extensionsMenu.
  ///
  /// In en, this message translates to:
  /// **'Extensions Menu'**
  String get extensionsMenu;

  /// No description provided for @externalLinkHandling.
  ///
  /// In en, this message translates to:
  /// **'External Link Handling'**
  String get externalLinkHandling;

  /// No description provided for @externalLinkHandlingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose how external links open in WebLibre'**
  String get externalLinkHandlingSubtitle;

  /// No description provided for @externalLinksSection.
  ///
  /// In en, this message translates to:
  /// **'External Links'**
  String get externalLinksSection;

  /// No description provided for @hardRefreshBypassCache.
  ///
  /// In en, this message translates to:
  /// **'Hard Refresh (bypass cache)'**
  String get hardRefreshBypassCache;

  /// No description provided for @hideQuickTabSwitcherBar.
  ///
  /// In en, this message translates to:
  /// **'Hide Quick Tab Switcher Bar'**
  String get hideQuickTabSwitcherBar;

  /// No description provided for @hideTabBar.
  ///
  /// In en, this message translates to:
  /// **'Hide Tab Bar'**
  String get hideTabBar;

  /// No description provided for @historyMenuForwardPages.
  ///
  /// In en, this message translates to:
  /// **'History Menu (Forward pages)'**
  String get historyMenuForwardPages;

  /// No description provided for @historyMenuPreviousPages.
  ///
  /// In en, this message translates to:
  /// **'History Menu (Previous pages)'**
  String get historyMenuPreviousPages;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @homeScreenSection.
  ///
  /// In en, this message translates to:
  /// **'Home Screen'**
  String get homeScreenSection;

  /// No description provided for @increaseFont.
  ///
  /// In en, this message translates to:
  /// **'Increase Font'**
  String get increaseFont;

  /// No description provided for @installSitesAsApps.
  ///
  /// In en, this message translates to:
  /// **'Install Sites as Apps'**
  String get installSitesAsApps;

  /// No description provided for @installSitesAsAppsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Allow websites without a manifest to be installed as apps'**
  String get installSitesAsAppsSubtitle;

  /// No description provided for @livePreview.
  ///
  /// In en, this message translates to:
  /// **'Live Preview'**
  String get livePreview;

  /// No description provided for @livePreviewSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Preview toolbar and layout changes'**
  String get livePreviewSubtitle;

  /// No description provided for @longPressUrlToCopy.
  ///
  /// In en, this message translates to:
  /// **'Long Press URL to Copy'**
  String get longPressUrlToCopy;

  /// No description provided for @longPressUrlToCopySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Copy the current URL by long-pressing the address bar'**
  String get longPressUrlToCopySubtitle;

  /// No description provided for @loopAround.
  ///
  /// In en, this message translates to:
  /// **'Loop Around'**
  String get loopAround;

  /// No description provided for @loopAroundSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Continue from the other end after the first or last tab'**
  String get loopAroundSubtitle;

  /// No description provided for @menu.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menu;

  /// No description provided for @navigateSequentialTabs.
  ///
  /// In en, this message translates to:
  /// **'Navigate Sequential Tabs'**
  String get navigateSequentialTabs;

  /// No description provided for @navigateSequentialTabsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Move to the adjacent tab'**
  String get navigateSequentialTabsSubtitle;

  /// No description provided for @never.
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get never;

  /// No description provided for @newTabDefault.
  ///
  /// In en, this message translates to:
  /// **'New Tab Default'**
  String get newTabDefault;

  /// No description provided for @newTabDefaultSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose the default type for manually created tabs'**
  String get newTabDefaultSubtitle;

  /// No description provided for @newestFirst.
  ///
  /// In en, this message translates to:
  /// **'Newest first'**
  String get newestFirst;

  /// No description provided for @off.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get off;

  /// No description provided for @offerAppStoreFallback.
  ///
  /// In en, this message translates to:
  /// **'Offer App Store Fallback'**
  String get offerAppStoreFallback;

  /// No description provided for @offerAppStoreFallbackSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Offer to find an app when no installed app can open a link'**
  String get offerAppStoreFallbackSubtitle;

  /// No description provided for @oldestFirst.
  ///
  /// In en, this message translates to:
  /// **'Oldest first'**
  String get oldestFirst;

  /// No description provided for @openBookmarkCustomTab.
  ///
  /// In en, this message translates to:
  /// **'Open the bookmark in a custom tab'**
  String get openBookmarkCustomTab;

  /// No description provided for @openBookmarkIsolatedTab.
  ///
  /// In en, this message translates to:
  /// **'Open the bookmark in an isolated tab'**
  String get openBookmarkIsolatedTab;

  /// No description provided for @openBookmarkPrivateTab.
  ///
  /// In en, this message translates to:
  /// **'Open the bookmark in a private tab'**
  String get openBookmarkPrivateTab;

  /// No description provided for @openBookmarkRegularTab.
  ///
  /// In en, this message translates to:
  /// **'Open the bookmark in a regular tab'**
  String get openBookmarkRegularTab;

  /// No description provided for @openBookmarks.
  ///
  /// In en, this message translates to:
  /// **'Open Bookmarks'**
  String get openBookmarks;

  /// No description provided for @openExternalLinksIsolatedTab.
  ///
  /// In en, this message translates to:
  /// **'Open external links in an isolated tab'**
  String get openExternalLinksIsolatedTab;

  /// No description provided for @openExternalLinksPrivateTab.
  ///
  /// In en, this message translates to:
  /// **'Open external links in a private tab'**
  String get openExternalLinksPrivateTab;

  /// No description provided for @openExternalLinksRegularTab.
  ///
  /// In en, this message translates to:
  /// **'Open external links in a regular tab'**
  String get openExternalLinksRegularTab;

  /// No description provided for @openLinksInApps.
  ///
  /// In en, this message translates to:
  /// **'Open Links in Apps'**
  String get openLinksInApps;

  /// No description provided for @openLinksInAppsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose how external app links open'**
  String get openLinksInAppsSubtitle;

  /// No description provided for @openSettings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get openSettings;

  /// No description provided for @pageDown.
  ///
  /// In en, this message translates to:
  /// **'Page Down'**
  String get pageDown;

  /// No description provided for @pageUp.
  ///
  /// In en, this message translates to:
  /// **'Page Up'**
  String get pageUp;

  /// No description provided for @positionBottom.
  ///
  /// In en, this message translates to:
  /// **'Bottom'**
  String get positionBottom;

  /// No description provided for @positionBottomSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Place the bar at the bottom'**
  String get positionBottomSubtitle;

  /// No description provided for @positionLeft.
  ///
  /// In en, this message translates to:
  /// **'Left'**
  String get positionLeft;

  /// No description provided for @positionRight.
  ///
  /// In en, this message translates to:
  /// **'Right'**
  String get positionRight;

  /// No description provided for @positionTop.
  ///
  /// In en, this message translates to:
  /// **'Top'**
  String get positionTop;

  /// No description provided for @positionTopSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Place the bar at the top'**
  String get positionTopSubtitle;

  /// No description provided for @previewBank.
  ///
  /// In en, this message translates to:
  /// **'Bank'**
  String get previewBank;

  /// No description provided for @previewNews.
  ///
  /// In en, this message translates to:
  /// **'News'**
  String get previewNews;

  /// No description provided for @previewPageContent.
  ///
  /// In en, this message translates to:
  /// **'Page content'**
  String get previewPageContent;

  /// No description provided for @prompt.
  ///
  /// In en, this message translates to:
  /// **'Prompt'**
  String get prompt;

  /// No description provided for @pullToRefresh.
  ///
  /// In en, this message translates to:
  /// **'Pull to Refresh'**
  String get pullToRefresh;

  /// No description provided for @pullToRefreshSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Swipe down on pages to reload them'**
  String get pullToRefreshSubtitle;

  /// No description provided for @quickSwitcherHierarchyDepth.
  ///
  /// In en, this message translates to:
  /// **'Quick Switcher Hierarchy Depth'**
  String get quickSwitcherHierarchyDepth;

  /// No description provided for @quickSwitcherHierarchyDepthSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose how many tab hierarchy levels to show'**
  String get quickSwitcherHierarchyDepthSubtitle;

  /// No description provided for @quickSwitcherHierarchyLevelCount.
  ///
  /// In en, this message translates to:
  /// **'{count} levels'**
  String quickSwitcherHierarchyLevelCount(int count);

  /// No description provided for @quickSwitcherHistoryFallback.
  ///
  /// In en, this message translates to:
  /// **'Quick Switcher History Fallback'**
  String get quickSwitcherHistoryFallback;

  /// No description provided for @quickSwitcherHistoryFallbackSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Use recently visited tabs when hierarchy has no match'**
  String get quickSwitcherHistoryFallbackSubtitle;

  /// No description provided for @quickSwitcherTitleWidth.
  ///
  /// In en, this message translates to:
  /// **'Quick Switcher Title Width'**
  String get quickSwitcherTitleWidth;

  /// No description provided for @quickSwitcherTitleWidthSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose how much space tab titles use'**
  String get quickSwitcherTitleWidthSubtitle;

  /// No description provided for @quickTabSwitcherSection.
  ///
  /// In en, this message translates to:
  /// **'Quick Tab Switcher'**
  String get quickTabSwitcherSection;

  /// No description provided for @quit.
  ///
  /// In en, this message translates to:
  /// **'Quit'**
  String get quit;

  /// No description provided for @quitWithoutConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Quit without confirmation'**
  String get quitWithoutConfirmation;

  /// No description provided for @readerMode.
  ///
  /// In en, this message translates to:
  /// **'Reader Mode'**
  String get readerMode;

  /// No description provided for @recentlyUsedTabs.
  ///
  /// In en, this message translates to:
  /// **'Recently Used Tabs'**
  String get recentlyUsedTabs;

  /// No description provided for @recentlyUsedTabsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show recently used tabs in the quick switcher'**
  String get recentlyUsedTabsSubtitle;

  /// No description provided for @rememberedSiteRules.
  ///
  /// In en, this message translates to:
  /// **'Remembered Site Rules'**
  String get rememberedSiteRules;

  /// No description provided for @removeBookmark.
  ///
  /// In en, this message translates to:
  /// **'Remove Bookmark'**
  String get removeBookmark;

  /// No description provided for @removeRule.
  ///
  /// In en, this message translates to:
  /// **'Remove rule'**
  String get removeRule;

  /// No description provided for @scrollToBottom.
  ///
  /// In en, this message translates to:
  /// **'Scroll to Bottom'**
  String get scrollToBottom;

  /// No description provided for @scrollToTop.
  ///
  /// In en, this message translates to:
  /// **'Scroll to Top'**
  String get scrollToTop;

  /// No description provided for @searchToolbarLayoutSettings.
  ///
  /// In en, this message translates to:
  /// **'Search toolbar and layout settings'**
  String get searchToolbarLayoutSettings;

  /// No description provided for @sequentialTabNavigation.
  ///
  /// In en, this message translates to:
  /// **'Sequential Tab Navigation'**
  String get sequentialTabNavigation;

  /// No description provided for @sequentialTabNavigationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose where stepping through tabs in order ends'**
  String get sequentialTabNavigationSubtitle;

  /// No description provided for @showContainerUi.
  ///
  /// In en, this message translates to:
  /// **'Show Container UI'**
  String get showContainerUi;

  /// No description provided for @showContainerUiSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show container selectors, menus, and management'**
  String get showContainerUiSubtitle;

  /// No description provided for @showContextualToolbar.
  ///
  /// In en, this message translates to:
  /// **'Show Contextual Toolbar'**
  String get showContextualToolbar;

  /// No description provided for @showContextualToolbarSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show the contextual toolbar while browsing'**
  String get showContextualToolbarSubtitle;

  /// No description provided for @showFaviconsInListView.
  ///
  /// In en, this message translates to:
  /// **'Show Favicons in List View'**
  String get showFaviconsInListView;

  /// No description provided for @showFaviconsInListViewSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Display site icons beside tabs'**
  String get showFaviconsInListViewSubtitle;

  /// No description provided for @showIsolatedTabUi.
  ///
  /// In en, this message translates to:
  /// **'Show Isolated Tab UI'**
  String get showIsolatedTabUi;

  /// No description provided for @showIsolatedTabUiSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show isolated-tab creation options in the UI'**
  String get showIsolatedTabUiSubtitle;

  /// No description provided for @showTitlesInQuickTabSwitcher.
  ///
  /// In en, this message translates to:
  /// **'Show Titles in Quick Tab Switcher'**
  String get showTitlesInQuickTabSwitcher;

  /// No description provided for @showTitlesInQuickTabSwitcherSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Display tab titles in the quick switcher'**
  String get showTitlesInQuickTabSwitcherSubtitle;

  /// No description provided for @showTranslationOptions.
  ///
  /// In en, this message translates to:
  /// **'Show Translation Options'**
  String get showTranslationOptions;

  /// No description provided for @smallWebTabDefault.
  ///
  /// In en, this message translates to:
  /// **'Small Web Tab Default'**
  String get smallWebTabDefault;

  /// No description provided for @smallWebTabDefaultSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose the tab type used when entering Small Web'**
  String get smallWebTabDefaultSubtitle;

  /// No description provided for @stayAndOfferToSwitch.
  ///
  /// In en, this message translates to:
  /// **'Stay and Offer to Switch'**
  String get stayAndOfferToSwitch;

  /// No description provided for @stayAndOfferToSwitchSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Stay on the current tab and offer to switch'**
  String get stayAndOfferToSwitchSubtitle;

  /// No description provided for @switchImmediately.
  ///
  /// In en, this message translates to:
  /// **'Switch Immediately'**
  String get switchImmediately;

  /// No description provided for @switchImmediatelySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Switch to the newly opened background tab'**
  String get switchImmediatelySubtitle;

  /// No description provided for @switchToLastUsedTab.
  ///
  /// In en, this message translates to:
  /// **'Switch to Last Used Tab'**
  String get switchToLastUsedTab;

  /// No description provided for @switchToLastUsedTabSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Return to the previously used tab'**
  String get switchToLastUsedTabSubtitle;

  /// No description provided for @tabBarDirection.
  ///
  /// In en, this message translates to:
  /// **'Tab Bar Direction'**
  String get tabBarDirection;

  /// No description provided for @tabBarDirectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose how tabs are ordered in the tab bar'**
  String get tabBarDirectionSubtitle;

  /// No description provided for @tabBarPosition.
  ///
  /// In en, this message translates to:
  /// **'Tab Bar Position'**
  String get tabBarPosition;

  /// No description provided for @tabBarPositionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose where the tab bar appears'**
  String get tabBarPositionSubtitle;

  /// No description provided for @tabBarSection.
  ///
  /// In en, this message translates to:
  /// **'Tab Bar'**
  String get tabBarSection;

  /// No description provided for @tabBarStyle.
  ///
  /// In en, this message translates to:
  /// **'Tab Bar Style'**
  String get tabBarStyle;

  /// No description provided for @tabBarStyleSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose the tab bar layout'**
  String get tabBarStyleSubtitle;

  /// No description provided for @tabBarSwipeBehavior.
  ///
  /// In en, this message translates to:
  /// **'Tab Bar Swipe Behavior'**
  String get tabBarSwipeBehavior;

  /// No description provided for @tabBarSwipeBehaviorSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose what horizontal swipes on the tab bar do'**
  String get tabBarSwipeBehaviorSubtitle;

  /// No description provided for @tabListDirection.
  ///
  /// In en, this message translates to:
  /// **'Tab List Direction'**
  String get tabListDirection;

  /// No description provided for @tabListDirectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose how tabs are ordered in the list view'**
  String get tabListDirectionSubtitle;

  /// No description provided for @tabStacking.
  ///
  /// In en, this message translates to:
  /// **'Tab Stacking'**
  String get tabStacking;

  /// No description provided for @tabStackingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose how tabs are grouped and displayed'**
  String get tabStackingSubtitle;

  /// No description provided for @tabTypeIsolated.
  ///
  /// In en, this message translates to:
  /// **'Isolated'**
  String get tabTypeIsolated;

  /// No description provided for @tabTypePrivate.
  ///
  /// In en, this message translates to:
  /// **'Private'**
  String get tabTypePrivate;

  /// No description provided for @tabTypeRegular.
  ///
  /// In en, this message translates to:
  /// **'Regular'**
  String get tabTypeRegular;

  /// No description provided for @tabViewSection.
  ///
  /// In en, this message translates to:
  /// **'Tab View'**
  String get tabViewSection;

  /// No description provided for @tabs.
  ///
  /// In en, this message translates to:
  /// **'Tabs'**
  String get tabs;

  /// No description provided for @textSize.
  ///
  /// In en, this message translates to:
  /// **'Text Size'**
  String get textSize;

  /// No description provided for @twoRows.
  ///
  /// In en, this message translates to:
  /// **'Two Rows'**
  String get twoRows;

  /// No description provided for @twoRowsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show tabs across two rows'**
  String get twoRowsSubtitle;

  /// No description provided for @unshortener.
  ///
  /// In en, this message translates to:
  /// **'Unshortener'**
  String get unshortener;

  /// No description provided for @unshortenerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Short link resolver and API token'**
  String get unshortenerSubtitle;

  /// No description provided for @urlCleanerBrowsingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tracking removal rules and catalog updates'**
  String get urlCleanerBrowsingSubtitle;

  /// No description provided for @verticalSideRailSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show tabs in a vertical side rail'**
  String get verticalSideRailSubtitle;

  /// No description provided for @webLibrePreview.
  ///
  /// In en, this message translates to:
  /// **'WebLibre Preview'**
  String get webLibrePreview;

  /// No description provided for @withTitle.
  ///
  /// In en, this message translates to:
  /// **'With Title'**
  String get withTitle;

  /// No description provided for @withTitleSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Show tab titles in the tab bar'**
  String get withTitleSubtitle;

  /// No description provided for @addExternalFilterList.
  ///
  /// In en, this message translates to:
  /// **'Add external filter list'**
  String get addExternalFilterList;

  /// No description provided for @addExternalList.
  ///
  /// In en, this message translates to:
  /// **'Add external list'**
  String get addExternalList;

  /// No description provided for @ads.
  ///
  /// In en, this message translates to:
  /// **'Ads'**
  String get ads;

  /// No description provided for @adsAnalyticsAndSocialTrackers.
  ///
  /// In en, this message translates to:
  /// **'Ads, Analytics, and Social Trackers'**
  String get adsAnalyticsAndSocialTrackers;

  /// No description provided for @adsAnalyticsAndSocialTrackersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Block advertising, analytics, social, and Mozilla social tracker categories'**
  String get adsAnalyticsAndSocialTrackersSubtitle;

  /// No description provided for @advancedFingerprintingProtection.
  ///
  /// In en, this message translates to:
  /// **'Advanced Fingerprinting Protection'**
  String get advancedFingerprintingProtection;

  /// No description provided for @advancedSecurity.
  ///
  /// In en, this message translates to:
  /// **'Advanced Security'**
  String get advancedSecurity;

  /// No description provided for @allCookiesMayBreakSites.
  ///
  /// In en, this message translates to:
  /// **'All cookies (may break sites)'**
  String get allCookiesMayBreakSites;

  /// No description provided for @allTabs.
  ///
  /// In en, this message translates to:
  /// **'All tabs'**
  String get allTabs;

  /// No description provided for @allThirdPartyCookies.
  ///
  /// In en, this message translates to:
  /// **'All third-party cookies'**
  String get allThirdPartyCookies;

  /// No description provided for @allowlistExceptions.
  ///
  /// In en, this message translates to:
  /// **'Allowlist exceptions'**
  String get allowlistExceptions;

  /// No description provided for @allowlistExceptionsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Compatibility exceptions for major and minor website issues'**
  String get allowlistExceptionsSubtitle;

  /// No description provided for @alreadyAdded.
  ///
  /// In en, this message translates to:
  /// **'Already added'**
  String get alreadyAdded;

  /// No description provided for @alwaysAllowed.
  ///
  /// In en, this message translates to:
  /// **'Always allowed'**
  String get alwaysAllowed;

  /// No description provided for @alwaysBlocked.
  ///
  /// In en, this message translates to:
  /// **'Always blocked'**
  String get alwaysBlocked;

  /// No description provided for @annoyances.
  ///
  /// In en, this message translates to:
  /// **'Annoyances'**
  String get annoyances;

  /// No description provided for @appOpeningProtection.
  ///
  /// In en, this message translates to:
  /// **'App-Opening Protection'**
  String get appOpeningProtection;

  /// No description provided for @appPolicyWithPackage.
  ///
  /// In en, this message translates to:
  /// **'{policy} · {packageName}'**
  String appPolicyWithPackage(Object policy, Object packageName);

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @applyTo.
  ///
  /// In en, this message translates to:
  /// **'Apply to'**
  String get applyTo;

  /// No description provided for @applyWebLibreHardenings.
  ///
  /// In en, this message translates to:
  /// **'Apply WebLibre Hardenings'**
  String get applyWebLibreHardenings;

  /// No description provided for @applyWebLibreHardeningsDescription.
  ///
  /// In en, this message translates to:
  /// **'This will enable a curated set of additional filter lists and add a legitimate URL shortener list as an external list.'**
  String get applyWebLibreHardeningsDescription;

  /// No description provided for @applyWebLibreHardeningsQuestion.
  ///
  /// In en, this message translates to:
  /// **'Apply WebLibre Hardenings?'**
  String get applyWebLibreHardeningsQuestion;

  /// No description provided for @applyWebLibreHardeningsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enable a curated set of additional filter lists.'**
  String get applyWebLibreHardeningsSubtitle;

  /// No description provided for @autoClearHistory.
  ///
  /// In en, this message translates to:
  /// **'Auto-Clear History'**
  String get autoClearHistory;

  /// No description provided for @autoClearHistorySummary.
  ///
  /// In en, this message translates to:
  /// **'Automatically delete browsing history older than the selected time period'**
  String get autoClearHistorySummary;

  /// No description provided for @autoClearUnassignedTabs.
  ///
  /// In en, this message translates to:
  /// **'Auto-Clear Unassigned Tabs'**
  String get autoClearUnassignedTabs;

  /// No description provided for @autoClearUnassignedTabsSummary.
  ///
  /// In en, this message translates to:
  /// **'Automatically close unassigned tabs older than the selected time period'**
  String get autoClearUnassignedTabsSummary;

  /// No description provided for @autoSelectLanguages.
  ///
  /// In en, this message translates to:
  /// **'Auto-select languages'**
  String get autoSelectLanguages;

  /// No description provided for @autoSelectLanguagesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enable regional filter lists matching your device languages.'**
  String get autoSelectLanguagesSubtitle;

  /// No description provided for @autoSelectedForLanguage.
  ///
  /// In en, this message translates to:
  /// **'Auto-selected for your language'**
  String get autoSelectedForLanguage;

  /// No description provided for @block.
  ///
  /// In en, this message translates to:
  /// **'Block'**
  String get block;

  /// No description provided for @blockAppsFromOpeningBrowser.
  ///
  /// In en, this message translates to:
  /// **'Block apps from opening your browser'**
  String get blockAppsFromOpeningBrowser;

  /// No description provided for @blockAppsFromOpeningBrowserSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Ask before opening links that other apps send to WebLibre.'**
  String get blockAppsFromOpeningBrowserSubtitle;

  /// No description provided for @blockAppsFromOpeningBrowserSummary.
  ///
  /// In en, this message translates to:
  /// **'Ask before opening links from other apps'**
  String get blockAppsFromOpeningBrowserSummary;

  /// No description provided for @blockCookies.
  ///
  /// In en, this message translates to:
  /// **'Block Cookies'**
  String get blockCookies;

  /// No description provided for @blockCookiesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Block cookies based on the policy below'**
  String get blockCookiesSubtitle;

  /// No description provided for @blockInsecureHttpConnections.
  ///
  /// In en, this message translates to:
  /// **'Block insecure HTTP connections'**
  String get blockInsecureHttpConnections;

  /// No description provided for @blockInsecureHttpConnectionsSummary.
  ///
  /// In en, this message translates to:
  /// **'Require secure HTTPS connections'**
  String get blockInsecureHttpConnectionsSummary;

  /// No description provided for @blockLocalNetworkRequests.
  ///
  /// In en, this message translates to:
  /// **'Block Local Network Requests'**
  String get blockLocalNetworkRequests;

  /// No description provided for @blockLocalNetworkRequestsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Block web page requests to local network addresses'**
  String get blockLocalNetworkRequestsSubtitle;

  /// No description provided for @blockLocalNetworkRequestsSummary.
  ///
  /// In en, this message translates to:
  /// **'Block requests to local network addresses'**
  String get blockLocalNetworkRequestsSummary;

  /// No description provided for @blockLocalNetworkTrackers.
  ///
  /// In en, this message translates to:
  /// **'Block Local Network Trackers'**
  String get blockLocalNetworkTrackers;

  /// No description provided for @blockLocalNetworkTrackersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Block trackers from accessing local network resources'**
  String get blockLocalNetworkTrackersSubtitle;

  /// No description provided for @blockLocalNetworkTrackersSummary.
  ///
  /// In en, this message translates to:
  /// **'Block trackers accessing local resources'**
  String get blockLocalNetworkTrackersSummary;

  /// No description provided for @blockTrackingContent.
  ///
  /// In en, this message translates to:
  /// **'Block Tracking Content'**
  String get blockTrackingContent;

  /// No description provided for @blockTrackingContentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Block tracking scripts and resources embedded in websites'**
  String get blockTrackingContentSubtitle;

  /// No description provided for @bounceTrackingProtection.
  ///
  /// In en, this message translates to:
  /// **'Bounce Tracking Protection'**
  String get bounceTrackingProtection;

  /// No description provided for @bounceTrackingProtectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Blocks redirect trackers that collect data through intermediate URL redirects between websites'**
  String get bounceTrackingProtectionSubtitle;

  /// No description provided for @bounceTrackingProtectionSummary.
  ///
  /// In en, this message translates to:
  /// **'Block trackers using intermediate redirects'**
  String get bounceTrackingProtectionSummary;

  /// No description provided for @cachedImagesAndFiles.
  ///
  /// In en, this message translates to:
  /// **'Cached images and files'**
  String get cachedImagesAndFiles;

  /// No description provided for @cachedImagesAndFilesDescription.
  ///
  /// In en, this message translates to:
  /// **'Cached images and files'**
  String get cachedImagesAndFilesDescription;

  /// No description provided for @chooseLanguagesWebsitesCanSee.
  ///
  /// In en, this message translates to:
  /// **'Choose languages websites can see'**
  String get chooseLanguagesWebsitesCanSee;

  /// No description provided for @chooseTrackingProtectionAggressiveness.
  ///
  /// In en, this message translates to:
  /// **'Choose tracking protection aggressiveness'**
  String get chooseTrackingProtectionAggressiveness;

  /// No description provided for @completeHardening.
  ///
  /// In en, this message translates to:
  /// **'Complete Hardening'**
  String get completeHardening;

  /// No description provided for @completeHardeningSearchTerms.
  ///
  /// In en, this message translates to:
  /// **'overview complete hardening apply reset all grouped hardening preferences'**
  String get completeHardeningSearchTerms;

  /// No description provided for @completeHardeningSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Apply or reset all grouped hardening preferences'**
  String get completeHardeningSubtitle;

  /// No description provided for @completeHardeningToggleSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Toggle all grouped hardening preferences at once.'**
  String get completeHardeningToggleSubtitle;

  /// No description provided for @configureBrowserLanguagesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Configure language preferences exposed to websites'**
  String get configureBrowserLanguagesSubtitle;

  /// No description provided for @connectionSecurity.
  ///
  /// In en, this message translates to:
  /// **'Connection Security'**
  String get connectionSecurity;

  /// No description provided for @contentBlockingDatabase.
  ///
  /// In en, this message translates to:
  /// **'Content Blocking Database'**
  String get contentBlockingDatabase;

  /// No description provided for @contentBlockingDatabaseSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage the tracker and ad blocking database'**
  String get contentBlockingDatabaseSubtitle;

  /// No description provided for @contentBlockingDatabaseSummary.
  ///
  /// In en, this message translates to:
  /// **'Tracker and ad blocking database'**
  String get contentBlockingDatabaseSummary;

  /// No description provided for @cookieBlockingModeAndPolicySelection.
  ///
  /// In en, this message translates to:
  /// **'Cookie blocking mode and policy selection'**
  String get cookieBlockingModeAndPolicySelection;

  /// No description provided for @cookieNotices.
  ///
  /// In en, this message translates to:
  /// **'Cookie Notices'**
  String get cookieNotices;

  /// No description provided for @cookiePolicy.
  ///
  /// In en, this message translates to:
  /// **'Cookie Policy'**
  String get cookiePolicy;

  /// No description provided for @cookiesAndSiteData.
  ///
  /// In en, this message translates to:
  /// **'Cookies and site data'**
  String get cookiesAndSiteData;

  /// No description provided for @cookiesAndSiteDataDescription.
  ///
  /// In en, this message translates to:
  /// **'Cookies and site data'**
  String get cookiesAndSiteDataDescription;

  /// No description provided for @couldNotLoadPreferenceSettings.
  ///
  /// In en, this message translates to:
  /// **'Could not load preference settings'**
  String get couldNotLoadPreferenceSettings;

  /// No description provided for @crossSiteAndSocialMediaTrackers.
  ///
  /// In en, this message translates to:
  /// **'Cross-site and social media trackers'**
  String get crossSiteAndSocialMediaTrackers;

  /// No description provided for @cryptominers.
  ///
  /// In en, this message translates to:
  /// **'Cryptominers'**
  String get cryptominers;

  /// No description provided for @cryptominersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Block scripts that use your device to mine cryptocurrency'**
  String get cryptominersSubtitle;

  /// No description provided for @custom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get custom;

  /// No description provided for @customResolverUrl.
  ///
  /// In en, this message translates to:
  /// **'Custom Resolver URL'**
  String get customResolverUrl;

  /// No description provided for @customTrackingProtection.
  ///
  /// In en, this message translates to:
  /// **'Custom Tracking Protection'**
  String get customTrackingProtection;

  /// No description provided for @customTrackingProtectionChoiceSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose which tracking protections to enable'**
  String get customTrackingProtectionChoiceSubtitle;

  /// No description provided for @customTrackingProtectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Custom cookie, content, tracker, and fingerprinting controls.'**
  String get customTrackingProtectionSubtitle;

  /// No description provided for @dataManagement.
  ///
  /// In en, this message translates to:
  /// **'Data Management'**
  String get dataManagement;

  /// No description provided for @defaultFilterLists.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultFilterLists;

  /// No description provided for @defaultOn.
  ///
  /// In en, this message translates to:
  /// **'Default on'**
  String get defaultOn;

  /// No description provided for @defaultProtection.
  ///
  /// In en, this message translates to:
  /// **'Default Protection'**
  String get defaultProtection;

  /// No description provided for @defaultProtectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'DoH used only when default DNS fails'**
  String get defaultProtectionSubtitle;

  /// No description provided for @deleteBrowsingData.
  ///
  /// In en, this message translates to:
  /// **'Delete browsing data'**
  String get deleteBrowsingData;

  /// No description provided for @deleteBrowsingDataSummary.
  ///
  /// In en, this message translates to:
  /// **'Clear selected browsing data'**
  String get deleteBrowsingDataSummary;

  /// No description provided for @descriptionOptional.
  ///
  /// In en, this message translates to:
  /// **'Description (optional)'**
  String get descriptionOptional;

  /// No description provided for @dohProtectionLevelDescription.
  ///
  /// In en, this message translates to:
  /// **'Domain Name System (DNS) over HTTPS sends your request for a domain name through an encrypted connection, providing a secure DNS and making it harder for others to see which website you are about to access.'**
  String get dohProtectionLevelDescription;

  /// No description provided for @dohProvider.
  ///
  /// In en, this message translates to:
  /// **'DoH Provider'**
  String get dohProvider;

  /// No description provided for @dohResolverSettingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Protection level, provider choice, and custom resolver URL'**
  String get dohResolverSettingsSubtitle;

  /// No description provided for @dohSettingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Encrypted DNS protection level and resolver selection.'**
  String get dohSettingsSubtitle;

  /// No description provided for @durationDays.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{{count} day} other{{count} days}}'**
  String durationDays(int count);

  /// No description provided for @durationMonths.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{{count} month} other{{count} months}}'**
  String durationMonths(int count);

  /// No description provided for @durationWeeks.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{{count} week} other{{count} weeks}}'**
  String durationWeeks(int count);

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @editExternalFilterList.
  ///
  /// In en, this message translates to:
  /// **'Edit external filter list'**
  String get editExternalFilterList;

  /// No description provided for @enabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get enabled;

  /// No description provided for @encryptDnsLookups.
  ///
  /// In en, this message translates to:
  /// **'Encrypt DNS lookups'**
  String get encryptDnsLookups;

  /// No description provided for @extensionsWebApi.
  ///
  /// In en, this message translates to:
  /// **'Extensions Web API'**
  String get extensionsWebApi;

  /// No description provided for @extensionsWebApiSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enable mozAddonManager API exposure for web content and extension pages. Requires app restart.'**
  String get extensionsWebApiSubtitle;

  /// No description provided for @extensionsWebApiSummary.
  ///
  /// In en, this message translates to:
  /// **'Expose the extensions Web API'**
  String get extensionsWebApiSummary;

  /// No description provided for @externalListDescriptionHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Annoyances — myAuthor'**
  String get externalListDescriptionHint;

  /// No description provided for @externalListUrlHint.
  ///
  /// In en, this message translates to:
  /// **'https://example.com/list.txt'**
  String get externalListUrlHint;

  /// No description provided for @externalLists.
  ///
  /// In en, this message translates to:
  /// **'External Lists'**
  String get externalLists;

  /// No description provided for @externalListsRawUrlsNote.
  ///
  /// In en, this message translates to:
  /// **'Raw URLs are forwarded to uBlock Origin as external lists. Descriptions are only shown here in WebLibre.'**
  String get externalListsRawUrlsNote;

  /// No description provided for @failedToLoadFilterListAssets.
  ///
  /// In en, this message translates to:
  /// **'Failed to load filter list assets: {error}'**
  String failedToLoadFilterListAssets(Object error);

  /// No description provided for @filterLists.
  ///
  /// In en, this message translates to:
  /// **'Filter Lists'**
  String get filterLists;

  /// No description provided for @fingerprintProtection.
  ///
  /// In en, this message translates to:
  /// **'Fingerprint Protection'**
  String get fingerprintProtection;

  /// No description provided for @fingerprintProtectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Granular control over browser fingerprinting'**
  String get fingerprintProtectionSubtitle;

  /// No description provided for @fingerprinting.
  ///
  /// In en, this message translates to:
  /// **'Fingerprinting'**
  String get fingerprinting;

  /// No description provided for @fissionSiteIsolation.
  ///
  /// In en, this message translates to:
  /// **'Fission (Site Isolation)'**
  String get fissionSiteIsolation;

  /// No description provided for @fissionSiteIsolationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Isolates each site into a separate OS process for improved security. Requires app restart.'**
  String get fissionSiteIsolationSubtitle;

  /// No description provided for @fissionSiteIsolationSummary.
  ///
  /// In en, this message translates to:
  /// **'Isolate sites into separate processes'**
  String get fissionSiteIsolationSummary;

  /// No description provided for @fixWebsiteMajorIssues.
  ///
  /// In en, this message translates to:
  /// **'Fix website major issues'**
  String get fixWebsiteMajorIssues;

  /// No description provided for @fixWebsiteMajorIssuesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Apply exceptions required to avoid major website breakage (recommended)'**
  String get fixWebsiteMajorIssuesSubtitle;

  /// No description provided for @fixWebsiteMinorIssues.
  ///
  /// In en, this message translates to:
  /// **'Fix website minor issues'**
  String get fixWebsiteMinorIssues;

  /// No description provided for @fixWebsiteMinorIssuesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Apply exceptions to fix minor issues and enable convenience features'**
  String get fixWebsiteMinorIssuesSubtitle;

  /// No description provided for @globalPrivacyControl.
  ///
  /// In en, this message translates to:
  /// **'Global Privacy Control'**
  String get globalPrivacyControl;

  /// No description provided for @globalPrivacyControlSummary.
  ///
  /// In en, this message translates to:
  /// **'Tell websites not to sell or share your data'**
  String get globalPrivacyControlSummary;

  /// No description provided for @googleSafeBrowsing.
  ///
  /// In en, this message translates to:
  /// **'Google Safe Browsing'**
  String get googleSafeBrowsing;

  /// No description provided for @groupControls.
  ///
  /// In en, this message translates to:
  /// **'Group Controls'**
  String get groupControls;

  /// No description provided for @groupControlsCompleteHardening.
  ///
  /// In en, this message translates to:
  /// **'group controls complete hardening'**
  String get groupControlsCompleteHardening;

  /// No description provided for @hardeningGroups.
  ///
  /// In en, this message translates to:
  /// **'Hardening Groups'**
  String get hardeningGroups;

  /// No description provided for @incognitoMode.
  ///
  /// In en, this message translates to:
  /// **'Incognito Mode'**
  String get incognitoMode;

  /// No description provided for @incognitoModeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Use private browsing mode'**
  String get incognitoModeSubtitle;

  /// No description provided for @incognitoModeSummary.
  ///
  /// In en, this message translates to:
  /// **'Private browsing'**
  String get incognitoModeSummary;

  /// No description provided for @increasedProtection.
  ///
  /// In en, this message translates to:
  /// **'Increased Protection'**
  String get increasedProtection;

  /// No description provided for @increasedProtectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'DoH preferred, default DNS as fallback'**
  String get increasedProtectionSubtitle;

  /// No description provided for @invalidUrl.
  ///
  /// In en, this message translates to:
  /// **'Invalid URL'**
  String get invalidUrl;

  /// No description provided for @knownFingerprinters.
  ///
  /// In en, this message translates to:
  /// **'Known Fingerprinters'**
  String get knownFingerprinters;

  /// No description provided for @knownFingerprintersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Block scripts that collect information to uniquely identify your device'**
  String get knownFingerprintersSubtitle;

  /// No description provided for @listUrl.
  ///
  /// In en, this message translates to:
  /// **'List URL'**
  String get listUrl;

  /// No description provided for @loadDefaults.
  ///
  /// In en, this message translates to:
  /// **'Load Defaults'**
  String get loadDefaults;

  /// No description provided for @loadHardenedDefaults.
  ///
  /// In en, this message translates to:
  /// **'Load Hardened Defaults'**
  String get loadHardenedDefaults;

  /// No description provided for @localNetworkAccess.
  ///
  /// In en, this message translates to:
  /// **'Local Network Access'**
  String get localNetworkAccess;

  /// No description provided for @localNetworkAccessSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enable local network and device access blocking'**
  String get localNetworkAccessSubtitle;

  /// No description provided for @localNetworkAccessSummary.
  ///
  /// In en, this message translates to:
  /// **'Control access to local network resources'**
  String get localNetworkAccessSummary;

  /// No description provided for @malware.
  ///
  /// In en, this message translates to:
  /// **'Malware'**
  String get malware;

  /// No description provided for @manageWithWebLibre.
  ///
  /// In en, this message translates to:
  /// **'Manage with WebLibre'**
  String get manageWithWebLibre;

  /// No description provided for @manageWithWebLibreSubtitle.
  ///
  /// In en, this message translates to:
  /// **'WebLibre controls uBlock Origin\'s enabled filter lists on next browser start.'**
  String get manageWithWebLibreSubtitle;

  /// No description provided for @managedApps.
  ///
  /// In en, this message translates to:
  /// **'Managed apps'**
  String get managedApps;

  /// No description provided for @management.
  ///
  /// In en, this message translates to:
  /// **'Management'**
  String get management;

  /// No description provided for @managementBaselineNote.
  ///
  /// In en, this message translates to:
  /// **'Enabling management starts from uBO\'s common baseline lists and preserves My filters.'**
  String get managementBaselineNote;

  /// No description provided for @maxProtection.
  ///
  /// In en, this message translates to:
  /// **'Max Protection'**
  String get maxProtection;

  /// No description provided for @maxProtectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'DoH only, no fallback'**
  String get maxProtectionSubtitle;

  /// No description provided for @multipurpose.
  ///
  /// In en, this message translates to:
  /// **'Multipurpose'**
  String get multipurpose;

  /// No description provided for @networkProtection.
  ///
  /// In en, this message translates to:
  /// **'Network Protection'**
  String get networkProtection;

  /// No description provided for @noExternalListsConfigured.
  ///
  /// In en, this message translates to:
  /// **'No external lists configured.'**
  String get noExternalListsConfigured;

  /// No description provided for @noExternalListsMatch.
  ///
  /// In en, this message translates to:
  /// **'No external lists match \"{query}\".'**
  String noExternalListsMatch(Object query);

  /// No description provided for @openTabs.
  ///
  /// In en, this message translates to:
  /// **'Open tabs'**
  String get openTabs;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optional;

  /// No description provided for @overrideTargets.
  ///
  /// In en, this message translates to:
  /// **'Override Targets'**
  String get overrideTargets;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @preferenceSettings.
  ///
  /// In en, this message translates to:
  /// **'Preference Settings'**
  String get preferenceSettings;

  /// No description provided for @privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacy;

  /// No description provided for @privacySecuritySettingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Tracking protection, network security, and privacy controls.'**
  String get privacySecuritySettingsSubtitle;

  /// No description provided for @privacySignalsAndModes.
  ///
  /// In en, this message translates to:
  /// **'Privacy Signals and Modes'**
  String get privacySignalsAndModes;

  /// No description provided for @privateModeOnly.
  ///
  /// In en, this message translates to:
  /// **'Private mode only'**
  String get privateModeOnly;

  /// No description provided for @privateTabsOnly.
  ///
  /// In en, this message translates to:
  /// **'Private tabs only'**
  String get privateTabsOnly;

  /// No description provided for @protectionLevel.
  ///
  /// In en, this message translates to:
  /// **'Protection Level'**
  String get protectionLevel;

  /// No description provided for @queryParameterStripping.
  ///
  /// In en, this message translates to:
  /// **'Query Parameter Stripping'**
  String get queryParameterStripping;

  /// No description provided for @queryParameterStrippingSummary.
  ///
  /// In en, this message translates to:
  /// **'Removes tracking parameters from URLs to prevent cross-site user tracking'**
  String get queryParameterStrippingSummary;

  /// No description provided for @quickActions.
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get quickActions;

  /// No description provided for @recentSearchesDataDescription.
  ///
  /// In en, this message translates to:
  /// **'Recent searches'**
  String get recentSearchesDataDescription;

  /// No description provided for @redirectTrackers.
  ///
  /// In en, this message translates to:
  /// **'Redirect Trackers'**
  String get redirectTrackers;

  /// No description provided for @redirectTrackersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Block trackers that collect data through intermediate URL redirects'**
  String get redirectTrackersSubtitle;

  /// No description provided for @regions.
  ///
  /// In en, this message translates to:
  /// **'Regions'**
  String get regions;

  /// No description provided for @resetAllPreferencesDescription.
  ///
  /// In en, this message translates to:
  /// **'This will reset all user-defined web engine preferences to their defaults.'**
  String get resetAllPreferencesDescription;

  /// No description provided for @resetAllPreferencesQuestion.
  ///
  /// In en, this message translates to:
  /// **'Reset all preferences?'**
  String get resetAllPreferencesQuestion;

  /// No description provided for @resetToDefaultsDescription.
  ///
  /// In en, this message translates to:
  /// **'This will restore uBlock Origin to its default filter list configuration and remove any external lists you added.'**
  String get resetToDefaultsDescription;

  /// No description provided for @resetToDefaultsQuestion.
  ///
  /// In en, this message translates to:
  /// **'Reset to defaults?'**
  String get resetToDefaultsQuestion;

  /// No description provided for @resetToDefaultsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Restore uBlock Origin\'s default filter list configuration.'**
  String get resetToDefaultsSubtitle;

  /// No description provided for @resistFingerprinting.
  ///
  /// In en, this message translates to:
  /// **'Resist Fingerprinting'**
  String get resistFingerprinting;

  /// No description provided for @resistFingerprintingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Advanced fingerprinting protection hardening'**
  String get resistFingerprintingSubtitle;

  /// No description provided for @resolverSettings.
  ///
  /// In en, this message translates to:
  /// **'Resolver Settings'**
  String get resolverSettings;

  /// No description provided for @safeBrowsingMalwareProtection.
  ///
  /// In en, this message translates to:
  /// **'Safe Browsing Malware Protection'**
  String get safeBrowsingMalwareProtection;

  /// No description provided for @safeBrowsingMalwareProtectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Warn about dangerous websites and malicious downloads.'**
  String get safeBrowsingMalwareProtectionSubtitle;

  /// No description provided for @safeBrowsingMalwareProtectionSummary.
  ///
  /// In en, this message translates to:
  /// **'Warn about malware and dangerous downloads'**
  String get safeBrowsingMalwareProtectionSummary;

  /// No description provided for @safeBrowsingPhishingProtection.
  ///
  /// In en, this message translates to:
  /// **'Safe Browsing Phishing Protection'**
  String get safeBrowsingPhishingProtection;

  /// No description provided for @safeBrowsingPhishingProtectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Warn about deceptive websites and login pages.'**
  String get safeBrowsingPhishingProtectionSubtitle;

  /// No description provided for @safeBrowsingPhishingProtectionSummary.
  ///
  /// In en, this message translates to:
  /// **'Warn about phishing websites'**
  String get safeBrowsingPhishingProtectionSummary;

  /// No description provided for @screenshotProtectionAndroidSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Prevent screenshots and screen recording on Android'**
  String get screenshotProtectionAndroidSubtitle;

  /// No description provided for @screenshotProtectionSummary.
  ///
  /// In en, this message translates to:
  /// **'Prevent screenshots and screen recording'**
  String get screenshotProtectionSummary;

  /// No description provided for @searchFingerprintOverrideTargets.
  ///
  /// In en, this message translates to:
  /// **'Search fingerprint override targets'**
  String get searchFingerprintOverrideTargets;

  /// No description provided for @searchHardeningGroups.
  ///
  /// In en, this message translates to:
  /// **'Search hardening groups'**
  String get searchHardeningGroups;

  /// No description provided for @searchHardeningSettings.
  ///
  /// In en, this message translates to:
  /// **'Search hardening settings'**
  String get searchHardeningSettings;

  /// No description provided for @searchListsGroupsExternalUrls.
  ///
  /// In en, this message translates to:
  /// **'Search lists, groups, and external URLs'**
  String get searchListsGroupsExternalUrls;

  /// No description provided for @sitePermissions.
  ///
  /// In en, this message translates to:
  /// **'Site permissions'**
  String get sitePermissions;

  /// No description provided for @standard.
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get standard;

  /// No description provided for @standardTrackingProtectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Balanced protection for everyday browsing'**
  String get standardTrackingProtectionSubtitle;

  /// No description provided for @strict.
  ///
  /// In en, this message translates to:
  /// **'Strict'**
  String get strict;

  /// No description provided for @strictTrackingProtectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Stronger protection that may break some sites'**
  String get strictTrackingProtectionSubtitle;

  /// No description provided for @socialWidgets.
  ///
  /// In en, this message translates to:
  /// **'Social Widgets'**
  String get socialWidgets;

  /// No description provided for @suspectedFingerprinters.
  ///
  /// In en, this message translates to:
  /// **'Suspected Fingerprinters'**
  String get suspectedFingerprinters;

  /// No description provided for @suspectedFingerprintersAndTabScope.
  ///
  /// In en, this message translates to:
  /// **'Suspected fingerprinters and tab scope'**
  String get suspectedFingerprintersAndTabScope;

  /// No description provided for @suspectedFingerprintersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Block additional fingerprinting techniques that may be used to track you'**
  String get suspectedFingerprintersSubtitle;

  /// No description provided for @totalCookieProtectionRecommended.
  ///
  /// In en, this message translates to:
  /// **'Total Cookie Protection (Recommended)'**
  String get totalCookieProtectionRecommended;

  /// No description provided for @trackers.
  ///
  /// In en, this message translates to:
  /// **'Trackers'**
  String get trackers;

  /// No description provided for @trackersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Cryptominers, known fingerprinters, and redirect trackers'**
  String get trackersSubtitle;

  /// No description provided for @trackingContent.
  ///
  /// In en, this message translates to:
  /// **'Tracking Content'**
  String get trackingContent;

  /// No description provided for @trackingProtectionExceptionsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage sites excluded from tracking protection'**
  String get trackingProtectionExceptionsSubtitle;

  /// No description provided for @trackingScriptsAndScopeForBlocking.
  ///
  /// In en, this message translates to:
  /// **'Tracking scripts and scope for blocking'**
  String get trackingScriptsAndScopeForBlocking;

  /// No description provided for @ublockFilterLists.
  ///
  /// In en, this message translates to:
  /// **'uBlock Filter Lists'**
  String get ublockFilterLists;

  /// No description provided for @ublockFilterListsAndHardenings.
  ///
  /// In en, this message translates to:
  /// **'uBlock Filter Lists & Hardenings'**
  String get ublockFilterListsAndHardenings;

  /// No description provided for @ublockFilterListsAndHardeningsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage filter lists and apply WebLibre hardenings'**
  String get ublockFilterListsAndHardeningsSubtitle;

  /// No description provided for @ublockFilterListsRestartMessage.
  ///
  /// In en, this message translates to:
  /// **'Changes to uBlock Origin filter lists require an app restart to take effect. Due to caching, some changes may need a few minutes and an additional restart to fully apply.'**
  String get ublockFilterListsRestartMessage;

  /// No description provided for @unvisitedSites.
  ///
  /// In en, this message translates to:
  /// **'Unvisited sites'**
  String get unvisitedSites;

  /// No description provided for @urlMustBeProvided.
  ///
  /// In en, this message translates to:
  /// **'URL must be provided'**
  String get urlMustBeProvided;

  /// No description provided for @useDefaultDnsResolver.
  ///
  /// In en, this message translates to:
  /// **'Use your default DNS resolver'**
  String get useDefaultDnsResolver;

  /// No description provided for @visitSupportPage.
  ///
  /// In en, this message translates to:
  /// **'Visit support page'**
  String get visitSupportPage;

  /// No description provided for @webEngineHardening.
  ///
  /// In en, this message translates to:
  /// **'Web Engine Hardening'**
  String get webEngineHardening;

  /// No description provided for @webEngineHardeningSummary.
  ///
  /// In en, this message translates to:
  /// **'Harden web engine preferences'**
  String get webEngineHardeningSummary;

  /// Prompt in the browser address and search field
  ///
  /// In en, this message translates to:
  /// **'Search or enter URL'**
  String get searchOrEnterUrl;

  /// Empty state in the back history menu
  ///
  /// In en, this message translates to:
  /// **'No previous pages'**
  String get noPreviousPages;

  /// Empty state in the forward history menu
  ///
  /// In en, this message translates to:
  /// **'No forward pages'**
  String get noForwardPages;

  /// Reload action that bypasses the cache
  ///
  /// In en, this message translates to:
  /// **'Hard Refresh'**
  String get hardRefresh;

  /// Action to close a tab tree
  ///
  /// In en, this message translates to:
  /// **'Close Tab and Descendants'**
  String get closeTabAndDescendants;

  /// Action to discover feeds on the current page
  ///
  /// In en, this message translates to:
  /// **'Fetch Feeds on Page'**
  String get fetchFeedsOnPage;

  /// Action to add the current page to the device home screen
  ///
  /// In en, this message translates to:
  /// **'Add to Home Screen'**
  String get addToHomeScreen;

  /// Browser action to duplicate a tab
  ///
  /// In en, this message translates to:
  /// **'Clone Tab'**
  String get cloneTab;

  /// Regular tab type label
  ///
  /// In en, this message translates to:
  /// **'Regular'**
  String get regular;

  /// Private tab type label
  ///
  /// In en, this message translates to:
  /// **'Private'**
  String get private;

  /// Isolated tab type label
  ///
  /// In en, this message translates to:
  /// **'Isolated'**
  String get isolated;

  /// Action to assign a tab to a container
  ///
  /// In en, this message translates to:
  /// **'Assign Container'**
  String get assignContainer;

  /// Container URL relation action
  ///
  /// In en, this message translates to:
  /// **'URL relation'**
  String get urlRelation;

  /// Action to remove a container URL relation
  ///
  /// In en, this message translates to:
  /// **'Unassign URL relation'**
  String get unassignUrlRelation;

  /// Action to remove a tab from its container
  ///
  /// In en, this message translates to:
  /// **'Unassign Container'**
  String get unassignContainer;

  /// Move tab upward action
  ///
  /// In en, this message translates to:
  /// **'Move up'**
  String get moveUp;

  /// Move tab downward action
  ///
  /// In en, this message translates to:
  /// **'Move down'**
  String get moveDown;

  /// Tab reorder submenu title
  ///
  /// In en, this message translates to:
  /// **'Reorder'**
  String get reorder;

  /// Export submenu title
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get export;

  /// Desktop site mode action
  ///
  /// In en, this message translates to:
  /// **'Desktop Mode'**
  String get desktopMode;

  /// Action to change a tab parent
  ///
  /// In en, this message translates to:
  /// **'Change parent…'**
  String get changeParent;

  /// Action to detach a child tab
  ///
  /// In en, this message translates to:
  /// **'Detach from parent'**
  String get detachFromParent;

  /// Tab hierarchy submenu title
  ///
  /// In en, this message translates to:
  /// **'Hierarchy'**
  String get hierarchy;

  /// Action to share the current page link
  ///
  /// In en, this message translates to:
  /// **'Share Link'**
  String get shareLink;

  /// Action to show a QR code for the current address
  ///
  /// In en, this message translates to:
  /// **'Show QR Code'**
  String get showQrCode;

  /// Action to export the current page as PDF
  ///
  /// In en, this message translates to:
  /// **'Export as PDF'**
  String get exportAsPdf;

  /// Action to print the current page
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get print;

  /// Error shown when printing a page fails
  ///
  /// In en, this message translates to:
  /// **'Failed to print page'**
  String get failedToPrintPage;

  /// Action to share a page screenshot
  ///
  /// In en, this message translates to:
  /// **'Share Screenshot'**
  String get shareScreenshot;

  /// Action to export a page screenshot as PNG
  ///
  /// In en, this message translates to:
  /// **'Export as PNG'**
  String get exportAsPng;

  /// Action to copy the current page address
  ///
  /// In en, this message translates to:
  /// **'Copy Address'**
  String get copyAddress;

  /// Action to open a page in another app
  ///
  /// In en, this message translates to:
  /// **'Open in App'**
  String get openInApp;

  /// Action to open a page in a named app
  ///
  /// In en, this message translates to:
  /// **'Open in {appName}'**
  String openInNamedApp(String appName);

  /// Action to send the current tab to a synced device
  ///
  /// In en, this message translates to:
  /// **'Send To Device'**
  String get sendToDevice;

  /// Empty state when no synced device can receive a tab
  ///
  /// In en, this message translates to:
  /// **'No target devices'**
  String get noTargetDevices;

  /// Progress message while loading synced devices
  ///
  /// In en, this message translates to:
  /// **'Loading devices…'**
  String get loadingDevices;

  /// Error shown when synced devices cannot be loaded
  ///
  /// In en, this message translates to:
  /// **'Failed to load devices'**
  String get failedToLoadDevices;

  /// Success message after sending a tab to a device
  ///
  /// In en, this message translates to:
  /// **'Sent tab to {deviceName}'**
  String sentTabToDevice(String deviceName);

  /// Error shown when sending a tab to a device fails
  ///
  /// In en, this message translates to:
  /// **'Failed to send tab'**
  String get failedToSendTab;

  /// Tooltip for searching open tabs
  ///
  /// In en, this message translates to:
  /// **'Search inside tabs'**
  String get searchInsideTabs;

  /// Tab type filter submenu
  ///
  /// In en, this message translates to:
  /// **'Tab Type'**
  String get tabType;

  /// Option to sort pinned tabs first
  ///
  /// In en, this message translates to:
  /// **'Sort Pinned First'**
  String get sortPinnedFirst;

  /// Tab sorting submenu
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sort;

  /// Option to show tabs as a hierarchy
  ///
  /// In en, this message translates to:
  /// **'Hierarchical View'**
  String get hierarchicalView;

  /// Tab date filter action
  ///
  /// In en, this message translates to:
  /// **'Filter Date'**
  String get filterDate;

  /// Tab quick date interval submenu
  ///
  /// In en, this message translates to:
  /// **'Quick Interval'**
  String get quickInterval;

  /// Action to clear tab filters
  ///
  /// In en, this message translates to:
  /// **'Reset Filter'**
  String get resetFilter;

  /// Tooltip for tab filter and sort menu
  ///
  /// In en, this message translates to:
  /// **'Filter & Sort'**
  String get filterAndSort;

  /// Tooltip for changing the tab view mode
  ///
  /// In en, this message translates to:
  /// **'Change view mode'**
  String get changeViewMode;

  /// List tab view mode
  ///
  /// In en, this message translates to:
  /// **'List'**
  String get listView;

  /// Grid tab view mode
  ///
  /// In en, this message translates to:
  /// **'Grid'**
  String get gridView;

  /// Tree tab view mode
  ///
  /// In en, this message translates to:
  /// **'Tree'**
  String get treeView;

  /// Private tabs filter or close action
  ///
  /// In en, this message translates to:
  /// **'Private Tabs'**
  String get privateTabs;

  /// Isolated tabs filter or close action
  ///
  /// In en, this message translates to:
  /// **'Isolated Tabs'**
  String get isolatedTabs;

  /// Filtered tabs close action
  ///
  /// In en, this message translates to:
  /// **'Filtered Tabs'**
  String get filteredTabs;

  /// Bulk close tabs submenu
  ///
  /// In en, this message translates to:
  /// **'Close Tabs'**
  String get closeTabs;

  /// Action to bookmark all displayed tabs
  ///
  /// In en, this message translates to:
  /// **'Bookmark all'**
  String get bookmarkAll;

  /// Title of the bookmark-all dialog
  ///
  /// In en, this message translates to:
  /// **'Bookmark All Tabs'**
  String get bookmarkAllTabs;

  /// Fast bookmark-all option
  ///
  /// In en, this message translates to:
  /// **'Fast'**
  String get fast;

  /// Description of fast bookmark-all mode
  ///
  /// In en, this message translates to:
  /// **'Automatically add all tabs to a selected folder'**
  String get automaticallyAddTabsToFolder;

  /// Detailed bookmark-all option
  ///
  /// In en, this message translates to:
  /// **'Detailed'**
  String get detailed;

  /// Description of detailed bookmark-all mode
  ///
  /// In en, this message translates to:
  /// **'Review and edit each bookmark individually'**
  String get reviewEachBookmark;

  /// Success message after bookmarking multiple tabs
  ///
  /// In en, this message translates to:
  /// **'{count} bookmark(s) added'**
  String bookmarksAdded(int count);

  /// Title of the close-all-tabs dialog
  ///
  /// In en, this message translates to:
  /// **'Close All Tabs'**
  String get closeAllTabs;

  /// Confirmation message for closing displayed tabs
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to close all displayed tabs?'**
  String get closeAllDisplayedTabsQuestion;

  /// Confirmation message for closing private tabs
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to close all private tabs?'**
  String get closeAllPrivateTabsQuestion;

  /// Tooltip for the tab actions menu
  ///
  /// In en, this message translates to:
  /// **'Tab actions'**
  String get tabActions;

  /// Action to clear data for a container
  ///
  /// In en, this message translates to:
  /// **'Clear Container Data'**
  String get clearContainerData;

  /// Success message after clearing container data
  ///
  /// In en, this message translates to:
  /// **'Container data cleared successfully'**
  String get containerDataCleared;

  /// Success message after clearing container data and closing tabs
  ///
  /// In en, this message translates to:
  /// **'Container data cleared. {count} tab(s) closed.'**
  String containerDataClearedTabsClosed(int count);

  /// Error shown when container data cannot be cleared
  ///
  /// In en, this message translates to:
  /// **'Error clearing data: {error}'**
  String errorClearingData(String error);

  /// AI model download progress tooltip
  ///
  /// In en, this message translates to:
  /// **'Downloading AI models ({progress}%)'**
  String downloadingAiModels(int progress);

  /// Action to enable AI tab suggestions
  ///
  /// In en, this message translates to:
  /// **'Enable AI tab suggestions'**
  String get enableAiTabSuggestions;

  /// Action to disable AI tab suggestions
  ///
  /// In en, this message translates to:
  /// **'Disable AI tab suggestions'**
  String get disableAiTabSuggestions;

  /// Tooltip to disable manual tab reordering
  ///
  /// In en, this message translates to:
  /// **'Disable reordering mode'**
  String get disableReorderingMode;

  /// Tooltip to enable manual tab reordering
  ///
  /// In en, this message translates to:
  /// **'Enable reordering mode'**
  String get enableReorderingMode;

  /// Tooltip explaining why tab reordering is unavailable
  ///
  /// In en, this message translates to:
  /// **'Reordering requires default manual mode'**
  String get reorderingRequiresManualMode;

  /// Hint shown after enabling tab reordering
  ///
  /// In en, this message translates to:
  /// **'Drag and drop tabs to reorder them'**
  String get dragTabsToReorder;

  /// Empty state for synced tabs
  ///
  /// In en, this message translates to:
  /// **'No synced tabs available'**
  String get noSyncedTabsAvailable;

  /// Error shown when synced tabs cannot be loaded
  ///
  /// In en, this message translates to:
  /// **'Failed to load synced tabs: {error}'**
  String failedToLoadSyncedTabs(String error);

  /// Undo action
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// Tooltip for extension settings
  ///
  /// In en, this message translates to:
  /// **'Extension settings'**
  String get extensionSettings;

  /// More browser actions label
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// Browser connection section title
  ///
  /// In en, this message translates to:
  /// **'Connection'**
  String get connection;

  /// Bangs quick-link label
  ///
  /// In en, this message translates to:
  /// **'Bangs'**
  String get bangs;

  /// Feeds quick-link label
  ///
  /// In en, this message translates to:
  /// **'Feeds'**
  String get feeds;

  /// Small Web quick-link label
  ///
  /// In en, this message translates to:
  /// **'Small Web'**
  String get smallWeb;

  /// Action to start synchronization
  ///
  /// In en, this message translates to:
  /// **'Sync Now'**
  String get syncNow;

  /// Success after pinning the current page
  ///
  /// In en, this message translates to:
  /// **'Pinned to Shortcuts'**
  String get pinnedToShortcuts;

  /// Success after unpinning the current page
  ///
  /// In en, this message translates to:
  /// **'Unpinned from Shortcuts'**
  String get unpinnedFromShortcuts;

  /// Error shown when shortcut pinning fails
  ///
  /// In en, this message translates to:
  /// **'Failed to update Shortcuts'**
  String get failedToUpdateShortcuts;

  /// Success after removing tracking parameters from a URL
  ///
  /// In en, this message translates to:
  /// **'URL cleaned'**
  String get urlCleaned;

  /// Success after applying a cleaned URL preview
  ///
  /// In en, this message translates to:
  /// **'URL preview applied'**
  String get urlPreviewApplied;

  /// Validation error in clear site data UI
  ///
  /// In en, this message translates to:
  /// **'Select at least one data type'**
  String get selectAtLeastOneDataType;

  /// Success after clearing site data
  ///
  /// In en, this message translates to:
  /// **'Site data cleared'**
  String get siteDataCleared;

  /// Error shown when site data cannot be cleared
  ///
  /// In en, this message translates to:
  /// **'Failed to clear site data: {error}'**
  String failedToClearSiteData(String error);

  /// Error shown when tracking protection status cannot be loaded
  ///
  /// In en, this message translates to:
  /// **'Failed to load tracking protection'**
  String get failedToLoadTrackingProtection;

  /// Error shown when changing tracking protection fails
  ///
  /// In en, this message translates to:
  /// **'Failed to toggle tracking protection: {error}'**
  String failedToToggleTrackingProtection(String error);

  /// Error shown when site permissions cannot be loaded
  ///
  /// In en, this message translates to:
  /// **'Error loading permissions: {error}'**
  String errorLoadingPermissions(String error);

  /// Ask site permission option
  ///
  /// In en, this message translates to:
  /// **'Ask'**
  String get ask;

  /// Select action
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// Title of the keep-or-discard tab dialog
  ///
  /// In en, this message translates to:
  /// **'Keep tab?'**
  String get keepTabQuestion;

  /// Prompt asking whether to keep a tab
  ///
  /// In en, this message translates to:
  /// **'Do you want to keep this tab or discard it?'**
  String get keepTabPrompt;

  /// Discard tab action
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get discard;

  /// Keep tab action
  ///
  /// In en, this message translates to:
  /// **'Keep'**
  String get keep;

  /// Extracted page content option
  ///
  /// In en, this message translates to:
  /// **'Extracted Content'**
  String get extractedContent;

  /// Full page content option
  ///
  /// In en, this message translates to:
  /// **'Full Content'**
  String get fullContent;

  /// Compact reader mode label
  ///
  /// In en, this message translates to:
  /// **'Reader'**
  String get reader;

  /// Empty state when no feeds are found
  ///
  /// In en, this message translates to:
  /// **'No Web Feeds Found'**
  String get noWebFeedsFound;

  /// Title above discovered web feeds
  ///
  /// In en, this message translates to:
  /// **'Available Web Feeds'**
  String get availableWebFeeds;

  /// Progress while discovering feeds
  ///
  /// In en, this message translates to:
  /// **'Fetching Web Feeds…'**
  String get fetchingWebFeeds;

  /// Title of AI tab suggestions opt-in dialog
  ///
  /// In en, this message translates to:
  /// **'Enable AI Tab Suggestions'**
  String get enableAiTabSuggestionsTitle;

  /// Reset page font size action
  ///
  /// In en, this message translates to:
  /// **'Reset to 100%'**
  String get resetToHundredPercent;

  /// Title or action for clearing site data
  ///
  /// In en, this message translates to:
  /// **'Clear Site Data'**
  String get clearSiteDataTitle;

  /// Expanded clear site data subtitle
  ///
  /// In en, this message translates to:
  /// **'Select data types to clear'**
  String get selectDataTypesToClear;

  /// Collapsed clear site data subtitle
  ///
  /// In en, this message translates to:
  /// **'Cookies, cache, and site data'**
  String get cookiesCacheAndSiteData;

  /// Site authentication sessions data type
  ///
  /// In en, this message translates to:
  /// **'Auth Sessions'**
  String get authSessions;

  /// Authentication sessions data description
  ///
  /// In en, this message translates to:
  /// **'Saved logins, active sessions'**
  String get savedLoginsActiveSessions;

  /// Site data description
  ///
  /// In en, this message translates to:
  /// **'Offline storage, databases, local files'**
  String get offlineStorageDatabasesLocalFiles;

  /// Cookies data description
  ///
  /// In en, this message translates to:
  /// **'Login tokens, preferences, tracking data'**
  String get loginTokensPreferencesTrackingData;

  /// Cached files description
  ///
  /// In en, this message translates to:
  /// **'Images, scripts, stylesheets'**
  String get imagesScriptsStylesheets;

  /// Option to close current tab after clearing data
  ///
  /// In en, this message translates to:
  /// **'Close tab after clearing'**
  String get closeTabAfterClearing;

  /// Description of close-tab-after-clearing option
  ///
  /// In en, this message translates to:
  /// **'Close this tab once data is cleared'**
  String get closeThisTabOnceDataCleared;

  /// Progress label while clearing site data
  ///
  /// In en, this message translates to:
  /// **'Clearing…'**
  String get clearingEllipsis;

  /// Immediate clear data action
  ///
  /// In en, this message translates to:
  /// **'Clear Now'**
  String get clearNow;

  /// Cached files name used in a sentence
  ///
  /// In en, this message translates to:
  /// **'cached files'**
  String get cachedFilesLowercase;

  /// Site data name used in a sentence
  ///
  /// In en, this message translates to:
  /// **'site data'**
  String get siteDataLowercase;

  /// Authentication sessions name used in a sentence
  ///
  /// In en, this message translates to:
  /// **'auth sessions'**
  String get authSessionsLowercase;

  /// Title of dialog shown after dropping one tab onto another
  ///
  /// In en, this message translates to:
  /// **'Drop tab onto tab'**
  String get dropTabOntoTab;

  /// Prompt for choosing a relationship between tabs
  ///
  /// In en, this message translates to:
  /// **'Choose how these tabs should be related.'**
  String get chooseTabRelationship;

  /// Action to create a container from dropped tabs
  ///
  /// In en, this message translates to:
  /// **'Create container'**
  String get createContainer;

  /// Description of create-container tab drop action
  ///
  /// In en, this message translates to:
  /// **'Create a new container with both tabs.'**
  String get createContainerWithBothTabs;

  /// Action to assign a new parent tab
  ///
  /// In en, this message translates to:
  /// **'Assign new parent'**
  String get assignNewParent;

  /// Description of assign-new-parent action
  ///
  /// In en, this message translates to:
  /// **'Make the dropped-on tab the parent.'**
  String get makeDroppedOnTabParent;

  /// Generic error message with details
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String errorWithDetails(String error);

  /// Error shown when a selected tab no longer exists
  ///
  /// In en, this message translates to:
  /// **'Tab no longer exists'**
  String get tabNoLongerExists;

  /// Action to detach a tab from its parent
  ///
  /// In en, this message translates to:
  /// **'Make standalone'**
  String get makeStandalone;

  /// Description of make-standalone action
  ///
  /// In en, this message translates to:
  /// **'Detach from current parent'**
  String get detachFromCurrentParent;

  /// Introduction to container data clearing list
  ///
  /// In en, this message translates to:
  /// **'This will clear all data for this container:'**
  String get clearAllContainerDataPrompt;

  /// Cache data type label
  ///
  /// In en, this message translates to:
  /// **'Cache'**
  String get cache;

  /// Permissions data type label
  ///
  /// In en, this message translates to:
  /// **'Permissions'**
  String get permissions;

  /// Option to reopen container tabs after clearing data
  ///
  /// In en, this message translates to:
  /// **'Recreate tabs after clearing'**
  String get recreateTabsAfterClearing;

  /// Action to confirm clearing selected data
  ///
  /// In en, this message translates to:
  /// **'Clear Data'**
  String get clearDataAction;

  /// Autoplay site permission label
  ///
  /// In en, this message translates to:
  /// **'Autoplay'**
  String get autoplay;

  /// Allow all autoplay option
  ///
  /// In en, this message translates to:
  /// **'Allow All'**
  String get allowAll;

  /// Block audible autoplay option
  ///
  /// In en, this message translates to:
  /// **'Block Audible'**
  String get blockAudible;

  /// Block all autoplay option
  ///
  /// In en, this message translates to:
  /// **'Block All'**
  String get blockAll;

  /// Per-site desktop mode rule
  ///
  /// In en, this message translates to:
  /// **'Always use desktop site'**
  String get alwaysUseDesktopSite;

  /// Per-site app-link behavior title
  ///
  /// In en, this message translates to:
  /// **'Open links for this site'**
  String get openLinksForThisSite;

  /// Current app-link behavior follows default
  ///
  /// In en, this message translates to:
  /// **'Follows the default'**
  String get followsDefault;

  /// App-link behavior option to follow default
  ///
  /// In en, this message translates to:
  /// **'Follow default'**
  String get followDefault;

  /// App-link behavior option
  ///
  /// In en, this message translates to:
  /// **'Open in app'**
  String get openInAppLowercase;

  /// App-link behavior option
  ///
  /// In en, this message translates to:
  /// **'Keep in browser'**
  String get keepInBrowser;

  /// Tooltip to remove URL tracking parameters
  ///
  /// In en, this message translates to:
  /// **'Remove tracking'**
  String get removeTracking;

  /// Security label for sandboxed page capture
  ///
  /// In en, this message translates to:
  /// **'Sandboxed capture'**
  String get sandboxedCapture;

  /// Secure connection status
  ///
  /// In en, this message translates to:
  /// **'Connection is secure'**
  String get connectionIsSecure;

  /// Certificate issuer label
  ///
  /// In en, this message translates to:
  /// **'Verified By: {issuer}'**
  String verifiedBy(String issuer);

  /// Action to choose a local extension package
  ///
  /// In en, this message translates to:
  /// **'Select XPI File'**
  String get selectXpiFile;

  /// Label for the home-page startup target
  ///
  /// In en, this message translates to:
  /// **'Home page'**
  String get homeTargetHomeLabel;

  /// Label for the resume-last-tab startup target
  ///
  /// In en, this message translates to:
  /// **'Last opened tab'**
  String get homeTargetResumeLastTabLabel;

  /// Label for the custom-address startup target
  ///
  /// In en, this message translates to:
  /// **'Custom address'**
  String get homeTargetCustomUrlLabel;

  /// Description for the home-page startup target
  ///
  /// In en, this message translates to:
  /// **'Show shortcuts and the sections you have chosen'**
  String get homeTargetHomeDescription;

  /// Description for the resume-last-tab startup target
  ///
  /// In en, this message translates to:
  /// **'Pick up where you left off'**
  String get homeTargetResumeLastTabDescription;

  /// Description for the custom-address startup target
  ///
  /// In en, this message translates to:
  /// **'Open a specific page'**
  String get homeTargetCustomUrlDescription;

  /// Label for the recent searches module
  ///
  /// In en, this message translates to:
  /// **'Recent Searches'**
  String get searchModuleRecentSearchesLabel;

  /// Label for the search providers module
  ///
  /// In en, this message translates to:
  /// **'Search Providers'**
  String get searchModuleSearchProvidersLabel;

  /// Label for the search suggestions module
  ///
  /// In en, this message translates to:
  /// **'Suggestions'**
  String get searchModuleSearchSuggestionsLabel;

  /// Label for the tabs search module
  ///
  /// In en, this message translates to:
  /// **'Tabs'**
  String get searchModuleTabsLabel;

  /// Label for the articles search module
  ///
  /// In en, this message translates to:
  /// **'Articles'**
  String get searchModuleArticlesLabel;

  /// Label for the bookmarks search module
  ///
  /// In en, this message translates to:
  /// **'Bookmarks'**
  String get searchModuleBookmarksLabel;

  /// Label for the engine history search module
  ///
  /// In en, this message translates to:
  /// **'History (engine)'**
  String get searchModuleHistoryLabel;

  /// Label for the local history content module
  ///
  /// In en, this message translates to:
  /// **'Local content'**
  String get searchModuleLocalHistoryLabel;

  /// Label for the combined history module
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get searchModuleCombinedHistoryLabel;

  /// Label for the popular sites module
  ///
  /// In en, this message translates to:
  /// **'Popular Sites'**
  String get searchModulePopularSitesLabel;

  /// Label for the history highlights module
  ///
  /// In en, this message translates to:
  /// **'History Highlights'**
  String get searchModuleHistoryHighlightsLabel;

  /// Label for the top sites shortcuts module
  ///
  /// In en, this message translates to:
  /// **'Shortcuts'**
  String get searchModuleTopSitesLabel;

  /// Label for the recent history module
  ///
  /// In en, this message translates to:
  /// **'Recent History'**
  String get searchModuleRecentHistoryLabel;

  /// Label for the recent articles module
  ///
  /// In en, this message translates to:
  /// **'Recent Articles'**
  String get searchModuleRecentArticlesLabel;

  /// Label for the recent tabs module
  ///
  /// In en, this message translates to:
  /// **'Recent Tabs'**
  String get searchModuleRecentTabsLabel;

  /// Label for the containers module
  ///
  /// In en, this message translates to:
  /// **'Containers'**
  String get searchModuleContainersLabel;

  /// Label for the frequent bangs module
  ///
  /// In en, this message translates to:
  /// **'Frequent Bangs'**
  String get searchModuleFrequentBangsLabel;

  /// Label for the quote module
  ///
  /// In en, this message translates to:
  /// **'Quote'**
  String get searchModuleQuoteLabel;

  /// Label for the quick actions module
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get searchModuleQuickActionsLabel;

  /// Label for the default uBlock filter-list group
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get uBlockAssetGroupDefaultLabel;

  /// Label for the ads uBlock filter-list group
  ///
  /// In en, this message translates to:
  /// **'Ads'**
  String get uBlockAssetGroupAdsLabel;

  /// Label for the privacy uBlock filter-list group
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get uBlockAssetGroupPrivacyLabel;

  /// Label for the malware uBlock filter-list group
  ///
  /// In en, this message translates to:
  /// **'Malware'**
  String get uBlockAssetGroupMalwareLabel;

  /// Label for the annoyances uBlock filter-list group
  ///
  /// In en, this message translates to:
  /// **'Annoyances'**
  String get uBlockAssetGroupAnnoyancesLabel;

  /// Label for the multipurpose uBlock filter-list group
  ///
  /// In en, this message translates to:
  /// **'Multipurpose'**
  String get uBlockAssetGroupMultipurposeLabel;

  /// Label for the regional uBlock filter-list group
  ///
  /// In en, this message translates to:
  /// **'Regions'**
  String get uBlockAssetGroupRegionsLabel;

  /// Label for the cookie notices uBlock filter-list subgroup
  ///
  /// In en, this message translates to:
  /// **'Cookie Notices'**
  String get uBlockAssetSubGroupCookiesLabel;

  /// Label for the social widgets uBlock filter-list subgroup
  ///
  /// In en, this message translates to:
  /// **'Social Widgets'**
  String get uBlockAssetSubGroupSocialLabel;

  /// UI string for torTrademark
  ///
  /// In en, this message translates to:
  /// **'Trademark'**
  String get torTrademark;

  /// UI string for torStartAutomatically
  ///
  /// In en, this message translates to:
  /// **'Start Automatically'**
  String get torStartAutomatically;

  /// UI string for torStartOrStopService
  ///
  /// In en, this message translates to:
  /// **'Start or stop the {brand} service'**
  String torStartOrStopService(Object brand);

  /// UI string for torRequestNewIdentity
  ///
  /// In en, this message translates to:
  /// **'Request New Identity'**
  String get torRequestNewIdentity;

  /// UI string for torUseFreshCircuit
  ///
  /// In en, this message translates to:
  /// **'Use a fresh circuit for new connections'**
  String get torUseFreshCircuit;

  /// UI string for torAutoConfigureTransport
  ///
  /// In en, this message translates to:
  /// **'Auto Configure Transport'**
  String get torAutoConfigureTransport;

  /// UI string for torCannotConnectWithoutBridge
  ///
  /// In en, this message translates to:
  /// **'I\'m sure I cannot connect without a bridge'**
  String get torCannotConnectWithoutBridge;

  /// UI string for torAutoConfigured
  ///
  /// In en, this message translates to:
  /// **'Auto-configured'**
  String get torAutoConfigured;

  /// UI string for torDirectConnection
  ///
  /// In en, this message translates to:
  /// **'Direct Connection'**
  String get torDirectConnection;

  /// UI string for torFetchFreshBridges
  ///
  /// In en, this message translates to:
  /// **'Fetch fresh Bridges before connecting'**
  String get torFetchFreshBridges;

  /// UI string for torSuitableForHeavyCensorship
  ///
  /// In en, this message translates to:
  /// **'Suitable for heavy censorship'**
  String get torSuitableForHeavyCensorship;

  /// UI string for userBangs
  ///
  /// In en, this message translates to:
  /// **'User Bangs'**
  String get userBangs;

  /// UI string for manageUserBangs
  ///
  /// In en, this message translates to:
  /// **'Manage User Bangs'**
  String get manageUserBangs;

  /// UI string for searchBangs
  ///
  /// In en, this message translates to:
  /// **'Search Bangs'**
  String get searchBangs;

  /// UI string for browseCategories
  ///
  /// In en, this message translates to:
  /// **'Browse Categories'**
  String get browseCategories;

  /// UI string for bangCategories
  ///
  /// In en, this message translates to:
  /// **'Bang Categories'**
  String get bangCategories;

  /// UI string for deleteBang
  ///
  /// In en, this message translates to:
  /// **'Delete Bang'**
  String get deleteBang;

  /// UI string for deleteBangConfirm
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this Bang?'**
  String get deleteBangConfirm;

  /// UI string for openBasePath
  ///
  /// In en, this message translates to:
  /// **'Open Base Path'**
  String get openBasePath;

  /// UI string for urlEncodePlaceholder
  ///
  /// In en, this message translates to:
  /// **'URL Encode Placeholder'**
  String get urlEncodePlaceholder;

  /// UI string for urlEncodeSpaceToPlus
  ///
  /// In en, this message translates to:
  /// **'URL Encode Space to Plus'**
  String get urlEncodeSpaceToPlus;

  /// UI string for trigger
  ///
  /// In en, this message translates to:
  /// **'Trigger'**
  String get trigger;

  /// UI string for url
  ///
  /// In en, this message translates to:
  /// **'URL'**
  String get url;

  /// UI string for category
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// UI string for subCategory
  ///
  /// In en, this message translates to:
  /// **'Sub Category'**
  String get subCategory;

  /// UI string for enableSync
  ///
  /// In en, this message translates to:
  /// **'Enable Sync'**
  String get enableSync;

  /// UI string for storeCurrent
  ///
  /// In en, this message translates to:
  /// **'Store Current'**
  String get storeCurrent;

  /// UI string for storeSnapshot
  ///
  /// In en, this message translates to:
  /// **'Store Snapshot'**
  String get storeSnapshot;

  /// UI string for editLabel
  ///
  /// In en, this message translates to:
  /// **'Edit Label'**
  String get editLabel;

  /// UI string for restoreSnapshot
  ///
  /// In en, this message translates to:
  /// **'Restore Snapshot'**
  String get restoreSnapshot;

  /// UI string for deleteSnapshot
  ///
  /// In en, this message translates to:
  /// **'Delete Snapshot'**
  String get deleteSnapshot;

  /// UI string for restoreSnapshotOverwrite
  ///
  /// In en, this message translates to:
  /// **'This will overwrite your current local settings.'**
  String get restoreSnapshotOverwrite;

  /// UI string for deleteSnapshotConfirm
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete {label}?'**
  String deleteSnapshotConfirm(Object label);

  /// UI string for becomeSupporter
  ///
  /// In en, this message translates to:
  /// **'Become a Supporter'**
  String get becomeSupporter;

  /// UI string for couldNotLoadSubscription
  ///
  /// In en, this message translates to:
  /// **'Could not load subscription'**
  String get couldNotLoadSubscription;

  /// UI string for delivery
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get delivery;

  /// UI string for unifiedPushDistributor
  ///
  /// In en, this message translates to:
  /// **'UnifiedPush Distributor'**
  String get unifiedPushDistributor;

  /// UI string for unifiedPushDistributorSubtitle
  ///
  /// In en, this message translates to:
  /// **'The app that delivers website push notifications'**
  String get unifiedPushDistributorSubtitle;

  /// UI string for notificationPermission
  ///
  /// In en, this message translates to:
  /// **'Notification Permission'**
  String get notificationPermission;

  /// UI string for notificationPermissionSubtitle
  ///
  /// In en, this message translates to:
  /// **'Required to display website notifications'**
  String get notificationPermissionSubtitle;

  /// UI string for subscriptions
  ///
  /// In en, this message translates to:
  /// **'Subscriptions'**
  String get subscriptions;

  /// UI string for siteSubscriptions
  ///
  /// In en, this message translates to:
  /// **'Site Subscriptions'**
  String get siteSubscriptions;

  /// UI string for siteSubscriptionsSubtitle
  ///
  /// In en, this message translates to:
  /// **'Websites subscribed to push notifications'**
  String get siteSubscriptionsSubtitle;

  /// UI string for webPushNotifications
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get webPushNotifications;

  /// UI string for webPushNotificationsSubtitle
  ///
  /// In en, this message translates to:
  /// **'Web push delivery, distributor, and site subscriptions.'**
  String get webPushNotificationsSubtitle;

  /// UI string for gestureConfiguration
  ///
  /// In en, this message translates to:
  /// **'Configuration'**
  String get gestureConfiguration;

  /// UI string for gestureBindings
  ///
  /// In en, this message translates to:
  /// **'Gesture bindings'**
  String get gestureBindings;

  /// UI string for gestureBehaviorTiming
  ///
  /// In en, this message translates to:
  /// **'Behavior & timing'**
  String get gestureBehaviorTiming;

  /// UI string for gestureExcludedSites
  ///
  /// In en, this message translates to:
  /// **'Excluded sites'**
  String get gestureExcludedSites;

  /// UI string for gestureFeedback
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get gestureFeedback;

  /// UI string for gestureOverlay
  ///
  /// In en, this message translates to:
  /// **'Overlay'**
  String get gestureOverlay;

  /// UI string for gestureLiveFeedback
  ///
  /// In en, this message translates to:
  /// **'Live feedback'**
  String get gestureLiveFeedback;

  /// UI string for gestureLiveFeedbackSubtitle
  ///
  /// In en, this message translates to:
  /// **'Show the stroke and its action while you draw'**
  String get gestureLiveFeedbackSubtitle;

  /// UI string for gestureSuggestNext
  ///
  /// In en, this message translates to:
  /// **'Suggest next'**
  String get gestureSuggestNext;

  /// UI string for searchingTheWeb
  ///
  /// In en, this message translates to:
  /// **'Searching the web...'**
  String get searchingTheWeb;

  /// UI string for buySearchPack
  ///
  /// In en, this message translates to:
  /// **'Buy a search pack'**
  String get buySearchPack;

  /// UI string for checkConnectionRetry
  ///
  /// In en, this message translates to:
  /// **'Check your connection and tap refresh to retry.'**
  String get checkConnectionRetry;

  /// UI string for buySearchPackToStart
  ///
  /// In en, this message translates to:
  /// **'Buy a search pack to get started'**
  String get buySearchPackToStart;

  /// UI string for requestingTokens
  ///
  /// In en, this message translates to:
  /// **'Requesting tokens...'**
  String get requestingTokens;

  /// UI string for getTokens
  ///
  /// In en, this message translates to:
  /// **'Get tokens'**
  String get getTokens;

  /// UI string for requestTokens
  ///
  /// In en, this message translates to:
  /// **'Request {count} tokens'**
  String requestTokens(Object count);

  /// UI string for noCreditsRemaining
  ///
  /// In en, this message translates to:
  /// **'No credits remaining'**
  String get noCreditsRemaining;

  /// UI string for buyMore
  ///
  /// In en, this message translates to:
  /// **'Buy more'**
  String get buyMore;

  /// UI string for fetchPageData
  ///
  /// In en, this message translates to:
  /// **'Fetch Page Data'**
  String get fetchPageData;

  /// UI string for find
  ///
  /// In en, this message translates to:
  /// **'Find'**
  String get find;

  /// UI string for show
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get show;

  /// UI string for switch_
  ///
  /// In en, this message translates to:
  /// **'Switch'**
  String get switch_;

  /// UI string for dismiss
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get dismiss;

  /// UI string for navigateBackToCloseTab
  ///
  /// In en, this message translates to:
  /// **'Navigate BACK again to close current tab'**
  String get navigateBackToCloseTab;

  /// UI string for navigateBackToExitApp
  ///
  /// In en, this message translates to:
  /// **'Navigate BACK again to exit app'**
  String get navigateBackToExitApp;

  /// UI string for openLinkFromClipboard
  ///
  /// In en, this message translates to:
  /// **'Want to open link from clipboard?'**
  String get openLinkFromClipboard;

  /// UI string for tabsClosed
  ///
  /// In en, this message translates to:
  /// **'{count} Tabs closed'**
  String tabsClosed(Object count);

  /// UI string for tabClosed
  ///
  /// In en, this message translates to:
  /// **'Tab closed'**
  String get tabClosed;

  /// UI string for closeIsolatedTabs
  ///
  /// In en, this message translates to:
  /// **'Close isolated tabs?'**
  String get closeIsolatedTabs;

  /// UI string for hidingDisabledBySite
  ///
  /// In en, this message translates to:
  /// **'Hiding disabled by site'**
  String get hidingDisabledBySite;

  /// UI string for quickStart
  ///
  /// In en, this message translates to:
  /// **'Quick Start'**
  String get quickStart;

  /// UI string for quickStartSubtitle
  ///
  /// In en, this message translates to:
  /// **'Use recommended defaults and get browsing.'**
  String get quickStartSubtitle;

  /// UI string for customSetup
  ///
  /// In en, this message translates to:
  /// **'Custom Setup'**
  String get customSetup;

  /// UI string for customSetupSubtitle
  ///
  /// In en, this message translates to:
  /// **'Configure DNS, toolbar, extensions, and more.'**
  String get customSetupSubtitle;

  /// UI string for restoreFromBackup
  ///
  /// In en, this message translates to:
  /// **'Restore from Backup'**
  String get restoreFromBackup;

  /// UI string for restoreFromBackupSubtitle
  ///
  /// In en, this message translates to:
  /// **'Import a profile from an encrypted backup file.'**
  String get restoreFromBackupSubtitle;

  /// UI string for endUserLicenseAgreement
  ///
  /// In en, this message translates to:
  /// **'End User License Agreement'**
  String get endUserLicenseAgreement;

  /// UI string for couldNotLoadSearchEngines
  ///
  /// In en, this message translates to:
  /// **'Could not load search engines'**
  String get couldNotLoadSearchEngines;

  /// UI string for failedToLoadFeeds
  ///
  /// In en, this message translates to:
  /// **'Failed to load Feeds'**
  String get failedToLoadFeeds;

  /// UI string for failedToLoadFeed
  ///
  /// In en, this message translates to:
  /// **'Failed to load feed'**
  String get failedToLoadFeed;

  /// UI string for failedToLoadArticles
  ///
  /// In en, this message translates to:
  /// **'Failed to load Articles'**
  String get failedToLoadArticles;

  /// UI string for failedReadingArticle
  ///
  /// In en, this message translates to:
  /// **'Failed reading article'**
  String get failedReadingArticle;

  /// UI string for testConnection
  ///
  /// In en, this message translates to:
  /// **'Test connection'**
  String get testConnection;

  /// UI string for testing
  ///
  /// In en, this message translates to:
  /// **'Testing...'**
  String get testing;

  /// UI string for failed
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failed;

  /// UI string for direct
  ///
  /// In en, this message translates to:
  /// **'Direct'**
  String get direct;

  /// UI string for clearOnExit
  ///
  /// In en, this message translates to:
  /// **'Clear on exit'**
  String get clearOnExit;

  /// UI string for pinned
  ///
  /// In en, this message translates to:
  /// **'Pinned'**
  String get pinned;

  /// UI string for hue
  ///
  /// In en, this message translates to:
  /// **'Hue'**
  String get hue;

  /// UI string for saturation
  ///
  /// In en, this message translates to:
  /// **'Saturation'**
  String get saturation;

  /// UI string for lightness
  ///
  /// In en, this message translates to:
  /// **'Lightness'**
  String get lightness;

  /// UI string for smallWebUnavailable
  ///
  /// In en, this message translates to:
  /// **'Small Web unavailable'**
  String get smallWebUnavailable;

  /// UI string for couldNotLoadSmallWebSession
  ///
  /// In en, this message translates to:
  /// **'Could not load Small Web session'**
  String get couldNotLoadSmallWebSession;

  /// UI string for autoDeviceDefault
  ///
  /// In en, this message translates to:
  /// **'Auto (device default)'**
  String get autoDeviceDefault;

  /// UI string for anyRegion
  ///
  /// In en, this message translates to:
  /// **'Any region'**
  String get anyRegion;

  /// UI string for anyTime
  ///
  /// In en, this message translates to:
  /// **'Any time'**
  String get anyTime;

  /// UI string for defaultModerate
  ///
  /// In en, this message translates to:
  /// **'Default (moderate)'**
  String get defaultModerate;

  /// UI string for syncSettingsSubtitle
  ///
  /// In en, this message translates to:
  /// **'Account status, QR pairing, and device name'**
  String get syncSettingsSubtitle;

  /// UI string for syncServerOverridesSubtitle
  ///
  /// In en, this message translates to:
  /// **'Custom Firefox Account and token server endpoints'**
  String get syncServerOverridesSubtitle;

  /// UI string for restore
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restore;

  /// UI string for store
  ///
  /// In en, this message translates to:
  /// **'Store'**
  String get store;

  /// UI string for previewUnavailable
  ///
  /// In en, this message translates to:
  /// **'Preview unavailable'**
  String get previewUnavailable;

  /// UI string for searchFailed
  ///
  /// In en, this message translates to:
  /// **'Search failed'**
  String get searchFailed;

  /// UI string for gestureSuggestNextSubtitle
  ///
  /// In en, this message translates to:
  /// **'Also show the other gestures you can complete'**
  String get gestureSuggestNextSubtitle;

  /// UI string for granted
  ///
  /// In en, this message translates to:
  /// **'Granted'**
  String get granted;

  /// UI string for grant
  ///
  /// In en, this message translates to:
  /// **'Grant'**
  String get grant;

  /// UI string for couldNotReadPermissionState
  ///
  /// In en, this message translates to:
  /// **'Could not read permission state: {error}'**
  String couldNotReadPermissionState(Object error);

  /// UI string for noSiteSubscriptions
  ///
  /// In en, this message translates to:
  /// **'No subscriptions'**
  String get noSiteSubscriptions;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
