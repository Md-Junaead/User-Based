import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_based/user/user_provider.dart';
import 'screens/login_screen.dart';
void main() {
  runApp(const BankingApp());
}

class BankingApp extends StatelessWidget {
  const BankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Banking App',
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.blueAccent,
          scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
          textTheme: const TextTheme(bodyLarge: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
        ),
        home: const LoginScreen(),
      ),
    );
  }
}







