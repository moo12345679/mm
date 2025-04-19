import 'package:flutter/material.dart';
import 'package:gar_proj/constans.dart';

class ExploreDonationsItem extends StatelessWidget {
  const ExploreDonationsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: const Color.fromARGB(255, 239, 235, 235)),
          ],
          border: Border(
            bottom: BorderSide(),
            top: BorderSide(),
            right: BorderSide(),
            left: BorderSide(),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        height: 300,
        width: double.infinity,
        child: Column(
          children: [
            ClipRect(
              child: Image.asset(
                height: 150,
                fit: BoxFit.fill,
                width: double.infinity,
                'assets/images/Image 38(1).png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipOval(
                    child: Image.asset(
                      height: 60,
                      'assets/images/WhatsApp Image 2025-03-19 at 02.00.56_192efcd7.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    'Mohamed Ibrahim',
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: sprimarycolor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      height: 40,
                      width: 100,
                      child: Center(
                        child: Text(
                          'Detailes',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              maxLines: 1,
              'وجبة أرز اصفر باللحمة و السلطة',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
