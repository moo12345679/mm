import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gar_proj/constans.dart';
import 'package:gar_proj/features/authentication/presentation/views/widgets/start_up_item_builder.dart';

class StartupItem extends StatelessWidget {
  const StartupItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Center(
            child: Text(
              'Which of the following describes you?!',
              style: TextStyle(color: kprimarycolor),
            ),
          ),
          StartUpItemBuilder(
            image1: 'assets/images/Image 50.png',
            option: 'volunteer',
            iconn: Icon(FontAwesomeIcons.child),
          ),
          StartUpItemBuilder(
            image1: 'assets/images/Image 52.png',
            iconn: Icon(Icons.food_bank_outlined),
            option: 'Restaurant',
          ),
          StartUpItemBuilder(
            image1: 'assets/images/Image 51.png',
            iconn: Icon(FontAwesomeIcons.hand),
            option: 'Charity',
          ),
        ],
      ),
    );
  }
}
