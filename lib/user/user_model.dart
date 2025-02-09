// lib/models/user_model.dart

class User {
  final String name;
  final String email;
  final String password;
  final String address;
  final String phone;
  final double money;

  User({
    required this.name,
    required this.email,
    required this.password,
    required this.address,
    required this.phone,
    required this.money,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
      password: json['password'], // Add this
      address: json['address'],
      phone: json['phone'],
      money: json['money'].toDouble(),
    );
  }
}
