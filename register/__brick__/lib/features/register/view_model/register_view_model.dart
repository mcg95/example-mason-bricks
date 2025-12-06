import 'package:flutter/foundation.dart';
{{#include_repository}}
import '../repository/auth_repository.dart';
{{/include_repository}}

class RegisterViewModel extends ChangeNotifier {
  {{#include_repository}}
  final AuthRepository _repository;

  RegisterViewModel({
    AuthRepository? repository,
  }) : _repository = repository ?? AuthRepository();
  {{/include_repository}}
  {{^include_repository}}
  RegisterViewModel();
  {{/include_repository}}

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  Future<void> register(
    String email,
    String password,
    String confirmPassword,
  ) async {
    if (password != confirmPassword) {
      _error = 'Passwords do not match';
      notifyListeners();
      return;
    }

    _setLoading(true);
    _error = null;

    try {
      {{#include_repository}}
      await _repository.register(email, password);
      {{/include_repository}}
      {{^include_repository}}
      // TODO: Implement register logic
      await Future.delayed(const Duration(seconds: 1));
      {{/include_repository}}
      // Handle successful registration (e.g., navigate to login or home)
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
