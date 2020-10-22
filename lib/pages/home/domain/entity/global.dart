import 'dart:convert';

import 'package:hive/hive.dart';

part 'global.g.dart';

@HiveType(typeId: 3)
class Global {
  @HiveField(0)
  final int newConfirmed;

  @HiveField(1)
  final int totalConfirmed;

  @HiveField(2)
  final int newDeaths;

  @HiveField(3)
  final int totalDeaths;

  @HiveField(4)
  final int newRecovered;

  @HiveField(5)
  final int totalRecovered;

  Global({
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
  });

  factory Global.fromRawJson(String str) =>
      Global.fromJson(json.decode(str) as Map<String, dynamic>);

  String toRawJson() => json.encode(toJson());

  factory Global.fromJson(Map<String, dynamic> json) => Global(
    newConfirmed:
    json["NewConfirmed"] == null ? null : json["NewConfirmed"] as int,
    totalConfirmed: json["TotalConfirmed"] == null
        ? null
        : json["TotalConfirmed"] as int,
    newDeaths: json["NewDeaths"] == null ? null : json["NewDeaths"] as int,
    totalDeaths:
    json["TotalDeaths"] == null ? null : json["TotalDeaths"] as int,
    newRecovered:
    json["NewRecovered"] == null ? null : json["NewRecovered"] as int,
    totalRecovered: json["TotalRecovered"] == null
        ? null
        : json["TotalRecovered"] as int,
  );

  Map<String, dynamic> toJson() => {
    "NewConfirmed": newConfirmed == null ? null : newConfirmed,
    "TotalConfirmed": totalConfirmed == null ? null : totalConfirmed,
    "NewDeaths": newDeaths == null ? null : newDeaths,
    "TotalDeaths": totalDeaths == null ? null : totalDeaths,
    "NewRecovered": newRecovered == null ? null : newRecovered,
    "TotalRecovered": totalRecovered == null ? null : totalRecovered,
  };
}