# flutter_application_1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# Jalankan aplikasi Flutter (di folder flutter_training)
fvm flutter pub get
fvm flutter run --dart-define-from-file=config_dev.json   # Development (local API)
fvm flutter run --dart-define-from-file=config_prod.json  # Production (Neon cloud)

fvm flutter run -d chrome --dart-define-from-file=config_prod.json
