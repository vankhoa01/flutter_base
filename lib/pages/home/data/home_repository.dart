import '../../../shared/api_client/api_client.dart';
import '../domain/adapters/repository_adapter.dart';
import '../domain/entity/cases_model.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({this.apiClient});

  final ApiClient apiClient;

  @override
  Future<CasesModel> getCases() async {
    try {
      final response = await apiClient.get(ApiClient.SUMMARY);
      return CasesModel.fromJson(response.data as Map<String, dynamic>);
    } on Exception catch (e) {
      print(e.toString());
      return Future.error(e.toString());
    }
  }
}
