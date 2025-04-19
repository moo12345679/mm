import 'package:flutter/material.dart';
import 'package:gar_proj/features/profiles/presentation/views/widgets/Donation_meal_items.dart';

class PersonalListtview extends StatelessWidget {
  const PersonalListtview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const DonationMealItems();
          },
        ),
      ),
    );
  }
}
