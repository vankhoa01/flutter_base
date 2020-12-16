# Flutter Starter Kit

A starter kit for beginner learns with Get library (State Manager, Navigation Manager and Dependencies Manager), RxDart, Hive, Localization and Dio to architect a flutter project. This starter kit build an Covid-19 app as a example

<img src="https://i.ibb.co/rvC6NdJ/Simulator-Screen-Shot-i-Phone-X-2020-12-16-at-10-19-20.png" width="300"> <img src="https://i.ibb.co/P4gkDd2/Simulator-Screen-Shot-i-Phone-X-2020-12-16-at-10-19-25.png" width="300"> <img src="https://i.ibb.co/CWhRxgB/Simulator-Screen-Shot-i-Phone-X-2020-12-16-at-10-19-30.png" width="300">

## Feature
- Get Pattern by [Get](https://pub.dev/packages/get)
- Navigate pages by [Get](https://pub.dev/packages/get)
- Dependencies by [Get](https://pub.dev/packages/get)
- Local cache by using [Hive](https://pub.dev/packages/hive)
- Restful api call by using [Dio](https://github.com/flutterchina/dio)
- Localization by using [flutter_sheet_localization](https://github.com/aloisdeniel/flutter_sheet_localization)
- Environment Variable & Project Config (Like App Name, Bundle Id) based on different project [flavour](https://medium.com/@animeshjain/build-flavors-in-flutter-android-and-ios-with-different-firebase-projects-per-flavor-27c5c5dac10b) (Development, Staging & Production)
- Build pojo by using [json_serializable](https://pub.dev/packages/json_serializable)
- [Screen Util](https://github.com/OpenFlutter/flutter_screenutil)

## Install

1. Follow flutter [official setup guide](https://flutter.io/docs/get-started/install) to set up flutter environment
2. Download [flutter version](https://flutter.dev/docs/development/tools/sdk/releases)

## Run Config
1. Run: flutter create .
2. Click 'Edit Configuration'
3. Point to specs main in lib/app_config folder

## Useful Command

### Run flutter_starter_kit

```
flutter create .
```

For development,

```
flutter run -t lib/app_config/main_development.dart
```

For staging,
```
flutter run -t lib/app_config/main_production.dart
```

For production,
```
flutter run --flavor production -t lib/config/main_production.dart
```

### Generate json serialize and deserialize functions

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

## Next action

- Config build flavors in Android & iOS native
- Add Fastlane for CI/CD
- Add Sonar static code analysis
- ......

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/documentation/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/documentation/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
