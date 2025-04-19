import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gar_proj/constans.dart';
import 'package:gar_proj/features/authentication/data/cubit/login.dart/login_cubit.dart';
import 'package:gar_proj/features/authentication/data/cubit/login.dart/login_states.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: kprimarycolor),
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push('/PersonalProfileView');
              },
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/WhatsApp Image 2025-03-19 at 02.00.56_192efcd7.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      if (state is AuthSuccess) {
                        return Text(
                          state.user.name!,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        );
                      } else {
                        return Text('name');
                      }
                    },
                  ),
                  BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      if (state is AuthSuccess) {
                        return Text(
                          state.user.phone!,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 179, 174, 174),
                            fontSize: 20,
                          ),
                        );
                      } else {
                        return Text('phone');
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.house, color: kprimarycolor),
            title: Text('Home'),
            onTap: () {
              GoRouter.of(context).push('/Homeview');
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.boxArchive, color: kprimarycolor),
            title: Text('Donations'),
            onTap: () {
              GoRouter.of(context).push('/ExploreDonationView');
            },
          ),
          ListTile(
            leading: Icon(
              FontAwesomeIcons.handHoldingDollar,
              color: kprimarycolor,
            ),
            title: Text('Charity'),
            onTap: () {
              GoRouter.of(context).push('/ExploreCharityView');
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.circleInfo, color: kprimarycolor),
            title: Text('About'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.phone, color: kprimarycolor),
            title: Text('Contact US'),
            onTap: () {
              GoRouter.of(context).push('/ContactUsView');
            },
          ),
        ],
      ),
    );
  }
}
