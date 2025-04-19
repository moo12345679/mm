import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gar_proj/constans.dart';
import 'package:gar_proj/features/Home/presentation/views/widgets/home_view_items.dart';
import 'package:gar_proj/features/authentication/data/cubit/login.dart/login_cubit.dart';
import 'package:gar_proj/features/authentication/data/cubit/login.dart/login_states.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/Requests_list_view_body.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/personal_listtview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String text =
        'Our goal is to fight hunger and reduce food waste by connecting volunteers and restaurants with local charities. Volunteers or restaurants with surplus food can use the app to donate their excess meals to charities, helping to prevent food waste while supporting those in need. The app simplifies the process by allowing restaurants to post available food donations and alert nearby charities in real time. It focuses on creating an efficient platform for food donations, contributing to environmental sustainability and supporting the community.Our goal is to fight hunger and reduce food waste by connecting volunteers and restaurants with local charities. Volunteers or restaurants with surplus food can use the app to donate their excess meals to charities, helping to prevent food waste while supporting those in need. The app simplifies the process by allowing restaurants to post available food donations and alert nearby charities in real time. It focuses on creating an efficient platform for food donations, contributing to environmental sustainability and supporting the community.';
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ListView(
        children: [
          HomeViewItems(
            'Share X El-Khair',
            "Join us in fighting hunger! Donate your excess food to help those in need, and let charitable organizations collect and distribute it to those who need it most.",
            'Donate Now',
            'assets/images/Image 19 (5).png',
            hight: 590,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Text(
                  'What We Do',
                  style: TextStyle(color: sprimarycolor, fontSize: 36),
                ),
              ),
              Container(height: 2, width: 200, color: kprimarycolor),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                  bottom: 16,
                ),
                child: SizedBox(
                  height: 590,
                  width: double.infinity,
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
          HomeViewItems(
            'Impact of Charities',
            'Charitable contributions to saving the hungry play a crucial role in reducing the effects of poverty and hunger, especially in areas of conflict and natural disasters, where such aid may constitute the only source of food for families....',
            'Charities',
            'assets/images/Selection(3)(1).png',
            hight: 590,
          ),
          SizedBox(height: 16),

          HomeViewItems(
            'Hunger People',
            'Global Hunger Statistics: According to the 2023 State of Food Security and Nutrition in the World report by the United Nations, approximately 735 million people worldwide suffer from hunger (as of 2022)',
            'Donate Now',
            'assets/images/Image 21(1).png',
            hight: 560,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Center(
              child: Column(
                children: [
                  BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      if (state is AuthSuccess) {
                        if (state.user.role == 'donor' ||
                            state.user.role == 'restaurant') {
                          return Text(
                            'Donations',
                            style: TextStyle(
                              color: sprimarycolor,
                              fontSize: 32,
                            ),
                          );
                        } else if (state.user.role == 'charity') {
                          return Text(
                            'Requests',
                            style: TextStyle(
                              color: sprimarycolor,
                              fontSize: 32,
                            ),
                          );
                        }
                      }
                      return Text('js');
                    },
                  ),
                  Container(height: 2, width: 150, color: kprimarycolor),
                ],
              ),
            ),
          ),

          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              if (state is AuthSuccess) {
                if (state.user.role == 'donor' ||
                    state.user.role == 'restaurant') {
                  return PersonalListtview();
                } else if (state.user.role == 'charity') {
                  return RequestsListViewBody();
                }
              }
              return Text('hdsj');
            },
          ),
        ],
      ),
    );
  }
}
