import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/{{feature_name.snakeCase()}}_view_model.dart';

class {{feature_name.pascalCase()}}Screen extends StatelessWidget {
  const {{feature_name.pascalCase()}}Screen({super.key});

  static const String routeName = '/{{feature_name.paramCase()}}';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => {{feature_name.pascalCase()}}ViewModel(),
      child: const _{{feature_name.pascalCase()}}Content(),
    );
  }
}

class _{{feature_name.pascalCase()}}Content extends StatelessWidget {
  const _{{feature_name.pascalCase()}}Content();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<{{feature_name.pascalCase()}}ViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('{{feature_name.titleCase()}}'),
      ),
      body: viewModel.isLoading
          ? const Center(child: CircularProgressIndicator())
          : const Center(
              child: Text('{{feature_name.titleCase()}} content'),
            ),
    );
  }
}
