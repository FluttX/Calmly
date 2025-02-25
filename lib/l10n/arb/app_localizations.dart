import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_bn.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'arb/app_localizations.dart';
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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('bn'),
    Locale('en'),
    Locale('es')
  ];

  /// No description provided for @onboardingTitle.
  ///
  /// In en, this message translates to:
  /// **'We are what we do'**
  String get onboardingTitle;

  /// No description provided for @onboardingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Thousand of people are using silent moon for smalls meditation'**
  String get onboardingSubtitle;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'LOG IN'**
  String get login;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back!'**
  String get welcomeBack;

  /// No description provided for @continueWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'CONTINUE WITH GOOGLE'**
  String get continueWithGoogle;

  /// No description provided for @continueWithFacebook.
  ///
  /// In en, this message translates to:
  /// **'CONTINUE WITH FACEBOOK'**
  String get continueWithFacebook;

  /// No description provided for @orLoginWithEmail.
  ///
  /// In en, this message translates to:
  /// **'or log in with email'**
  String get orLoginWithEmail;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get emailAddress;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgetPassword.
  ///
  /// In en, this message translates to:
  /// **'Forget Password?'**
  String get forgetPassword;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @donNotHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get donNotHaveAccount;

  /// No description provided for @createYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Create your account'**
  String get createYourAccount;

  /// No description provided for @orSignupWithEmail.
  ///
  /// In en, this message translates to:
  /// **'or sign up with email'**
  String get orSignupWithEmail;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @iHaveReadThe.
  ///
  /// In en, this message translates to:
  /// **'I have read the'**
  String get iHaveReadThe;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'SIGN UP'**
  String get signup;

  /// No description provided for @hiUser.
  ///
  /// In en, this message translates to:
  /// **'Hi {name},'**
  String hiUser(Object name);

  /// No description provided for @welComeToAppName.
  ///
  /// In en, this message translates to:
  /// **'Welcome to {app_name}'**
  String welComeToAppName(Object app_name);

  /// No description provided for @welcomeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Explore the app, Find some peace of mind to prepare for meditation.'**
  String get welcomeSubtitle;

  /// No description provided for @whatBringsYou.
  ///
  /// In en, this message translates to:
  /// **'What Brings you'**
  String get whatBringsYou;

  /// No description provided for @toAppName.
  ///
  /// In en, this message translates to:
  /// **'to {app_name}?'**
  String toAppName(Object app_name);

  /// No description provided for @chooseATopic.
  ///
  /// In en, this message translates to:
  /// **'choose a topic to focus on:'**
  String get chooseATopic;

  /// No description provided for @meditateTimeTitle.
  ///
  /// In en, this message translates to:
  /// **'What time would you like to meditate?'**
  String get meditateTimeTitle;

  /// No description provided for @meditateTimeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Any time you can choose but We recommend first thing in th morning.'**
  String get meditateTimeSubtitle;

  /// No description provided for @meditateDayTitle.
  ///
  /// In en, this message translates to:
  /// **'Which day would you like to meditate?'**
  String get meditateDayTitle;

  /// No description provided for @meditateDaySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Everyday is best, but we recommend picking at least five.'**
  String get meditateDaySubtitle;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'SAVE'**
  String get save;

  /// No description provided for @noThanks.
  ///
  /// In en, this message translates to:
  /// **'NO THANKS'**
  String get noThanks;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @sleep.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get sleep;

  /// No description provided for @meditate.
  ///
  /// In en, this message translates to:
  /// **'Meditate'**
  String get meditate;

  /// No description provided for @music.
  ///
  /// In en, this message translates to:
  /// **'Music'**
  String get music;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @exitApp.
  ///
  /// In en, this message translates to:
  /// **'Exit App'**
  String get exitApp;

  /// No description provided for @areYouSureToExit.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to exit?'**
  String get areYouSureToExit;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @goodMorningUser.
  ///
  /// In en, this message translates to:
  /// **'Good Morning, {name}'**
  String goodMorningUser(Object name);

  /// No description provided for @goodAfternoonUser.
  ///
  /// In en, this message translates to:
  /// **'Good Afternoon, {name}'**
  String goodAfternoonUser(Object name);

  /// No description provided for @goodEveningUser.
  ///
  /// In en, this message translates to:
  /// **'Good Evening, {name}'**
  String goodEveningUser(Object name);

  /// No description provided for @weWishYouHaveAGoodDay.
  ///
  /// In en, this message translates to:
  /// **'We Wish you have a good day'**
  String get weWishYouHaveAGoodDay;

  /// No description provided for @basics.
  ///
  /// In en, this message translates to:
  /// **'Basics'**
  String get basics;

  /// No description provided for @course.
  ///
  /// In en, this message translates to:
  /// **'COURSE'**
  String get course;

  /// No description provided for @minCount.
  ///
  /// In en, this message translates to:
  /// **'{minCount} MIN'**
  String minCount(Object minCount);

  /// No description provided for @relaxation.
  ///
  /// In en, this message translates to:
  /// **'Relaxation'**
  String get relaxation;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'START'**
  String get start;

  /// No description provided for @dailyThought.
  ///
  /// In en, this message translates to:
  /// **'Daily Thought'**
  String get dailyThought;

  /// No description provided for @meditation.
  ///
  /// In en, this message translates to:
  /// **'MEDITATION'**
  String get meditation;

  /// No description provided for @goodMorning.
  ///
  /// In en, this message translates to:
  /// **'Happy Morning'**
  String get goodMorning;

  /// No description provided for @courseDetails.
  ///
  /// In en, this message translates to:
  /// **'Ease the mind into a restful night’s sleep with these deep, ambient tones.'**
  String get courseDetails;

  /// No description provided for @favoriteCount.
  ///
  /// In en, this message translates to:
  /// **'{count} Favorites'**
  String favoriteCount(Object count);

  /// No description provided for @listenCount.
  ///
  /// In en, this message translates to:
  /// **'{count} Listening'**
  String listenCount(Object count);

  /// No description provided for @pickANarrator.
  ///
  /// In en, this message translates to:
  /// **'Pick a Narrator'**
  String get pickANarrator;

  /// No description provided for @maleVoice.
  ///
  /// In en, this message translates to:
  /// **'MALE VOICE'**
  String get maleVoice;

  /// No description provided for @femaleVoice.
  ///
  /// In en, this message translates to:
  /// **'FEMALE VOICE'**
  String get femaleVoice;

  /// No description provided for @meditateSubtitle.
  ///
  /// In en, this message translates to:
  /// **'we can learn how to recognize when our minds are doing their normal everyday acrobatics.'**
  String get meditateSubtitle;

  /// No description provided for @emailIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailIsRequired;

  /// No description provided for @enterAValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get enterAValidEmail;

  /// No description provided for @passwordIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordIsRequired;

  /// No description provided for @passwordValidation.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get passwordValidation;

  /// No description provided for @nameIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Name is required'**
  String get nameIsRequired;

  /// No description provided for @nameValidation.
  ///
  /// In en, this message translates to:
  /// **'Name must be at least 3 characters'**
  String get nameValidation;

  /// No description provided for @privacyPolicyValidation.
  ///
  /// In en, this message translates to:
  /// **'Please accept the Privacy Policy to continue.'**
  String get privacyPolicyValidation;

  /// No description provided for @signupSuccess.
  ///
  /// In en, this message translates to:
  /// **'Signup successful! Redirecting...'**
  String get signupSuccess;

  /// No description provided for @dailyClam.
  ///
  /// In en, this message translates to:
  /// **'Daily Calm'**
  String get dailyClam;

  /// No description provided for @pausePractice.
  ///
  /// In en, this message translates to:
  /// **'PAUSE PRACTICE'**
  String get pausePractice;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['bn', 'en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'bn': return AppLocalizationsBn();
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
