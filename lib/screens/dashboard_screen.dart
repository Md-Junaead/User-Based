// dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_based/user/user_provider.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      appBar: AppBar(title: Text("Welcome ${user?.name ?? 'User'}")),
      body: Center(child: Text("Balance: \$${user?.money ?? 0}")),
    );
  }
}