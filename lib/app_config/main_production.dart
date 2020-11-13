import 'environment.dart';

void main() => Production();

class Production extends Environment {
  final String appName = "Flutter Starter";
  final String baseUrl = 'https://api.covid19api.com';
  EnvType environmentType = EnvType.PRODUCTION;
}
