import 'package:flutter/material.dart';
import 'package:gar_proj/features/authentication/presentation/views/widgets/custom_button_auth.dart';

class AuthOptionsBody extends StatelessWidget {
  const AuthOptionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/Image 11.png'),
        CustomButton_auth(
          work: true,
          option: 'Login',
          color_button: Color(0xff2D6187),
          text_style: Colors.white,
        ),
        CustomButton_auth(
          work: true,
          option: 'Sign Up',
          color_button: Colors.transparent,
          text_style: Color(0xff2D6187),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Countinue as a Guest',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
