import 'package:flutter/material.dart';
import 'package:gar_proj/features/authentication/presentation/views/widgets/auth_options_body.dart';

class AuthOptionsView extends StatelessWidget {
  const AuthOptionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: AuthOptionsBody());
  }
}
