import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExploreChairtyItem extends StatefulWidget {
  const ExploreChairtyItem({super.key});

  @override
  State<ExploreChairtyItem> createState() => _ExploreChairtyItemState();
}

class _ExploreChairtyItemState extends State<ExploreChairtyItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: GestureDetector(
        onTap: navigateto_charityprofile,
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 211, 204, 204)
                    .withValues(alpha: 0.5),
                spreadRadius: 3,
                blurRadius: 2,
                offset: Offset(0, 5), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  height: 50,
                  'assets/images/WhatsApp Image 2025-03-13 at 01.59.38_768567a8.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      maxLines: 1,
                      'Hand by Hand Chairty',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      'Alexandria| handbyhand@gmail',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void navigateto_charityprofile() {
    GoRouter.of(context).push('/CharityProfileView');
  }
}
