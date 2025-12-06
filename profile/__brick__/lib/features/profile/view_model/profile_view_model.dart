import 'package:flutter/foundation.dart';

class ProfileViewModel extends ChangeNotifier {
  ProfileViewModel();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  String _name = '';
  String get name => _name;

  String _email = '';
  String get email => _email;

  Future<void> loadProfile() async {
    _setLoading(true);
    _error = null;

    try {
      // TODO: Load profile from repository
      await Future.delayed(const Duration(seconds: 1));
      _name = 'John Doe';
      _email = 'john.doe@example.com';
    } catch (e) {
      _error = e.toString();
    } finally {
      _setLoading(false);
    }
  }

  Future<void> updateProfile(String name, String email) async {
    _setLoading(true);
    _error = null;

    try {
      // TODO: Save profile to repository
      await Future.delayed(const Duration(seconds: 1));
      _name = name;
      _email = email;
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
