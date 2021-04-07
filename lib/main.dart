import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'database/hive.dart';
import 'routes/app_pages.dart';
import 'shared/logger/logger_utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveDatabase.initHiveDatabase();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      logWriterCallback: Logger.write,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
