import 'environment.dart';

void main() => Development();

class Development extends Environment {
  final String appName = "Flutter Starter Dev";
  final String baseUrl = 'https://api.covid19api.com';
  EnvType environmentType = EnvType.DEVELOPMENT;
}
