// lib/models/user_model.dart

class User {
  final String id;
  final String name;
  final String email;
  final String department;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.department,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'],
    name: json['name'],
    email: json['email'],
    department: json['department'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'department': department,
  };
}
