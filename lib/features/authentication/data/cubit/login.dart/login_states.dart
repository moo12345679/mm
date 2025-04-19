import 'package:gar_proj/features/authentication/data/model/login/token_model.dart';

class LoginState {}

class AuthInitial extends LoginState {}

class AuthLoading extends LoginState {}

class AuthSuccess extends LoginState {
  final String token;

  final UserFromToken user;
  AuthSuccess({required this.user, required this.token});
}

class AuthFailure extends LoginState {
  final String errorMessage;

  AuthFailure({required this.errorMessage});
}
