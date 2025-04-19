import 'package:flutter/material.dart';
import 'package:gar_proj/constans.dart';
import 'package:gar_proj/features/Home/presentation/views/widgets/custom_appbar.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/custom_textfield_search.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/explore_charity_body.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: kprimarycolor),
        drawer: CustomAppbar(),
        body: Column(children: [CustomTextfieldSearch(), ExploreCharityBody()]),
      ),
    );
  }
}
