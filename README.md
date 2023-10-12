# Salingsapa Project

[![Codemagic build status](https://api.codemagic.io/apps/642645586c092f62d7cd27b1/642c624515a0bb9f0fdcf443/status_badge.svg)](https://codemagic.io/apps/642645586c092f62d7cd27b1/642c624515a0bb9f0fdcf443/latest_build)

A video call application that allows deaf individuals to communicate with hearing individuals using sign language recognition and speech-to-text.

## Project Specifications

1. Utilizes "Clean Architecture."
2. Employs BLoC state management.
3. Uses WebRTC with Agora for video calls.
4. Backend powered by Firebase.
5. Speech-to-Text functionality using Native Android & iOS APIs.
6. Sign Language Recognition using TensorflowLite.
7. CI/CD integration through Codemagic.
8. Dataset obtained from ASL Alphanet by Akash [here](https://www.kaggle.com/datasets/grassknoted/asl-alphabet/data).

## How to Configure?

### Flutter Build Commands

#### Build Development

```shell
flutter build ios --flavor development --target=lib/main_dev.dart
```

#### Build Android Appbundle Development

```shell
flutter build appbundle --flavor development --target=lib/main_dev.dart
```

### Firebase Update Commands

#### Development Flavor

```shell
flutterfire config \
--project=salingsapa-project \
--out=lib/firebase_options_dev.dart \
--ios-bundle-id=dev.baharudin.salingsapa-dev \
--android-app-id=dev.baharudin.salingsapa.dev
```

#### Production Flavor

```shell
flutterfire config \
--project=salingsapa-project \
--out=lib/firebase_options_prod.dart \
--ios-bundle-id=dev.baharudin.salingsapa \
--android-package-name=dev.baharudin.salingsapa
```


## Additional Information

- Author of the repository: Baharudin Yusup
- LinkedIn Profile: [https://linkedin.com/in/baharudin-yusup](https://linkedin.com/in/baharudin-yusup)
