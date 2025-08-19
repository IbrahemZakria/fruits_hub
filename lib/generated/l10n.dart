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
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
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
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to`
  String get Welcome_to {
    return Intl.message(
      'Welcome to',
      name: 'Welcome_to',
      desc: '',
      args: [],
    );
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
    return Intl.message(
      'Start Now',
      name: 'start_now',
      desc: '',
      args: [],
    );
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
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get Email {
    return Intl.message(
      'Email',
      name: 'Email',
      desc: '',
      args: [],
    );
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
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `A text message has been sent to {phoneNumber}, enter the 4-digit code`
  String change_password_message(Object phoneNumber) {
    return Intl.message(
      'A text message has been sent to $phoneNumber, enter the 4-digit code',
      name: 'change_password_message',
      desc: 'Message shown when changing password',
      args: [phoneNumber],
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
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
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
    return Intl.message(
      'Contact Us',
      name: 'contact_us',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get about_us {
    return Intl.message(
      'About Us',
      name: 'about_us',
      desc: '',
      args: [],
    );
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
    return Intl.message(
      'OTP',
      name: 'otp',
      desc: '',
      args: [],
    );
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
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
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

  /// `New account`
  String get new_account {
    return Intl.message(
      'New account',
      name: 'new_account',
      desc: '',
      args: [],
    );
  }

  /// `please enter your name`
  String get Please_enter_your_name {
    return Intl.message(
      'please enter your name',
      name: 'Please_enter_your_name',
      desc: '',
      args: [],
    );
  }

  /// `All name`
  String get name {
    return Intl.message(
      'All name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Alredy have an account ? `
  String get have_an_account {
    return Intl.message(
      'Alredy have an account ? ',
      name: 'have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions.`
  String get Terms_and_Conditions {
    return Intl.message(
      'Terms and Conditions.',
      name: 'Terms_and_Conditions',
      desc: '',
      args: [],
    );
  }

  /// `By creating an account, you agree to our`
  String get checkbox_content {
    return Intl.message(
      'By creating an account, you agree to our',
      name: 'checkbox_content',
      desc: '',
      args: [],
    );
  }

  /// `Please accept the terms and conditions`
  String get acceptTerms {
    return Intl.message(
      'Please accept the terms and conditions',
      name: 'acceptTerms',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak.`
  String get weakPassword {
    return Intl.message(
      'The password provided is too weak.',
      name: 'weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `The account already exists for that email.`
  String get emailAlreadyInUse {
    return Intl.message(
      'The account already exists for that email.',
      name: 'emailAlreadyInUse',
      desc: '',
      args: [],
    );
  }

  /// `An unknown error occurred: please try again later`
  String get unknownError {
    return Intl.message(
      'An unknown error occurred: please try again later',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Sign-up successful`
  String get signUpSuccess {
    return Intl.message(
      'Sign-up successful',
      name: 'signUpSuccess',
      desc: '',
      args: [],
    );
  }

  /// `There is a problem with the internet connection`
  String get noInternet {
    return Intl.message(
      'There is a problem with the internet connection',
      name: 'noInternet',
      desc: '',
      args: [],
    );
  }

  /// `There is a problem with the email or password`
  String get invalidEmailOrPassword {
    return Intl.message(
      'There is a problem with the email or password',
      name: 'invalidEmailOrPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login successful`
  String get loginSuccess {
    return Intl.message(
      'Login successful',
      name: 'loginSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Sign-in was cancelled.`
  String get signInCancelled {
    return Intl.message(
      'Sign-in was cancelled.',
      name: 'signInCancelled',
      desc: '',
      args: [],
    );
  }

  /// `This email is already registered using a different sign-in method. Please use the original sign-in method.`
  String get accountExistsWithDifferentCredential {
    return Intl.message(
      'This email is already registered using a different sign-in method. Please use the original sign-in method.',
      name: 'accountExistsWithDifferentCredential',
      desc: '',
      args: [],
    );
  }

  /// `A platform error occurred. Please try again.`
  String get platformError {
    return Intl.message(
      'A platform error occurred. Please try again.',
      name: 'platformError',
      desc: '',
      args: [],
    );
  }

  /// `The request timed out. Please check your connection.`
  String get timeout {
    return Intl.message(
      'The request timed out. Please check your connection.',
      name: 'timeout',
      desc: '',
      args: [],
    );
  }

  /// `Google Sign-In failed. Please try again.`
  String get googleSignInFailed {
    return Intl.message(
      'Google Sign-In failed. Please try again.',
      name: 'googleSignInFailed',
      desc: '',
      args: [],
    );
  }

  /// `Search for...`
  String get searchHint {
    return Intl.message(
      'Search for...',
      name: 'searchHint',
      desc: '',
      args: [],
    );
  }

  /// `Best selling`
  String get bestSelling {
    return Intl.message(
      'Best selling',
      name: 'bestSelling',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `My Account`
  String get profile {
    return Intl.message(
      'My Account',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Shopping Cart`
  String get cart {
    return Intl.message(
      'Shopping Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Good morning!..`
  String get goodMorning {
    return Intl.message(
      'Good morning!..',
      name: 'goodMorning',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =0{Your cart is empty} =1{You have 1 item in your shopping cart} other{You have {count} items in your shopping cart}}`
  String cartItemsCount(num count) {
    return Intl.plural(
      count,
      zero: 'Your cart is empty',
      one: 'You have 1 item in your shopping cart',
      other: 'You have $count items in your shopping cart',
      name: 'cartItemsCount',
      desc: '',
      args: [count],
    );
  }

  /// `Payment {amount} EGP`
  String paymentAmount(double amount) {
    return Intl.message(
      'Payment $amount EGP',
      name: 'paymentAmount',
      desc: 'Payment message with variable amount',
      args: [amount],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Shipping`
  String get shipping {
    return Intl.message(
      'Shipping',
      name: 'shipping',
      desc: '',
      args: [],
    );
  }

  /// `Confirm & Continue`
  String get confirm_continue {
    return Intl.message(
      'Confirm & Continue',
      name: 'confirm_continue',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
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
