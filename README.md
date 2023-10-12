# Salingsapa Project

A video call apps to enable deaf people to communicate with normal people using sign language recognition and speech-to-text 

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

##### Prod
````shell
flutter build appbundle --flavor prod --target=lib/main_prod.dart
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

#### Prod flavor
```shell
flutterfire config \
--project=salingsapa-project \
--out=lib/firebase_options_prod.dart \
--ios-bundle-id=dev.baharudin.salingsapa \
--android-package-name=dev.baharudin.salingsapa
```

### App Localization
```shell
flutter gen-l10n
```

### Build runner
```shell
dart run build_runner watch --delete-conflicting-outputs 
```
