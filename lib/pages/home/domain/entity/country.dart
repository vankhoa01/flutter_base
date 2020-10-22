import 'dart:convert';

import 'package:hive/hive.dart';

part 'country.g.dart';

@HiveType(typeId: 2)
class Country {
  @HiveField(0)
  final String country;

  @HiveField(1)
  final String countryCode;

  @HiveField(2)
  final String slug;

  @HiveField(3)
  final int newConfirmed;

  @HiveField(4)
  final int totalConfirmed;

  @HiveField(5)
  final int newDeaths;

  @HiveField(6)
  final int totalDeaths;

  @HiveField(7)
  final int newRecovered;

  @HiveField(8)
  final int totalRecovered;

  @HiveField(9)
  final String date;

  Country({
    this.country,
    this.countryCode,
    this.slug,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered,
    this.date,
  });

  factory Country.fromRawJson(String str) =>
      Country.fromJson(json.decode(str) as Map<String, dynamic>);

  String toRawJson() => json.encode(toJson());

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    country: json["Country"] == null ? null : json["Country"] as String,
    countryCode:
    json["CountryCode"] == null ? null : json["CountryCode"] as String,
    slug: json["Slug"] == null ? null : json["Slug"] as String,
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
    date: json["Date"] == null ? null : json["Date"] as String,
  );

  Map<String, dynamic> toJson() => {
    "Country": country == null ? null : country,
    "CountryCode": countryCode == null ? null : countryCode,
    "Slug": slug == null ? null : slug,
    "NewConfirmed": newConfirmed == null ? null : newConfirmed,
    "TotalConfirmed": totalConfirmed == null ? null : totalConfirmed,
    "NewDeaths": newDeaths == null ? null : newDeaths,
    "TotalDeaths": totalDeaths == null ? null : totalDeaths,
    "NewRecovered": newRecovered == null ? null : newRecovered,
    "TotalRecovered": totalRecovered == null ? null : totalRecovered,
    "Date": date == null ? null : date,
  };
}