// lib/services/api_service.dart

import 'package:user_based/user/demo_users.dart';
import 'package:user_based/user/user_model.dart';

class ApiService {
  static Future<User?> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    for (var user in demoUsers) {
      if (user.email == email && user.password == password) {
        return user;
      }
    }
    return null; // Return null if no matching user found
  }
}
