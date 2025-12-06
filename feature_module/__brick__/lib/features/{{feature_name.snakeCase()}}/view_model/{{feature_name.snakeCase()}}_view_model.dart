import 'package:flutter/foundation.dart';
{{#include_repository}}
import '../repository/{{feature_name.snakeCase()}}_repository.dart';
{{/include_repository}}

class {{feature_name.pascalCase()}}ViewModel extends ChangeNotifier {
  {{#include_repository}}
  final {{feature_name.pascalCase()}}Repository _repository;

  {{feature_name.pascalCase()}}ViewModel({
    {{feature_name.pascalCase()}}Repository? repository,
  }) : _repository = repository ?? {{feature_name.pascalCase()}}Repository();
  {{/include_repository}}
  {{^include_repository}}
  {{feature_name.pascalCase()}}ViewModel();
  {{/include_repository}}

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  Future<void> initialise() async {
    _setLoading(true);
    try {
      // Initialisation logic here
    } catch (e) {
      _error = e.toString();
    } finally {
      _setLoading(false);
    }
  }

  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}
