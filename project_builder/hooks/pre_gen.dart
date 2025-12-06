import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final List<String> features = (context.vars['features'] as List).cast<String>();
  for (final String feature in features) {
    context.logger.info('Generating: $feature');
    final process = await Process.start(
      'mason',
      ['make', feature],
      mode: ProcessStartMode.inheritStdio,
    );
    final int exitCode = await process.exitCode;
    if (exitCode != 0) {
      context.logger.err('Failed to generate $feature');
    }
  }
}
