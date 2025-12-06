# app_skeleton

A Mason brick that generates a complete Flutter app structure with MVVM architecture.

## Usage

```bash
mason make app_skeleton
```

## Variables

| Variable | Description | Default | Type |
|----------|-------------|---------|------|
| `app_name` | Application name | `my_app` | `string` |
| `org_name` | Organisation identifier | `com.example` | `string` |
| `dependencies` | Dependencies to include | `[provider]` | `array` |

## Generated Structure

```
app/
├── lib/
│   ├── core/
│   │   ├── api/
│   │   ├── config/
│   │   ├── constants/
│   │   └── utils/
│   ├── features/
│   ├── shared/
│   │   └── widgets/
│   │       └── action_button.dart
│   └── main.dart
└── pubspec.yaml
```

## Output

After running the brick, you'll have a Flutter app scaffold ready for feature development using the MVVM pattern with Provider.
