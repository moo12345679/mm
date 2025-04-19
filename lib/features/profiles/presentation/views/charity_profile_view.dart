import 'package:flutter/material.dart';
import 'package:gar_proj/constans.dart';
import 'package:gar_proj/features/Home/presentation/views/widgets/custom_appbar.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/Requests_list_view_body.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/editform.dart';

class CharityProfileView extends StatelessWidget {
  const CharityProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CustomAppbar(),
        appBar: AppBar(backgroundColor: kprimarycolor),
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
                            'assets/images/Selection(2)(1).png',
                            height: 80,
                          ),
                        ),
                        Text(
                          'Hand by Hand Charity',
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
                        'Requests',
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
                        width: 100,
                        color: sprimarycolor,
                      ),
                    ),
                    RequestsListViewBody(),
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
