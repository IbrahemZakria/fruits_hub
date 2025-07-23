import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/bloco_bserver.dart';
import 'package:fruit_hub/core/utils/services/shared_preferance.dart';
import 'package:fruit_hub/fruit_hub_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  await SharedPreferance.init();
  runApp(const FruitHubApp());
}
