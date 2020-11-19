import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../../../database/hive.dart';
import '../../../../shared/languages/localization.dart';
import '../../../../shared/utils/connection.dart';
import '../../domain/adapters/repository_adapter.dart';
import '../../domain/entity/cases_model.dart';

enum Status { loading, success, error }

class HomeController extends GetxController {
  HomeController({this.homeRepository});

  /// inject repo abstraction dependency
  final IHomeRepository homeRepository;

  /// create a reactive status from request with initial value = loading
  final status = Status.loading.obs;

  /// create a reactive CasesModel. CasesModel().obs has same result
  final cases = Rx<CasesModel>();

  /// When the controller is initialized, make the http request
  @override
  Future<void> onInit() async {
    super.onInit();
    homeRepository.getCases().then(
            (data) async {
          cases(data);
          status(Status.success);
        },
      onError: (err) {
        print("$err");
        status(Status.error);
      },
    );
  }
}
