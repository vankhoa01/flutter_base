import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../database/hive.dart';
import '../../../shared/api_client/api_client.dart';
import '../data/home_repository.dart';
import '../domain/adapters/repository_adapter.dart';
import '../presentation/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiClient(Dio()));
    Get.lazyPut(() => HiveDatabase());
    Get.lazyPut<IHomeRepository>(() => HomeRepository(
        apiClient: Get.find(),
        hiveDatabase: Get.find())
    );
    Get.lazyPut(() => HomeController(homeRepository: Get.find())
    );
  }
}
