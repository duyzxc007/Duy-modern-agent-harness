---
name: mobile-crossplatform
description: Master mobile and cross-platform engineering hub for Flutter, Dart, and Android CLI. Covers layered architecture (UI, Logic, Data), widget/unit/integration testing, responsive layouts, native FFI C/C++ assets, and Android virtual device automation.
license: MIT
---

# Master Mobile & Cross-Platform Hub (Flutter, Dart & Android)

Consolidated capability pack for mobile and multi-platform application development.

## 1. Flutter Architectural Standard
- **Layered Structure**: Presentation (Widgets) -> Logic/Bloc/Notifier -> Domain/Data (Repository & Services).
- **Responsive Layout**: `LayoutBuilder`, `MediaQuery`, Flexible/Expanded. Never hardcode absolute pixel sizes for screens.
- **Routing**: Declarative `go_router` with URL support and deep-linking.
- **Localization**: `flutter_localizations` and `intl` via `l10n.yaml`.

## 2. Testing & Quality
- **Unit Tests**: `package:test` or `package:checks` for logic and models.
- **Widget Tests**: `WidgetTester` verifying interaction, pump, text, and keys.
- **Integration Tests**: `integration_test` verifying end-to-end user journeys.
- **Static Analysis**: `dart analyze` and `dart fix --apply`.

## 3. Workflows & Runbooks
Progressively disclosed in `workflows/`:
- `workflows/flutter_architecture.md` — Best practices for scalable Flutter projects.
- `workflows/flutter_testing.md` — Testing recipes (Unit, Widget, Integration, Coverage).
- `workflows/dart_patterns.md` — Dart 3 pattern matching, primary constructors, FFI Native Assets via C toolchain.
- `workflows/android_cli.md` — Android SDK, AVD virtual device management, screen inspection, APK builds.
