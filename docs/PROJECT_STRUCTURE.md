# Project Structure of `Salingsapa`

This document explains the structure of the `salingsapa` Flutter project, detailing the purpose of
each folder and key files within them. This structure follows best practices
for [clean architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html),
[SOLID principles](https://www.freecodecamp.org/news/solid-principles-for-better-software-design),
and organized state management using [BLoC](https://bloclibrary.dev).

## Directory Structure

```text
configs/
scripts/
lib/
├── core/
│   ├── errors/
│   ├── utils/
│   ├── env.dart
│   ├── injection_container.dart
│   ├── firebase_options.dart
├── data/
│   ├── constants/
│   ├── datasource/
│   │   ├── local/
│   │   ├── remote/
│   │   ├── cache/
│   ├── models/
│   │   ├── api/
│   │   │   ├── requests/
│   │   │   │   └── update_user_profile_request.dart
│   │   │   ├── responses/
│   │   │   │   └── update_user_profile_response.dart
│   │   ├── cache/
│   │   ├── local/
│   ├── plugins/
│   ├── repositories/
│   └── utils/
├── domain/
│   ├── entities/
│   ├── repositories/
│   └── usecases/
├── presentation/
│   ├── blocs/
│   │   └── authorization_bloc.dart
│   ├── components/
│   ├── routes/
│   ├── screens/
│   │   └── home_screen.dart
│   ├── services/
├── main_dev.dart
├── main_prod.dart
```

## Directory and File Explanations

### `configs/`

Contains configuration files and settings for the project. This can include various environment
settings, build configurations, and other global configurations.

### `scripts/`

Contains scripts for setting up, building, and managing the project. This can include setup scripts,
build scripts, and other automation tools.

### `lib/core/`

Contains the core functionality and configurations used throughout the application.

- **errors/**: Contains error handling classes and definitions.
    - `failure.dart`: Defines the `Failure` class used for error handling.
- **utils/**: Utility functions and classes.
    - Various utility files used across the app.
- `env.dart`: Configuration for different environments (development, staging, production).
- `injection_container.dart`: Sets up dependency injection using GetIt or another DI framework.
- `firebase_options.dart`: Configuration options for initializing Firebase.

### `lib/data/`

Manages data sources, models, and repositories.

- **constants/**: Contains constant values used in the data layer.
    - `api_constants.dart`: Defines various constants for API.
- **datasource/**: Handles data retrieval from various sources.
    - **local/**: Local data sources such as SQLite or SharedPreferences.
        - `user_local_datasource.dart`: Manages user data from local storage.
    - **remote/**: Remote data sources such as REST APIs.
        - `user_remote_datasource.dart`: Manages user data from remote APIs.
    - **cache/**: Cached data sources for quick access.
        - `user_cache_datasource.dart`: Manages user data cache.
- **models/**: Defines data models.
    - **api/**: Models related to API interactions.
        - **requests/**: Request models sent to the API.
            - `update_user_profile_request.dart`: Request model for updating user profile.
        - **responses/**: Response models received from the API.
            - `update_user_profile_response.dart`: Response model for updating user profile.
    - **cache/**: Models related to cached data.
        - `user_cache_model.dart`: Model for user cache data.
        - `session_cache_model.dart`: Model for session cache data.
    - **local/**: Models related to local storage.
        - `settings_local_model.dart`: Model for local settings data.
- **plugins/**: Contains plugins for various functionalities.
    - `network_plugin.dart`: Manages network-related functionalities.
- **repositories/**: Implements repository pattern to manage data operations.
    - `user_repository_impl.dart`: Implements user data repository.
- **utils/**: Contains utility classes and functions used in the data layer.

### `lib/domain/`

Defines the business logic and core entities.

- **entities/**: Contains core entities of the application.
    - `user.dart`: Defines the `User` entity.
- **repositories/**: Defines repository interfaces.
    - `user_repository.dart`: Interface for user data repository.
- **usecases/**: Defines application-specific use cases.
    - `get_user_data.dart`: Use case for retrieving user data.

### `lib/presentation/`

Manages the UI layer of the application.

- **blocs/**: Contains BLoC (Business Logic Component) classes for state management.
    - `authorization_bloc.dart`: BLoC for authorization-related state management.
- **components/**: Contains reusable UI components.
    - Various reusable components used across the app.
- **routes/**: Manages the navigation routes.
    - `app_routes.dart`: Defines the application's navigation routes.
- **screens/**: Contains the UI pages/screens.
    - `home_screen.dart`: UI page for home screen.
- **services/**: Contains services used in the presentation layer.
    - Various services that support the UI layer.

### `main_dev.dart`

Entry point for the development environment.

### `main_prod.dart`

Entry point for the production environment.

---

This `PROJECT_STRUCTURE.md` provides a comprehensive overview of the `salingsapa` project's
structure, following best practices and clean architecture principles to ensure a scalable and
maintainable codebase.