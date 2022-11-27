import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:pinhotx_portal/src/my_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pinhotx_portal/firebase_options.dart';

/// // ...

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
