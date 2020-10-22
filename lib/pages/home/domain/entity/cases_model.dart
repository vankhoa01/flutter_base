// To parse this JSON data, do
//
//     final CasesModel = CasesModelFromJson(jsonString);

import 'dart:convert';

import 'package:hive/hive.dart';

import 'country.dart';
import 'global.dart';

part 'cases_model.g.dart';

@HiveType(typeId: 1)
class CasesModel {
  @HiveField(0)
  final Global global;

  @HiveField(1)
  final List<Country> countries;

  @HiveField(2)
  final String date;

  CasesModel({
    this.global,
    this.countries,
    this.date,
  });

  factory CasesModel.fromRawJson(String str) =>
      CasesModel.fromJson(json.decode(str) as Map<String, dynamic>);

  String toRawJson() => json.encode(toJson());

  factory CasesModel.fromJson(Map<String, dynamic> json) => CasesModel(
        global: json["Global"] == null
            ? null
            : Global.fromJson(json["Global"] as Map<String, dynamic>),
        countries: json["Countries"] == null
            ? null
            : List<Country>.from(
                (json["Countries"] as List<dynamic>)
                    .map((x) => Country.fromJson(x as Map<String, dynamic>)),
              ),
        date: json["Date"] == null ? null : json["Date"] as String,
      );

  Map<String, dynamic> toJson() => {
        "Global": global == null ? null : global.toJson(),
        "Countries": countries == null
            ? null
            : List<dynamic>.from(countries.map((x) => x.toJson())),
        "Date": date == null ? null : date,
      };
}
