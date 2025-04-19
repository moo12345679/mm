import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gar_proj/constans.dart';
import 'package:gar_proj/features/authentication/data/cubit/Signup/sign_up_cubit.dart';
import 'package:gar_proj/features/authentication/data/cubit/Signup/signup_states.dart';
import 'package:gar_proj/features/authentication/presentation/views/widgets/custom_dropdownmenu_button.dart';
import 'package:gar_proj/features/authentication/presentation/views/widgets/custom_eval_button.dart';
import 'package:gar_proj/features/authentication/presentation/views/widgets/custom_textForm.dart';
import 'package:go_router/go_router.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  bool isreading = false;
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmpass = TextEditingController();
  final TextEditingController city = TextEditingController();
  final TextEditingController addres = TextEditingController();

  @override
  void initState() {
    super.initState();
    isreading = false;
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kprimarycolor,
        title: Center(
          child: Text('Sign Up', style: TextStyle(color: Colors.white)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Icon(FontAwesomeIcons.handshake, color: Colors.white),
          ),
        ],
      ),
      body: BlocConsumer<SignUpCubit, SignupState>(
        listener: (context, state) {
          if (state is SignupSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.green,
                content: Text('SignUp Sucess , please Login here...'),
              ),
            );
            navigatetoLogin_page();
          } else if (state is SignupError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                content: Text('SignUp failed'),
              ),
            );
          }
        },
        builder: (context, S) {
          return Form(
            key: _formKey,
            child: ListView(
              children: [
                Center(
                  child: Text(
                    'Welcome',
                    style: TextStyle(color: kprimarycolor, fontSize: 40),
                  ),
                ),

                CustomTextform(
                  textEditingController: name,
                  hint: 'Name',
                  icon: Icon(Icons.info),
                ),
                CustomTextform(
                  textEditingController: email,
                  hint: 'Email',
                  icon: Icon(Icons.email),
                ),
                CustomTextform(
                  textEditingController: phone,
                  hint: 'Phone Number',
                  icon: Icon(Icons.phone_android),
                ),
                CustomTextform(
                  textEditingController: password,
                  hint: 'password',
                  icon: Icon(Icons.password),
                ),
                CustomTextform(
                  textEditingController: confirmpass,
                  hint: 'Confirm Password',
                  icon: Icon(Icons.password),
                ),
                CustomTextform(
                  textEditingController: city,
                  hint: 'City',
                  icon: Icon(Icons.location_city),
                ),
                CustomTextform(
                  textEditingController: addres,
                  hint: 'Adress',
                  icon: Icon(Icons.location_on),
                ),
                CustomDropdownmenuButton(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      activeColor: kprimarycolor,
                      checkColor: Colors.white,
                      value: isreading,
                      onChanged: (value) {
                        setState(() {
                          isreading = !isreading;
                        });
                      },
                    ),
                    Text('    I agree with'),
                    GestureDetector(
                      /// ontap we popa page contain the
                      onTap: () {},
                      child: Text(
                        'Terms & Conditions',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?  '),
                    GestureDetector(
                      onTap: () => navigatetoLogin_page(),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Color(0xff2D6187),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                CustomEvalButton(
                  name: name.text,
                  email: email.text,
                  pass: password.text,
                  phone: phone.text,
                  city: city.text,
                  button_Text: 'Sign Up',
                  form_key: _formKey,
                  checkbox_value: isreading,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void navigatetoLogin_page() {
    GoRouter.of(context).push('/LoginView');
  }

  void navigatetoHomeview() {
    Future.delayed(const Duration(seconds: 1), () {
      GoRouter.of(context).push('/HomeView');
    });
  }
}
