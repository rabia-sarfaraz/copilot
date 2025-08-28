class UserManual {
  final int id;
  final String name;
  final String email;

  UserManual({required this.id, required this.name, required this.email});

  // Manual fromJson
  factory UserManual.fromJson(Map<String, dynamic> json) {
    return UserManual(id: json['id'], name: json['name'], email: json['email']);
  }

  // Manual toJson
  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'email': email};
  }

  @override
  String toString() => 'UserManual(id: $id, name: $name, email: $email)';
}
