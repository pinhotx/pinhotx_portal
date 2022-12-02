import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:pinhotx_portal/src/my_app.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:pinhotx_portal/firebase_options.dart';
//import 'package:firebase_app_check/firebase_app_check.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await FirebaseAppCheck.instance.activate(
  //   webRecaptchaSiteKey: 'recaptcha-v3-site-key',
  //   // Default provider for Android is the Play Integrity provider. You can use the "AndroidProvider" enum to choose
  //   // your preferred provider. Choose from:
  //   // 1. debug provider
  //   // 2. safety net provider
  //   // 3. play integrity provider
  //   // androidProvider: AndroidProvider.debug,
  // );

  runApp(const MyApp());
}
