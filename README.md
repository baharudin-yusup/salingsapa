![App Banner](docs/images/app-banner.png)

<a href='https://apps.apple.com/app/salingsapa/id6447261524'><img alt='Get it on Google Play' src='docs/icons/app-store-badge.svg' style="width: auto; height: 50px;"/></a>
<a href='https://play.google.com/store/apps/details?id=dev.baharudin.salingsapa&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img alt='Get it on Google Play' src='docs/icons/google-play-badge.svg' style="width: auto; height: 50px;"/></a>

# Salingsapa

[![Codemagic build status](https://api.codemagic.io/apps/642645586c092f62d7cd27b1/642c4ec2aac5ee7954a0bf2e/status_badge.svg)](https://codemagic.io/apps/642645586c092f62d7cd27b1/642c4ec2aac5ee7954a0bf2e/latest_build)

Salingsapa is a [Flutter](https://flutter.dev) application designed to make video calls more
inclusive. The app focuses on improving communication for individuals with hearing impairments by
incorporating [Sign Language Recognition](https://en.wikipedia.org/wiki/Sign_language_recognition)
and [Speech-to-Text](https://aws.amazon.com/what-is/speech-to-text/) features. Built
following [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
principles and utilizing [BLoC state management](https://bloclibrary.dev/), Salingsapa ensures a
robust and scalable solution.

Enjoy seamless, high-quality video calls powered by [Agora](https://www.agora.io/en/) and supported
by a strong [Firebase](https://firebase.google.com/) backend. Salingsapa aims to make communication
easier and more accessible for everyone.

## 🚀 Features

### Inclusive Video Calls

- Conduct video calls with a unique emphasis on inclusivity.
- Features
  advanced [Sign Language Recognition](https://en.wikipedia.org/wiki/Sign_language_recognition)
  and [Speech-to-Text](https://aws.amazon.com/what-is/speech-to-text/) for enhanced communication.
- Seamless video calls powered by WebRTC with [Agora](https://www.agora.io/en/) for high-quality and
  efficient communication.

### Sign Language Recognition

- Employs [TensorFlowLite](https://www.tensorflow.org/lite) to recognize and interpret Sign Language
  gestures.
- Enhances communication for individuals with hearing impairments.

### Speech-to-Text Conversion

- Utilizes native Android and iOS APIs for
  real-time [Speech-to-Text](https://aws.amazon.com/what-is/speech-to-text/) conversion.
- Converts spoken words into text to aid understanding during calls.

## 🗂️ Project Structure

The project follows a well-structured directory layout to ensure scalability and maintainability.

```text
configs/
scripts/
lib/
├── core/
├── data/
├── domain/
├── presentation/
```

For more details, please refer to the [PROJECT_STRUCTURE.md](docs/PROJECT_STRUCTURE.md).

## 🛠️ Technical Specifications

### Backend and Infrastructure

- **[Firebase](https://firebase.google.com/)**: Provides backend services for authentication,
  messaging, and remote configuration.

### Core Technologies

- **[Agora RTC Engine](https://www.agora.io/en/)**: Powers seamless and high-quality video calls
  using WebRTC.
- **[TensorFlowLite](https://www.tensorflow.org/lite)**: Utilized for Sign Language Recognition to
  enhance communication for individuals with hearing impairments.
- **[BLoC (Business Logic Component)](https://bloclibrary.dev/)**: Manages state efficiently,
  ensuring scalable and maintainable application logic.

### Additional Dependencies

- **[Dio](https://pub.dev/packages/dio)**: Manages HTTP requests for data communication.
- **[Flutter Localizations](https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization)
  and [Intl](https://pub.dev/packages/intl)**: Supports multiple languages and localization.
- **[Dynamic Color](https://pub.dev/packages/dynamic_color)**: Enhances the user interface and
  experience with adaptive color schemes.

### Architecture

- **[Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
  **: Ensures the maintainability and scalability of the codebase, separating concerns into distinct
  layers (presentation, domain, data).

### Continuous Integration and Deployment

- **[Codemagic](https://codemagic.io/)**: Automates CI/CD processes, streamlining development and
  deployment.

### Machine Learning Model

- **[ASL Alphabet Dataset](https://www.kaggle.com/datasets/grassknoted/asl-alphabet/data)**: The
  Sign Language Recognition model is trained using the ASL Alphabet dataset by Akash.

## ▶️ How to Run the App

### Prerequisites

Before you begin, make sure you have:

- Flutter installed on your machine.
- An emulator or a physical device connected for testing.
- Android SDK (for running the Android app).
- Cocoapods and Xcode (for running the iOS app).

### Steps

1. **Clone the Repository**

   ```shell
   git clone https://github.com/baharudin-yusup/salingsapa.git
   cd salingsapa
   ```

2. **Run the App**

   - **Configuring and Running Automatically**

     - **Visual Studio Code**

       1. Open the "Run and Debug" panel.
       2. Choose the appropriate configuration:

          - DEV App
          - PROD App

       3. Run the selected configuration.

     - **Android Studio/IntelliJ IDEA**

       1. Open the "Run/Debug and Configuration" dropdown.
       2. Choose the appropriate configuration:

          - DEV App (Windows)
          - PROD App (Windows)
          - DEV App (Mac/Linux)
          - PROD App (Mac/Linux)

       3. Run the selected configuration.

   - **Configuring and Running Manually**

     This example demonstrates how to run the app manually on MacOS in a development environment:

     1. Initialize Environment

        Run the `initialize-env.sh` script with the `--env dev` argument to set up the
        development
        environment.

        ```shell
        chmod +x ./scripts/initialize-env.sh && ./scripts/initialize-env.sh --env dev
        ```

     2. Initialize Firebase Options

        Run the `initialize-firebase-options.sh` script with the `--env dev` argument to set up
        Firebase
        options for the development environment.

        ```shell
        chmod +x ./scripts/initialize-firebase-options.sh && ./scripts/initialize-firebase-options.sh --env dev
        ```

     3. Generate Necessary Files

        Run the following command to generate necessary files and delete any conflicting outputs.

        ```shell
        dart run build_runner build --delete-conflicting-outputs
        ```

     4. Install Flutter Packages

        Run the following command to install required Flutter packages.

        ```shell
        flutter pub get
        ```

     5. Run the App

        Finally, run the app with the specified flavor and target.

        ```shell
        flutter run --flavor dev --target=lib/main_dev.dart
        ```

---

We hope you find Salingsapa useful and enjoyable to use. If you have any questions, suggestions, or
issues, please feel free to open an issue on
our [GitHub repository](https://github.com/baharudin-yusup/salingsapa/issues).
