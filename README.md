# Mobile Programming: Workshop 1

Introductory Dart and Flutter exercises by **Mohammad Jafaripour**

## Projects
| Project | Description |
| --- | --- |
| [dart_exercise](dart_exercise/) | A Dart console app that filters even numbers and finds the maximum value in a list. |
| [workshop1](workshop1/) | A Flutter counter app with student information, Reset, even/odd colors, and a decrement button that stops at zero. |

Each folder is an independent project with its own dependencies and README.

## Requirements

- A Flutter SDK that includes Dart 3.13.7 or a compatible newer 3.x version.
- Chrome for running the Flutter app on the web, or an Android device/emulator configured for Flutter.

The Dart console project can also run with a standalone Dart SDK matching the version requirement above.

## Run the Dart Exercises

From the repository root:

```sh
cd dart_exercise
dart pub get
dart run
```

- `evens(List<int> numbers)` returns even numbers in their original order.
- `maxOf(List<int> numbers)` returns the largest number, or `null` for an empty list.

See the [Dart project README](dart_exercise/README.md) and [source code](dart_exercise/bin/dart_exercise.dart).

## Run the Flutter App

From the repository root:

```sh
cd workshop1
flutter pub get
flutter run -d chrome
```

The counter starts at zero. Use `+` to increment, `Reset` to return to zero, and the decrement button to reduce the value. Even values are green; odd values are red.

See the [Flutter project README](workshop1/README.md), [source code](workshop1/lib/main.dart), and [app screenshot](workshop1/screenshot.png).

## Validation

Run these commands inside the corresponding project folder:

| Project | Commands |
| --- | --- |
| `dart_exercise` | `dart analyze`, `dart run` |
| `workshop1` | `flutter analyze`, `flutter test` |
