import 'package:flutter/material.dart';
import 'package:movies_app/config/routes/app_router.dart';
import 'package:movies_app/core/cache/shared_pref.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const MyApp());
}



