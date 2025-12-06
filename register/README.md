# register

A Mason brick that generates a registration feature with MVVM architecture.

## Usage

```bash
mason make register
```

## Variables

| Variable | Description | Default | Type |
|----------|-------------|---------|------|
| `include_repository` | Generate auth repository layer | `true` | `boolean` |

## Generated Structure

```
lib/features/register/
├── presentation/
│   └── register_screen.dart
├── view_model/
│   └── register_view_model.dart
└── repository/              # Only if include_repository is true
    └── auth_repository.dart
```

## Output

Generates a registration screen with:
- Email TextField
- Password TextField (obscured)
- Confirm Password TextField (obscured)
- Register ActionButton
- ViewModel with register method and loading state
