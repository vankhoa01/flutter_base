import 'package:dio/dio.dart';
import '../../../app_config/constants.dart';
import '../../../app_config/environment.dart';

import '../domain/adapters/repository_adapter.dart';
import '../domain/entity/cases_model.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({this.dio});

  final Dio dio;

  @override
  Future<CasesModel> getCases() async {
    try {
      final response = await dio.get(
          Environment.value.baseUrl + Constants.SUMMARY
      );
      return CasesModel.fromJson(response.data as Map<String, dynamic>);
    } on Exception catch (e) {
      print(e.toString());
      return Future.error(e.toString());
    }
  }
}
