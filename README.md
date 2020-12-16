# Flutter Starter Kit

A starter kit for beginner learns with Get pattern (it's same MVC or MVVM on native pattern), RxDart, Hive, Localization and Dio to architect a flutter project. This starter kit build an Covid-19 app as a example

## Feature
- Get Pattern by [Get](https://pub.dev/packages/get)
- Navigate pages by [Get](https://pub.dev/packages/get)
- Dependencies by [Get](https://pub.dev/packages/get)
- Local cache by using [Hive](https://pub.dev/packages/hive)
- Restful api call by using [Dio](https://github.com/flutterchina/dio)
- Localization by using [flutter_sheet_localization](https://github.com/aloisdeniel/flutter_sheet_localization)
- Environment Variable & Project Config (Like App Name, Bundle Id) based on different project flavour (Development, Staging & Production)
- Build pojo by using [json_serializable](https://pub.dev/packages/json_serializable)

## Install

1. Follow flutter [official setup guide](https://flutter.io/docs/get-started/install) to set up flutter environment
2. Download [flutter version](https://flutter.dev/docs/development/tools/sdk/releases)

## Run Config
1. Click 'Edit Configuration'
2. Point to specs main in lib/app_config folder

## Useful Command

### Run flutter_starter_kit

For development,

```
flutter run --flavor development -t lib/config/main_development.dart
```

For staging,
```
flutter run --flavor staging -t lib/config/main_staging.dart
```

For production,
```
flutter run --flavor production -t lib/config/main_production.dart
```

### Generate json serialize and deserialize functions

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/documentation/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/documentation/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
