import 'package:dio/dio.dart';
import 'package:gar_proj/features/authentication/data/model/Signup/Signup_model.dart';
import 'package:gar_proj/features/authentication/data/model/Signup/Signup_request.dart';
import 'package:gar_proj/features/authentication/data/model/login/login_model_request.dart';
import 'package:gar_proj/features/authentication/data/model/login/login_request_model.dart';

class AuthApi {
  final Dio dio;

  AuthApi({required this.dio});

  Future<Login_model_request> login(LoginRequest login) async {
    try {
      final response = await dio.post(
        'http://10.0.2.2:3000/auth/login',
        data: login.toJson(),
      );

      if (response.data != null && response.data['token'] != null) {
        return Login_model_request.fromJson(response.data);
      } else {
        throw Exception("No token received from server.");
      }
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Login failed');
    }
  }

  Future<SignupModel> signUp(SignupRequest signUp) async {
    final response = await dio.post(
      'http://10.0.2.2:3000/auth/register',
      data: signUp.toJson(),
    );
    try {
      if (response.data != null) {
        return SignupModel.fromJson(response.data);
      } else {
        throw Exception("No data recive");
      }
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Login failed');
    }
  }
}
