class SignupModel {
  final String Message;

  // ignore: non_constant_identifier_names
  SignupModel({required this.Message});
  factory SignupModel.fromJson(Map<String, dynamic> json) {
    return SignupModel(Message: json['message']['status']);
  }
}
