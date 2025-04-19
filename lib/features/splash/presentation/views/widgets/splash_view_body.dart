import 'package:flutter/material.dart';
import 'package:gar_proj/constans.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    animation = Tween<Offset>(
      begin: const Offset(0, 8),
      end: Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
    initnavigettohome();
  }

  @override
  // ignore: unnecessary_overrides
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return SlideTransition(
          position: animation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 100,
                width: 150,
                child: Image.asset(
                  'assets/images/WhatsApp Image 2025-03-13 at 01.59.38_768567a8.jpg',
                ),
              ),
              Center(
                child: Text(
                  'Share Food... ',
                  style: TextStyle(color: kprimarycolor),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void initnavigettohome() {
    Future.delayed(const Duration(seconds: 6), () {
      GoRouter.of(context).push('/AuthOptionsView');
    });
  }
}
