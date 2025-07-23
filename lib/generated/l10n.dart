// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Welcome to`
  String get Welcome_to {
    return Intl.message('Welcome to', name: 'Welcome_to', desc: '', args: []);
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and get the best deals and highest quality.`
  String get onBoarSubTitle1 {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and get the best deals and highest quality.',
      name: 'onBoarSubTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Search and Marcting`
  String get search_markteng {
    return Intl.message(
      'Search and Marcting',
      name: 'search_markteng',
      desc: '',
      args: [],
    );
  }

  /// `We offer you the finest, carefully selected fruits. Check out the details, photos, and reviews to make sure you're choosing the perfect fruit.`
  String get onBoarSubTitle2 {
    return Intl.message(
      'We offer you the finest, carefully selected fruits. Check out the details, photos, and reviews to make sure you\'re choosing the perfect fruit.',
      name: 'onBoarSubTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get start_now {
    return Intl.message('Start Now', name: 'start_now', desc: '', args: []);
  }

  /// `Please enter your password`
  String get required_password {
    return Intl.message(
      'Please enter your password',
      name: 'required_password',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Email`
  String get Email {
    return Intl.message('Email', name: 'Email', desc: '', args: []);
  }

  /// `Wrong password`
  String get wrong_password {
    return Intl.message(
      'Wrong password',
      name: 'wrong_password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get did_you_forgot_password {
    return Intl.message(
      'Forgot password?',
      name: 'did_you_forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `A text message has been sent to {phone_number}, enter the 4-digit code`
  String change_password_message(Object phone_number) {
    return Intl.message(
      'A text message has been sent to $phone_number, enter the 4-digit code',
      name: 'change_password_message',
      desc: 'Message shown when changing password',
      args: [phone_number],
    );
  }

  /// `Resend  code within {time}`
  String Resend_code_time(Object time) {
    return Intl.message(
      'Resend  code within $time',
      name: 'Resend_code_time',
      desc: 'Message shown when the user can resend the code',
      args: [time],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get new_password {
    return Intl.message(
      'New Password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirm_new_password {
    return Intl.message(
      'Confirm New Password',
      name: 'confirm_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Passwords dose not match`
  String get passwords_dose_not_match {
    return Intl.message(
      'Passwords dose not match',
      name: 'passwords_dose_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Password changed successfully`
  String get password_changed_successfully {
    return Intl.message(
      'Password changed successfully',
      name: 'password_changed_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Enter your ID number`
  String get enter_id {
    return Intl.message(
      'Enter your ID number',
      name: 'enter_id',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact_us {
    return Intl.message('Contact Us', name: 'contact_us', desc: '', args: []);
  }

  /// `About Us`
  String get about_us {
    return Intl.message('About Us', name: 'about_us', desc: '', args: []);
  }

  /// ` Forgot Password`
  String get forgot_password {
    return Intl.message(
      ' Forgot Password',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get password_mismatch {
    return Intl.message(
      'Passwords do not match',
      name: 'password_mismatch',
      desc: '',
      args: [],
    );
  }

  /// `OTP`
  String get otp {
    return Intl.message('OTP', name: 'otp', desc: '', args: []);
  }

  /// `plase enter a valid data`
  String get wrong_data {
    return Intl.message(
      'plase enter a valid data',
      name: 'wrong_data',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get please_enter_valid_email {
    return Intl.message(
      'Please enter a valid email',
      name: 'please_enter_valid_email',
      desc: '',
      args: [],
    );
  }

  /// `don't have an account ? `
  String get dont_have_an_account {
    return Intl.message(
      'don\'t have an account ? ',
      name: 'dont_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get Please_enter_your_email {
    return Intl.message(
      'Please enter your email',
      name: 'Please_enter_your_email',
      desc: '',
      args: [],
    );
  }

  /// `create account`
  String get create_account {
    return Intl.message(
      'create account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message('or', name: 'or', desc: '', args: []);
  }

  /// `Login with googel`
  String get login_with_googel {
    return Intl.message(
      'Login with googel',
      name: 'login_with_googel',
      desc: '',
      args: [],
    );
  }

  /// `Login with facebook`
  String get login_with_facebook {
    return Intl.message(
      'Login with facebook',
      name: 'login_with_facebook',
      desc: '',
      args: [],
    );
  }

  /// `Login with appel`
  String get login_with_appel {
    return Intl.message(
      'Login with appel',
      name: 'login_with_appel',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
