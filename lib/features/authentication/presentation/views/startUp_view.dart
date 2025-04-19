import 'package:flutter/material.dart';
import 'package:gar_proj/features/authentication/presentation/views/widgets/StartUp_item.dart';

class StartupView extends StatelessWidget {
  const StartupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: StartupItem());
  }
}
