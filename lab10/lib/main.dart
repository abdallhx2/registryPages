import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab10/Service/Service.dart';
import 'package:lab10/Service/locale.dart';
import 'package:lab10/home/home.dart';
import 'package:lab10/rigester/Signout.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'rigester/Signin.dart';

SharedPreferences? prefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  prefs = await SharedPreferences.getInstance();
  Start().onInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      translations: Languages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Color.fromARGB(255, 0, 47, 218),
        primaryColor: Color.fromARGB(255, 0, 47, 218),
      ),
      home: prefs?.get('id') == null ?signin() : home(),
    );
  }
}
