// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(time) => "Resend  code within ${time}";

  static String m1(count) =>
      "${Intl.plural(count, zero: 'Your cart is empty', one: 'You have 1 item in your shopping cart', other: 'You have ${count} items in your shopping cart')}";

  static String m2(phoneNumber) =>
      "A text message has been sent to ${phoneNumber}, enter the 4-digit code";

  static String m3(amount) => "Payment ${amount} EGP";

  static String m4(amount) => "${amount} EGP";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Email": MessageLookupByLibrary.simpleMessage("Email"),
        "Please_enter_your_email":
            MessageLookupByLibrary.simpleMessage("Please enter your email"),
        "Please_enter_your_name":
            MessageLookupByLibrary.simpleMessage("please enter your name"),
        "Resend_code_time": m0,
        "Terms_and_Conditions":
            MessageLookupByLibrary.simpleMessage("Terms and Conditions."),
        "Welcome_to": MessageLookupByLibrary.simpleMessage("Welcome to"),
        "about_us": MessageLookupByLibrary.simpleMessage("About Us"),
        "acceptTerms": MessageLookupByLibrary.simpleMessage(
            "Please accept the terms and conditions"),
        "accountExistsWithDifferentCredential":
            MessageLookupByLibrary.simpleMessage(
                "This email is already registered using a different sign-in method. Please use the original sign-in method."),
        "address": MessageLookupByLibrary.simpleMessage("Address"),
        "bestSelling": MessageLookupByLibrary.simpleMessage("Best selling"),
        "cart": MessageLookupByLibrary.simpleMessage("Shopping Cart"),
        "cartItemsCount": m1,
        "cart_is_empty":
            MessageLookupByLibrary.simpleMessage("Your cart is empty"),
        "cash_on_delivery":
            MessageLookupByLibrary.simpleMessage("Cash on Delivery"),
        "change_password":
            MessageLookupByLibrary.simpleMessage("Change Password"),
        "change_password_message": m2,
        "checkbox_content": MessageLookupByLibrary.simpleMessage(
            "By creating an account, you agree to our"),
        "choose_payment_method":
            MessageLookupByLibrary.simpleMessage("Choose payment method"),
        "city": MessageLookupByLibrary.simpleMessage("City"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirm_continue":
            MessageLookupByLibrary.simpleMessage("Confirm & Continue"),
        "confirm_new_password":
            MessageLookupByLibrary.simpleMessage("Confirm New Password"),
        "contact_us": MessageLookupByLibrary.simpleMessage("Contact Us"),
        "create_account":
            MessageLookupByLibrary.simpleMessage("create account"),
        "delivery": MessageLookupByLibrary.simpleMessage("Delivery:"),
        "delivery_address":
            MessageLookupByLibrary.simpleMessage("Delivery Address"),
        "delivery_from_store":
            MessageLookupByLibrary.simpleMessage("Delivery from store"),
        "did_you_forgot_password":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "dont_have_an_account":
            MessageLookupByLibrary.simpleMessage("don\'t have an account ? "),
        "edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "emailAlreadyInUse": MessageLookupByLibrary.simpleMessage(
            "The account already exists for that email."),
        "enter_id":
            MessageLookupByLibrary.simpleMessage("Enter your ID number"),
        "floor_apartment": MessageLookupByLibrary.simpleMessage(
            "Floor number, Apartment number .."),
        "forgot_password":
            MessageLookupByLibrary.simpleMessage(" Forgot Password"),
        "goodMorning": MessageLookupByLibrary.simpleMessage("Good morning!.."),
        "googleSignInFailed": MessageLookupByLibrary.simpleMessage(
            "Google Sign-In failed. Please try again."),
        "have_an_account":
            MessageLookupByLibrary.simpleMessage("Alredy have an account ? "),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "invalidEmailOrPassword": MessageLookupByLibrary.simpleMessage(
            "There is a problem with the email or password"),
        "item_added_to_cart": MessageLookupByLibrary.simpleMessage(
            "Mango has been added to the cart"),
        "item_removed_from_cart": MessageLookupByLibrary.simpleMessage(
            "Item has been removed from the cart"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "loginSuccess":
            MessageLookupByLibrary.simpleMessage("Login successful"),
        "login_with_appel":
            MessageLookupByLibrary.simpleMessage("Login with appel"),
        "login_with_facebook":
            MessageLookupByLibrary.simpleMessage("Login with facebook"),
        "login_with_googel":
            MessageLookupByLibrary.simpleMessage("Login with googel"),
        "more": MessageLookupByLibrary.simpleMessage("More"),
        "name": MessageLookupByLibrary.simpleMessage("All name"),
        "new_account": MessageLookupByLibrary.simpleMessage("New account"),
        "new_password": MessageLookupByLibrary.simpleMessage("New Password"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "noInternet": MessageLookupByLibrary.simpleMessage(
            "There is a problem with the internet connection"),
        "onBoarSubTitle1": MessageLookupByLibrary.simpleMessage(
            "Discover a unique shopping experience with FruitHUB. Explore our wide selection of premium fresh fruits and get the best deals and highest quality."),
        "onBoarSubTitle2": MessageLookupByLibrary.simpleMessage(
            "We offer you the finest, carefully selected fruits. Check out the details, photos, and reviews to make sure you\'re choosing the perfect fruit."),
        "operation_success": MessageLookupByLibrary.simpleMessage(
            "Operation completed successfully"),
        "or": MessageLookupByLibrary.simpleMessage("or"),
        "order_summary": MessageLookupByLibrary.simpleMessage("Order Summary:"),
        "otp": MessageLookupByLibrary.simpleMessage("OTP"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "password_changed_successfully": MessageLookupByLibrary.simpleMessage(
            "Password changed successfully"),
        "password_mismatch":
            MessageLookupByLibrary.simpleMessage("Passwords do not match"),
        "passwords_dose_not_match":
            MessageLookupByLibrary.simpleMessage("Passwords dose not match"),
        "pay_online": MessageLookupByLibrary.simpleMessage("Pay Online"),
        "payment": MessageLookupByLibrary.simpleMessage("Payment"),
        "paymentAmount": m3,
        "phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "platformError": MessageLookupByLibrary.simpleMessage(
            "A platform error occurred. Please try again."),
        "please_enter_address":
            MessageLookupByLibrary.simpleMessage("Please enter the address"),
        "please_enter_city":
            MessageLookupByLibrary.simpleMessage("Please enter the city"),
        "please_enter_floor_apartment": MessageLookupByLibrary.simpleMessage(
            "Please enter floor number, apartment number .."),
        "please_enter_phone": MessageLookupByLibrary.simpleMessage(
            "Please enter your phone number"),
        "please_enter_valid_email":
            MessageLookupByLibrary.simpleMessage("Please enter a valid email"),
        "please_select_payment": MessageLookupByLibrary.simpleMessage(
            "Please select a payment method"),
        "pound": MessageLookupByLibrary.simpleMessage("pound"),
        "price": m4,
        "products": MessageLookupByLibrary.simpleMessage("Products"),
        "profile": MessageLookupByLibrary.simpleMessage("My Account"),
        "required_password":
            MessageLookupByLibrary.simpleMessage("Please enter your password"),
        "searchHint": MessageLookupByLibrary.simpleMessage("Search for..."),
        "search_markteng":
            MessageLookupByLibrary.simpleMessage("Search and Marcting"),
        "shipping": MessageLookupByLibrary.simpleMessage("Shipping"),
        "signInCancelled":
            MessageLookupByLibrary.simpleMessage("Sign-in was cancelled."),
        "signUpSuccess":
            MessageLookupByLibrary.simpleMessage("Sign-up successful"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "start_now": MessageLookupByLibrary.simpleMessage("Start Now"),
        "subtotal": MessageLookupByLibrary.simpleMessage("Subtotal:"),
        "timeout": MessageLookupByLibrary.simpleMessage(
            "The request timed out. Please check your connection."),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "unknownError": MessageLookupByLibrary.simpleMessage(
            "An unknown error occurred: please try again later"),
        "weakPassword": MessageLookupByLibrary.simpleMessage(
            "The password provided is too weak."),
        "wrong_data":
            MessageLookupByLibrary.simpleMessage("plase enter a valid data"),
        "wrong_password": MessageLookupByLibrary.simpleMessage("Wrong password")
      };
}
