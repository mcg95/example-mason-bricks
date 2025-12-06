# profile

A Mason brick that generates a profile feature with MVVM architecture.

## Usage

```bash
mason make profile
```

## Variables

This brick has no configurable variables.

## Generated Structure

```
lib/features/profile/
├── presentation/
│   └── profile_screen.dart
└── view_model/
    └── profile_view_model.dart
```

## Output

Generates a profile screen with:
- CircleAvatar placeholder (icon-based)
- Name TextField
- Email TextField
- ViewModel with profile data and loading state
