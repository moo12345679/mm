// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomButton_auth extends StatefulWidget {
  const CustomButton_auth(
      {super.key,
      required this.option,
      required this.color_button,
      required this.text_style,
      required this.work});
  final String option;
  final Color color_button;
  final Color text_style;
  final bool work;

  @override
  State<CustomButton_auth> createState() => _CustomButton_authState();
}

class _CustomButton_authState extends State<CustomButton_auth> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (widget.work == true) {
          if (widget.option == 'Login') {
            navigatetoLogin_page();
          } else {
            navigatetostartUp_page();
          }
        }
      },
      icon: Container(
        height: 50,
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xff2D6187)),
          color: widget.color_button,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            widget.option,
            style: TextStyle(color: widget.text_style),
          ),
        ),
      ),
    );
  }

  void navigatetoLogin_page() {
    GoRouter.of(context).push('/LoginView');
  }

  void navigatetostartUp_page() {
    GoRouter.of(context).push('/SignUpView');
  }
}
