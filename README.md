# Salingsapa Project

A Final Exam Project

## Getting Started

### Flutter Build Commands
#### Build Dev
````shell
flutter build ios --flavor development --target=lib/main_dev.dart
````

#### Build Android Appbundle Dev
````shell
flutter build appbundle --flavor development --target=lib/main_dev.dart
````

### Firebase update commands
#### Dev flavor
```shell
flutterfire config \
--project=salingsapa-project \
--out=lib/firebase_options_dev.dart \
--ios-bundle-id=dev.baharudin.salingsapa-dev \
--android-app-id=dev.baharudin.salingsapa.dev
```

### App Localization
```shell
flutter gen-l10n
```

### Build runner
```shell
dart run build_runner watch --delete-conflicting-outputs 
```