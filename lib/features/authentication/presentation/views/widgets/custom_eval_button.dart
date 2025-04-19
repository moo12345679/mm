import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gar_proj/constans.dart';
import 'package:gar_proj/features/authentication/data/cubit/Signup/sign_up_cubit.dart';
import 'package:gar_proj/features/authentication/data/cubit/login.dart/login_cubit.dart';
import 'package:gar_proj/features/authentication/data/cubit/login.dart/login_states.dart';
import 'package:gar_proj/features/authentication/presentation/views/widgets/custom_dropdownmenu_button.dart';
import 'package:go_router/go_router.dart';

class CustomEvalButton extends StatefulWidget {
  const CustomEvalButton({
    super.key,
    required this.button_Text,
    required this.form_key,

    this.checkbox_value,
    required this.name,
    required this.email,
    required this.pass,
    required this.phone,
    required this.city,
  });
  final dynamic form_key;
  final String button_Text;

  final bool? checkbox_value;
  final String name;
  final String email;
  final String pass;
  final String phone;
  final String city;

  @override
  State<CustomEvalButton> createState() => _CustomEvalButtonState();
}

class _CustomEvalButtonState extends State<CustomEvalButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          fixedSize: Size(double.maxFinite, 50),
          backgroundColor: sprimarycolor,
        ),
        onPressed: () {
          {
            if (widget.button_Text == 'Login' &&
                widget.form_key.currentState!.validate()) {
              BlocConsumer<LoginCubit, LoginState>(
                listener: (context, state) {
                  navigatetoHomeview();
                },
                builder: (context, state) {
                  return Container();
                },
              );
            } else {
              if (widget.form_key.currentState!.validate()) {
                if (dropdownvalue != null && widget.checkbox_value == true) {
                  context.read<SignUpCubit>().signup(
                    name: widget.name,
                    email: widget.email,
                    password: widget.pass,
                    phone: widget.phone,
                    city: widget.city,
                    role: dropdownvalue!,
                  );
                } else if (dropdownvalue == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: Text('Please Choose your Role'),
                    ),
                  );
                } else if (widget.checkbox_value == false) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: Text('Please confirm Terms'),
                    ),
                  );
                }
              }
            }
          }
        },
        child: Text(
          widget.button_Text,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }

  void navigatetoHomeview() {
    Future.delayed(const Duration(seconds: 1), () {
      GoRouter.of(context).push('/HomeView');
    });
  }

  void navigatetologinUpview() {
    GoRouter.of(context).push('/LoginView');
  }
}
