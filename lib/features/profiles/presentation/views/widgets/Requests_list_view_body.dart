import 'package:flutter/material.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/Requests_item.dart';

class RequestsListViewBody extends StatelessWidget {
  const RequestsListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const RequestsItem();
          },
        ),
      ),
    );
  }
}
