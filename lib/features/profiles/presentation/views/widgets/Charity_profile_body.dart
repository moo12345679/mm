import 'package:flutter/material.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/Requests_list_view_body.dart';

class CharityProfileBody extends StatelessWidget {
  const CharityProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [RequestsListViewBody()]);
  }
}
