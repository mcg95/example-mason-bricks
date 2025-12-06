# project_builder

A Mason brick that provides an interactive project generator with feature selection.

## Usage

```bash
mason make project_builder
```

You'll be prompted to select which features to include in your project.

## Variables

| Variable | Description | Default | Type |
|----------|-------------|---------|------|
| `features` | Features to include | `[app_skeleton]` | `array` |

## Available Features

- **app_skeleton** - Base Flutter app structure with core architecture
- **login** - Login screen with email/password fields
- **register** - Registration screen with email/password/confirm password
- **settings** - Settings screen with Profile and Logout options
- **profile** - Profile screen with avatar, name, and email

## How It Works

This brick uses a pre-generation hook to iterate through your selected features and invoke each corresponding Mason brick. This allows you to scaffold an entire project with multiple features in a single command.

## Example

```bash
$ mason make project_builder
? Select features to generate (Use arrow keys to navigate, space to select)
❯ ◉ app_skeleton
  ◯ login
  ◯ register
  ◯ settings
  ◯ profile
```
