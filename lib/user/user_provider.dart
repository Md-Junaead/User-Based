// lib/providers/user_provider.dart

import 'package:flutter/material.dart';
import 'package:user_based/api_service.dart';
import 'package:user_based/user/user_model.dart';

class UserProvider extends ChangeNotifier {
  User? user;

  Future<bool> login(String email, String password) async {
    user = await ApiService.login(email, password);
    notifyListeners();
    return user != null;
  }
}
