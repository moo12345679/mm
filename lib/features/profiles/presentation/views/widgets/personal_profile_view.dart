import 'package:flutter/material.dart';
import 'package:gar_proj/constans.dart';
import 'package:gar_proj/features/Home/presentation/views/widgets/custom_appbar.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/editform.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/personal_listtview.dart';

class PersonalProfileView extends StatelessWidget {
  const PersonalProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: kprimarycolor),
        drawer: CustomAppbar(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/WhatsApp Image 2025-03-19 at 02.00.56_192efcd7.jpg',
                            height: 80,
                          ),
                        ),
                        Text(
                          'متطوع/ محمد ابراهيم',
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(des, maxLines: 3),
                        ),
                        SizedBox(height: 16),
                        Center(
                          child: Container(
                            height: 1,
                            width: 200,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 24),
                      ],
                    ),
                    Center(
                      child: Text(
                        'Donation Meals',
                        style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.italic,
                          color: sprimarycolor,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 2,
                        width: 180,
                        color: sprimarycolor,
                      ),
                    ),
                    PersonalListtview(),
                    Center(
                      child: Container(
                        height: 1,
                        width: 200,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'Information',
                        style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.italic,
                          color: sprimarycolor,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 2,
                        width: 130,
                        color: sprimarycolor,
                      ),
                    ),
                    EditFormWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
