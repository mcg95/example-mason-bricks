# feature_module

A Mason brick that generates a feature module with MVVM architecture.

## Usage

```bash
mason make feature_module
```

## Variables

| Variable | Description | Default | Type |
|----------|-------------|---------|------|
| `feature_name` | Feature name in snake_case | `dashboard` | `string` |
| `include_repository` | Generate repository layer | `true` | `boolean` |

## Generated Structure

```
lib/features/{feature_name}/
├── presentation/
│   └── {feature_name}_screen.dart
├── view_model/
│   └── {feature_name}_view_model.dart
└── repository/                        # Only if include_repository is true
    └── {feature_name}_repository.dart
```

## Output

Generates a complete feature module following MVVM pattern with Provider state management.
