import 'package:flutter/material.dart';
import 'package:gar_proj/features/authentication/presentation/views/widgets/Login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: LoginViewBody());
  }
}
