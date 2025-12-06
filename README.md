# Example Mason Bricks

A collection of Mason bricks for scaffolding Flutter applications with MVVM architecture. This project accompanies the Medium article [Scaling Flutter Development with Mason](https://medium.com/@mcmewan95).

## Prerequisites

- [Dart SDK](https://dart.dev/get-dart) (>=3.0.0)
- [Mason CLI](https://pub.dev/packages/mason_cli)

```bash
dart pub global activate mason_cli
```

## Getting Started

1. Clone this repository:
```bash
git clone https://github.com/your-username/example-mason-bricks.git
cd example-mason-bricks
```

2. Install the bricks:
```bash
mason get
```

3. Generate a project with the interactive builder:
```bash
mason make project_builder
```

## Available Bricks

| Brick | Description |
|-------|-------------|
| `app_skeleton` | Base Flutter app structure with core architecture and ActionButton widget |
| `feature_module` | Generic MVVM feature template (screen, view model, optional repository) |
| `login` | Login screen with email/password fields |
| `register` | Registration screen with email/password/confirm password fields |
| `settings` | Settings screen with Profile and Logout options |
| `profile` | Profile screen with avatar, name, and email fields |
| `project_builder` | Interactive multi-select project generator |

## Usage

### Option 1: Interactive Builder (Recommended)

Use the `project_builder` to select multiple features at once:

```bash
mason make project_builder
```

You'll see a multi-select prompt:
```
? Select features to generate
❯ ◉ app_skeleton
  ◯ login
  ◯ register
  ◯ settings
  ◯ profile
```

### Option 2: Individual Bricks

Generate bricks individually:

```bash
# Base app structure
mason make app_skeleton

# Generic feature (prompts for feature name)
mason make feature_module

# Pre-built features
mason make login
mason make register
mason make settings
mason make profile
```

### Custom Features

Use `feature_module` to create custom features:

```bash
mason make feature_module
```

When prompted, enter your feature name (e.g., `dashboard`, `cart`, `orders`). This generates:
- `lib/features/{feature_name}/presentation/{feature_name}_screen.dart`
- `lib/features/{feature_name}/view_model/{feature_name}_view_model.dart`
- `lib/features/{feature_name}/repository/{feature_name}_repository.dart` (optional)

## Architecture

All generated code follows the MVVM pattern with Provider:

```
lib/
├── core/
│   ├── api/
│   ├── config/
│   ├── constants/
│   └── utils/
├── features/
│   └── {feature_name}/
│       ├── presentation/
│       │   └── {feature_name}_screen.dart
│       ├── view_model/
│       │   └── {feature_name}_view_model.dart
│       └── repository/
│           └── {feature_name}_repository.dart
└── shared/
    └── widgets/
        └── action_button.dart
```

## Post-Generation Hooks

The `project_builder` automatically runs after generation:
1. `flutter pub get` - Install dependencies
2. `build_runner` - Generate code (JSON serialization, etc.)
3. `dart format .` - Format all Dart files

## Related Resources

- [Mason Documentation](https://docs.brickhub.dev)
- [BrickHub - Community Bricks](https://brickhub.dev)
- [MVVM in Flutter with Provider and the Command Pattern](https://medium.com/@mcmewan95/mvvm-in-flutter-with-provider-and-the-command-pattern-1f287b90761e)

## License

MIT License - see individual brick LICENSE files for details.