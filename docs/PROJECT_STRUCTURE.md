# Project Structure of Salingsapa

This document explains the structure of the salingsapa Flutter project, detailing the purpose of each folder and key files within them. This structure follows best practices for [clean architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html), [SOLID principles](https://www.freecodecamp.org/news/solid-principles-for-better-software-design), and organized state management using [BLoC](https://bloclibrary.dev).

## Directory Structure

```text
configs/
scripts/
lib/
├── core/
│   ├── utils/
│   ├── env.dart
│   ├── firebase_options.dart
│   └── injection_container.dart
├── data/
│   ├── constants/
│   ├── datasources/
│   │   ├── local/
│   │   ├── remote/
│   │   └── cache/
│   ├── models/
│   │   ├── api/
│   │   │   ├── requests/
│   │   │   └── responses/
│   │   ├── cache/
│   │   ├── exception/
│   │   └── local/
│   ├── plugins/
│   ├── repositories/
│   └── utils/
├── domain/
│   ├── entities/
│   ├── errors/
│   ├── repositories/
│   └── usecases/
├── l10n/
│   ├── app_en.arb
├── presentation/
│   ├── blocs/
│   ├── components/
│   ├── routes/
│   ├── screens/
│   ├── services/
│   └── utils/
├── main_dev.dart
├── main_prod.dart
```

## Directory and File Explanations

### `configs/`

Contains configuration files and settings for the project. These configurations include environment
settings, build configurations, and other global settings necessary for the project.

- Example: Environment settings file for different environments (development, production).

### `scripts/`

Includes scripts for automating tasks such as setting up the project environment, building the
project, and other automation tools.

- Example: `initialize-env.sh` script for initializing the environment.

### `lib/core/`

Contains core functionality and configurations used throughout the application. These are essential
components that are used widely across different layers of the app.

- **utils/**: Utility classes and functions used across the application.
  - Example: `logger.dart` for logging utilities.
- **env.dart**: Environment configuration.
  - Example: `env.dart` contains configuration variables.
- **firebase_options.dart**: Firebase configuration options for different platforms.
  - Example: `firebase_options.dart` contains Firebase configuration options.
- **injection_container.dart**: Sets up dependency injection using `get_it`.
  - Example: `injection_container.dart` sets up dependency injection.

### `lib/data/`

Handles data management, including data sources, models, and repositories. This layer is responsible
for fetching, storing, and managing data.

- **constants/**: Defines constants used in data management.
  - Example: `api_endpoints.dart` contains API endpoint constants.
- **datasources/**: Implementations for accessing data from different sources.
  - **cache/**: Cache data sources to store temporary data.
    - Example: `user_cache_datasource.dart` handles cache data storage for user data.
  - **local/**: Local data sources such as databases or file storage.
    - Example: `user_local_datasource.dart` handles local data storage for user data.
  - **remote/**: Remote data sources like web APIs.
    - Example: `user_remote_datasource.dart` handles remote data source implementation for
      user data.
- **models/**: Data models represent the structure of data used in the app.
  - **api/**: Models for API communication.
    - **requests/**: Request models for API endpoints.
      - Example: `update_user_profile_request.dart` model for updating user profile API
        requests.
    - **responses/**: Response models for API endpoints.
      - Example: `create_room_response.dart` model for API responses when creating a room.
    - Example: `user_model.dart` represents the user data model for API communication.
  - **cache/**: Models for cached data.
    - Example: `session_cache_model.dart` for session data stored in cache.
  - **exception/**: Models for handling exceptions.
    - Example: `api_exception.dart` handles API exceptions.
  - **local/**: Models for locally stored data.
    - Example: `settings_local_model.dart` for settings data stored locally.
- **plugins/**: Custom plugins for various functionalities.
  - Example: `network_plugin.dart` manages network-related functionalities.
- **repositories**: Manages data operations using repository pattern.
  - Example: `authentication_repository_impl.dart` implements authentication data repository.
- **utils**: Utility classes and functions used in the data layer.
  - Example: `timestamp_converter.dart` for converting `DateTime` to `Timestamp` and vice
    versa.

### `lib/domain/`

Defines the core business logic and entities of the application. This layer is independent of any
other layer, ensuring that business rules are not influenced by external concerns.

- **entities**: Core entities of the application representing the main data objects.
  - Example: `user.dart` defines the `User` entity.
- **errors**: Defines failure classes used for error handling.
  - Example: `failure.dart` defines the `Failure` class used for error handling.
- **repositories**: Interfaces for repository pattern.
  - Example: `authentication_repository.dart` interface for authentication data repository.
- **usecases**: Application-specific use cases encapsulating the business logic.
  - Example: `get_user_data.dart` use case for retrieving user data.

### `l10n/`

Contains localization files to support multiple languages in the application.

- Example: `app_en.arb` localization file for English.

### `lib/presentation/`

Manages the UI layer and state management of the application. This layer interacts with the domain
layer to present the data to the user.

- **blocs**: Contains BLoC (Business Logic Component) classes for managing state.
  - Example: `authorization_bloc.dart` BLoC for authorization-related state management.
- **components**: Reusable UI components.
  - Example: `intuitive_scaffold.dart` reusable scaffold component.
- **routes**: Manages the navigation routes within the application.
  - Example: `app_routes.dart` defines the application's navigation routes.
- **screens**: UI pages/screens of the application.
  - Example: `home_screen.dart` UI page for home screen.
- **services**: Services used in the presentation layer.
  - Example: `navigation_service.dart` handles navigation.
- **utils**: Utility classes and functions used in the presentation layer.
  - Example: `timestamp_converter.dart` for converting `DateTime` to `Timestamp` and vice
    versa.

### `main_dev.dart`

Entry point for the development environment. Configures the app for development settings.

### `main_prod.dart`

Entry point for the production environment. Configures the app for production settings.

---

This `PROJECT_STRUCTURE.md` provides a comprehensive overview of the salingsapa project's
structure, following best practices and clean architecture principles to ensure a scalable and
maintainable codebase.
