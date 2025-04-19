import 'package:flutter/material.dart';
import 'package:gar_proj/constans.dart';
import 'package:gar_proj/features/Home/presentation/views/widgets/custom_appbar.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/Explore_Donations_body.dart';

class ExploreDonationView extends StatelessWidget {
  const ExploreDonationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
        backgroundColor: kprimarycolor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Explore',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            Text(
              ' Donations',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ],
        ),
      ),
      drawer: CustomAppbar(),
      body: ExploreDonationsBody(),
    );
  }
}
