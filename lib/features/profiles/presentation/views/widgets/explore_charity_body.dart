import 'package:flutter/material.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/explore_chairty_item.dart';

class ExploreCharityBody extends StatelessWidget {
  const ExploreCharityBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: ListView.builder(
          itemCount: 16,
          itemBuilder: (context, index) {
            return ExploreChairtyItem();
          },
        ),
      ),
    );
  }
}
