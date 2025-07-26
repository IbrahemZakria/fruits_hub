import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/bloco_bserver.dart';
import 'package:fruit_hub/core/utils/services/get_it_services.dart';
import 'package:fruit_hub/core/utils/services/shared_preferance.dart';
import 'package:fruit_hub/fruit_hub_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Bloc.observer = MyBlocObserver();
  await SharedPreferance.init();
  setup();
  runApp(const FruitHubApp());
}
