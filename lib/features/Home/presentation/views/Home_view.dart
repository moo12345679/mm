import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gar_proj/constans.dart';
import 'package:gar_proj/features/Home/presentation/views/widgets/Home_view_body.dart';
import 'package:gar_proj/features/Home/presentation/views/widgets/custom_appbar.dart';

// ignore: camel_case_types
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CustomAppbar(),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Home', style: TextStyle(color: Colors.white)),
              SizedBox(width: 6),
              Icon(FontAwesomeIcons.house, color: Colors.white),
            ],
          ),
          backgroundColor: kprimarycolor,
        ),
        body: HomeViewBody(),
      ),
    );
  }
}
