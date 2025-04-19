import 'package:flutter/material.dart';
import 'package:gar_proj/constans.dart';

class DonationMealItems extends StatelessWidget {
  const DonationMealItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: SizedBox(
        width: 200,
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(
                fit: BoxFit.fitWidth,
                height: 100,
                'assets/images/Image 38(1).png',
              ),
            ),
            Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    height: 50,
                    'assets/images/Selection(1).png',
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Karam El Sham',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    Text(
                      'وجبة لحم وارز',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: kprimarycolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Details', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
