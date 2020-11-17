import 'package:flutter/material.dart';
import '../database/hive.dart';

import 'app.dart';

enum EnvType { DEVELOPMENT, STAGING, PRODUCTION, TESTING }

class Environment {
  static Environment value;

  String baseUrl;
  EnvType environmentType = EnvType.DEVELOPMENT;

  Environment() {
    value = this;
    _init();
  }

  void _init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await HiveDatabase.initHiveDatabase();
    runApp(MyApp());
  }
}
