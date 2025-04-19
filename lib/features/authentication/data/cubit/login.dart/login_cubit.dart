import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gar_proj/features/authentication/data/auth_api.dart';
import 'package:gar_proj/features/authentication/data/cubit/login.dart/login_states.dart';
import 'package:gar_proj/features/authentication/data/model/login/login_request_model.dart';
import 'package:gar_proj/features/authentication/data/model/login/token_model.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

final FlutterSecureStorage _storage = FlutterSecureStorage();

class LoginCubit extends Cubit<LoginState> {
  final AuthApi authApi;

  LoginCubit({required this.authApi}) : super(AuthInitial());

  Future<void> login(String email, String password) async {
    try {
      final loginRequest = LoginRequest(email: email, password: password);
      final authResponse = await authApi.login(loginRequest);

      await _storage.write(key: 'token', value: authResponse.token);
      final Map<String, dynamic> decodedToken = JwtDecoder.decode(
        authResponse.token,
      );
      final user = UserFromToken.fromJson(decodedToken);

      emit(AuthSuccess(token: authResponse.token, user: user));
    } catch (e) {
      emit(AuthFailure(errorMessage: e.toString()));
    }
  }
}
