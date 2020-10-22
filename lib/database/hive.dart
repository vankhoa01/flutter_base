import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../pages/home/domain/entity/cases_model.dart';
import '../pages/home/domain/entity/country.dart';
import '../pages/home/domain/entity/global.dart';

class HiveDatabase {
  static const String CASES_BOX = 'casesBox';
  static const String COUNTRY_BOX = 'countryBox';
  static const String GLOBAL_BOX = 'globalBox';

  static Future<void> initHiveDatabase() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);

    Hive.registerAdapter(CasesModelAdapter());
    Hive.registerAdapter(CountryAdapter());
    Hive.registerAdapter(GlobalAdapter());
  }

  Future<Box> openCasesBox() async {
    var casesBox = await Hive.openBox(CASES_BOX);
    return casesBox;
  }
}