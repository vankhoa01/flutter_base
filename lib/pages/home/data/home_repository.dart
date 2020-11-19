import 'package:get_demo/shared/utils/connection.dart';
import 'package:hive/hive.dart';

import '../../../database/hive.dart';

import '../../../shared/api_client/api_client.dart';
import '../domain/adapters/repository_adapter.dart';
import '../domain/entity/cases_model.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({this.apiClient, this.hiveDatabase});

  final ApiClient apiClient;
  final HiveDatabase hiveDatabase;

  @override
  Future<CasesModel> getCases() async {
    var casesBox = await hiveDatabase.openCasesBox();
    if(await ConnectionUtils.isNetworkConnected()) {
      try {
        final response = await apiClient.get(ApiClient.SUMMARY);
        var casesModel = CasesModel.fromJson(
            response.data as Map<String, dynamic>
        );
        casesBox.put(HiveDatabase.CASES_BOX, casesModel);
        return casesBox.get(HiveDatabase.CASES_BOX) as CasesModel;
      } on Exception catch (e) {
        if(casesBox.get(HiveDatabase.CASES_BOX).toString().isNotEmpty) {
          return casesBox.get(HiveDatabase.CASES_BOX) as CasesModel;
        } else {
          return Future.error('Please check your network connection');
        }
      }
    } else {
      if(casesBox.get(HiveDatabase.CASES_BOX).toString().isNotEmpty) {
        return casesBox.get(HiveDatabase.CASES_BOX) as CasesModel;
      } else {
        return Future.error('Please check your network connection');
      }
    }
  }
}
