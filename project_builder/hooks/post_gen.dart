import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Running flutter pub get');
  var result = await Process.run('flutter', ['pub', 'get']);
  if (result.exitCode != 0) {
    progress.fail('Failed to get dependencies');
    return;
  }
  progress.complete();

  final buildProgress = context.logger.progress('Running build_runner');
  result = await Process.run(
    'dart',
    ['run', 'build_runner', 'build', '--delete-conflicting-outputs'],
  );
  if (result.exitCode != 0) {
    buildProgress.fail('Build runner failed');
  } else {
    buildProgress.complete('Code generation complete');
  }

  final formatProgress = context.logger.progress('Formatting Dart files');
  result = await Process.run('dart', ['format', '.']);
  if (result.exitCode != 0) {
    formatProgress.fail('Formatting failed');
  } else {
    formatProgress.complete('Formatting complete');
  }
}
