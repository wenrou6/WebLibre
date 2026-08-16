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

  /// Export page as markdown action
  ///
  /// In en, this message translates to:
  /// **'Export as Markdown'**
  String get exportAsMarkdown;

  /// Copy page as markdown action
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

  /// Close all private tabs action
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

  /// Desktop platform label
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
