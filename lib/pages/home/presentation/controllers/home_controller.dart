import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../../../database/hive.dart';
import '../../../../shared/languages/localization.dart';
import '../../../../shared/utils/connection.dart';
import '../../domain/adapters/repository_adapter.dart';
import '../../domain/entity/cases_model.dart';

enum Status { loading, success, error }

class HomeController extends GetxController {
  HomeController({this.homeRepository, this.hiveDatabase});

  /// inject repo abstraction dependency
  final IHomeRepository homeRepository;

  /// create a reactive status from request with initial value = loading
  final status = Status.loading.obs;

  /// create a reactive CasesModel. CasesModel().obs has same result
  final cases = Rx<CasesModel>();

  final HiveDatabase hiveDatabase;

  Box casesBox;

  final AppLocalizations_Labels labels = AppLocalizations.of(Get.context);

  /// When the controller is initialized, make the http request
  @override
  Future<void> onInit() async {
    super.onInit();
    casesBox = await hiveDatabase.openCasesBox();
    fetchDataFromApi();
  }

  /// fetch cases from Api
  Future<void> fetchDataFromApi() async {
    /// When the repository returns the value, change the status to success,
    /// and fill in "cases"
    if(await ConnectionUtils.isNetworkConnected()) {
        return homeRepository.getCases().then(
            (data) async {
          casesBox.put(HiveDatabase.CASES_BOX, data);
          cases(casesBox.get(HiveDatabase.CASES_BOX) as CasesModel);
          status(Status.success);
        },

        /// In case of error, print the error and change the status
        /// to Status.error
        onError: (err) {
          print("$err");
          return status(Status.error);
        },
      );
    } else {
      cases(casesBox.get(HiveDatabase.CASES_BOX) as CasesModel);
      status(Status.success);
    }
  }
}
