import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gar_proj/features/authentication/data/auth_api.dart';
import 'package:gar_proj/features/authentication/data/model/Signup/Signup_request.dart';
import 'signup_states.dart'; // تأكد من أن ملف الحالتك هنا موجود

// تعريف الـ Cubit بشكل صحيح
class SignUpCubit extends Cubit<SignupState> {
  final AuthApi authApi;

  SignUpCubit({required this.authApi}) : super(SignupInitial());

  Future<void> signup({
    required String name,
    required String email,
    required String password,
    required String phone,
    required String city,
    required String role,
  }) async {
    emit(SignupLoading());

    try {
      final request = SignupRequest(
        name: name,
        email: email,
        password: password,
        phone: phone,
        city: city,
        role: role,
      );

      final response = await authApi.signUp(request);

      emit(SignupSuccess(signupModel: response));
    } catch (e) {
      emit(SignupError(e.toString()));
    }
  }
}
