import 'package:flutter/material.dart';

class StartUpItemBuilder extends StatelessWidget {
  const StartUpItemBuilder(
      {super.key,
      required this.image1,
      required this.iconn,
      required this.option});
  final String image1;
  final Icon iconn;
  final String option;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: .80,
              image: AssetImage(image1),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(children: [
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Icon(
                size: 50,
                iconn.icon,
                color: Colors.white,
              ),
            ),
            Text(
              option,
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ]),
        ),
      ],
    );
  }
}
