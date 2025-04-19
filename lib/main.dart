import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gar_proj/core/utils/Approuter.dart';
import 'package:gar_proj/features/authentication/data/auth_api.dart';
import 'package:gar_proj/features/authentication/data/cubit/Signup/sign_up_cubit.dart';
import 'package:gar_proj/features/authentication/data/cubit/login.dart/login_cubit.dart';

void main() {
  runApp(const shareXelkeir_App());
}

// ignore: camel_case_types
class shareXelkeir_App extends StatelessWidget {
  const shareXelkeir_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
          create: (context) => LoginCubit(authApi: AuthApi(dio: Dio())),
        ),
        BlocProvider<SignUpCubit>(
          create: (context) => SignUpCubit(authApi: AuthApi(dio: Dio())),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
