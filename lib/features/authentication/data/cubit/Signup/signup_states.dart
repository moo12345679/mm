import 'package:gar_proj/features/authentication/data/model/Signup/Signup_model.dart';

class SignupState {}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class SignupSuccess extends SignupState {
  final SignupModel signupModel;

  SignupSuccess({required this.signupModel});
}

class SignupError extends SignupState {
  final String error;

  SignupError(this.error);
}
