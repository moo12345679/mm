class SignupRequest {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String city;
  final String role;

  SignupRequest({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.city,
    required this.role,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'city': city,
      'role': role,
    };
  }

  factory SignupRequest.fromJson(Map<String, dynamic> json) {
    return SignupRequest(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      phone: json['phone'],
      city: json['city'],
      role: json['role'],
    );
  }
}
