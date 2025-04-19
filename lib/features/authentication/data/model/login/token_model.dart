class UserFromToken {
  final String? id;
  final String? name;
  final String? role;
  final String? phone;
  final int? iat;

  UserFromToken({this.id, this.name, this.role, this.phone, this.iat});

  factory UserFromToken.fromJson(Map<String, dynamic> json) {
    return UserFromToken(
      id: json['id'],
      name: json['name'],
      role: json['role'],
      phone: json['phone'],
      iat: json['iat'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'role': role, 'phone': phone, 'iat': iat};
  }
}
