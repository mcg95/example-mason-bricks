# login

A Mason brick that generates a login feature with MVVM architecture.

## Usage

```bash
mason make login
```

## Variables

| Variable | Description | Default | Type |
|----------|-------------|---------|------|
| `include_repository` | Generate auth repository layer | `true` | `boolean` |

## Generated Structure

```
lib/features/login/
├── presentation/
│   └── login_screen.dart
├── view_model/
│   └── login_view_model.dart
└── repository/              # Only if include_repository is true
    └── auth_repository.dart
```

## Output

Generates a login screen with:
- Email TextField
- Password TextField (obscured)
- Login ActionButton
- ViewModel with login method and loading state
