# flutter_boiler_template

A new Flutter project with Mobx + Provider

## Getting Started

- [Mobx](https://github.com/mobxjs/mobx.dart)

Mobx works with code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch --delete-conflicting-outputs
```

#### Hide Generated Files

In Visual Studio Code, navigate to `Preferences` -> `Settings` and search for `Files:Exclude`. Add the following patterns:
```
**/*.inject.summary
**/*.inject.dart
**/*.g.dart
```
- [Provider](https://github.com/rrousselGit/provider)

For help getting started with Flutter, view
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
