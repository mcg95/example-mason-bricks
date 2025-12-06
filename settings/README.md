# settings

A Mason brick that generates a settings feature with MVVM architecture.

## Usage

```bash
mason make settings
```

## Variables

| Variable | Description | Default | Type |
|----------|-------------|---------|------|
| `include_profile` | Include Profile option in settings | `true` | `boolean` |

## Generated Structure

```
lib/features/settings/
├── presentation/
│   └── settings_screen.dart
└── view_model/
    └── settings_view_model.dart
```

## Output

Generates a settings screen with:
- ListView of settings options
- Profile ListTile (conditional based on include_profile)
- Logout ListTile
- ViewModel for state management
