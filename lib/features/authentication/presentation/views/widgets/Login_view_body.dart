import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gar_proj/constans.dart';
import 'package:gar_proj/features/authentication/data/cubit/login.dart/login_cubit.dart';
import 'package:gar_proj/features/authentication/data/cubit/login.dart/login_states.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailtext = TextEditingController();
  final TextEditingController passtext = TextEditingController();
  final FlutterSecureStorage storage = FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Icon(FontAwesomeIcons.handshake, color: Colors.white),
          ),
        ],
        backgroundColor: kprimarycolor,
        title: Center(
          child: Text(
            'Login',
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
          ),
        ),
      ),
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            if (state.user.role == 'donor' || state.user.role == 'restaurant') {
              navigatetoHomeview();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green,
                  content: Text('Hello ${state.user.role}: ${state.user.name}'),
                ),
              );
              navigatetoHomeview();
            } else if (state.user.role == 'charity') {
              navigatetoHomeview();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.green,
                  content: Text('Hello ${state.user.role}: ${state.user.name}'),
                ),
              );
            }
          } else if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                content: Text(' Wrong password or Email try again...'),
              ),
            );
          }
        },

        builder: (context, state) {
          return Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.only(top: 120, left: 16, right: 16),
              child: ListView(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/Image 11.png',
                      height: 100,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                    child: TextFormField(
                      controller: emailtext,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        label: Icon(Icons.email),
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter text';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 16),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                    child: TextFormField(
                      controller: passtext,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        label: Icon(Icons.password),
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter text';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child:
                        state is AuthLoading
                            ? CircularProgressIndicator()
                            : ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                fixedSize: Size(double.maxFinite, 50),
                                backgroundColor: sprimarycolor,
                              ),
                              onPressed: () {
                                {
                                  if (_formKey.currentState!.validate()) {
                                    context.read<LoginCubit>().login(
                                      emailtext.text,
                                      passtext.text,
                                    );
                                  }
                                }
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void navigatetoHomeview() {
    Future.delayed(const Duration(seconds: 1), () {
      GoRouter.of(context).push('/HomeView');
    });
  }
}
