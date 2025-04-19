// ignore: camel_case_types
class Login_model_request {
  final String token;

  Login_model_request({required this.token});

  factory Login_model_request.fromJson(Map<String, dynamic> json) {
    return Login_model_request(token: json['token']);
  }

  Map<String, dynamic> toJson() {
    return {'token': token};
  }
}
