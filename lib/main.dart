import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:pinhotx_portal/src/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();

  runApp(const MyApp());
}
