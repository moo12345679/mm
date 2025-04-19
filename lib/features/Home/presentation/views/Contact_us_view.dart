import 'package:flutter/material.dart';
import 'package:gar_proj/constans.dart';
import 'package:gar_proj/features/Home/presentation/views/widgets/contact_us_body.dart';
import 'package:gar_proj/features/Home/presentation/views/widgets/custom_appbar.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: kprimarycolor),
      drawer: CustomAppbar(),
      body: ContactUsBody(),
    );
  }
}
