import 'package:flutter/material.dart';
import 'package:gar_proj/constans.dart';
import 'package:gar_proj/features/Home/presentation/views/widgets/custom_form_contact_us.dart';

class ContactUsBody extends StatelessWidget {
  const ContactUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 24),
        Center(
          child: Text(
            'Need Support?',
            style: TextStyle(
              color: sprimarycolor,
              fontSize: 24,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        ClipRRect(child: Image.asset('assets/images/Image 67(1).png')),
        CustomFormContactUs(),
      ],
    );
  }
}
