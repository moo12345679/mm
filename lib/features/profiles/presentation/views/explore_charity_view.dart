import 'package:flutter/material.dart';
import 'package:gar_proj/constans.dart';
import 'package:gar_proj/features/Home/presentation/views/widgets/custom_appbar.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/explore_charity_body.dart';
import 'package:go_router/go_router.dart';

class ExploreCharityView extends StatelessWidget {
  const ExploreCharityView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                GoRouter.of(context).push('/SearchView');
              },
              color: Colors.white,
            ),
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Explore',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              Text(
                ' Charities',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ],
          ),
          backgroundColor: kprimarycolor,
        ),
        drawer: CustomAppbar(),
        body: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Column(children: [ExploreCharityBody()]),
        ),
      ),
    );
  }
}
