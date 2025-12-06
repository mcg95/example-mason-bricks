import 'package:flutter/foundation.dart';
{{#include_repository}}
import '../repository/auth_repository.dart';
{{/include_repository}}

class LoginViewModel extends ChangeNotifier {
  {{#include_repository}}
  final AuthRepository _repository;

  LoginViewModel({
    AuthRepository? repository,
  }) : _repository = repository ?? AuthRepository();
  {{/include_repository}}
  {{^include_repository}}
  LoginViewModel();
  {{/include_repository}}

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  Future<void> login(String email, String password) async {
    _setLoading(true);
    _error = null;

    try {
      {{#include_repository}}
      await _repository.login(email, password);
      {{/include_repository}}
      {{^include_repository}}
      // TODO: Implement login logic
      await Future.delayed(const Duration(seconds: 1));
      {{/include_repository}}
      // Handle successful login (e.g., navigate to home)
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
