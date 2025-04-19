import 'package:flutter/material.dart';
import 'package:gar_proj/constans.dart';
import 'package:go_router/go_router.dart';

class HomeViewItems extends StatefulWidget {
  const HomeViewItems(
    this.headtext,
    this.centertext,
    this.bottomtext,
    this.imagetext, {
    super.key,
    required this.hight,
  });
  final String headtext;
  final String centertext;
  final String bottomtext;
  final String imagetext;
  final double hight;

  @override
  State<HomeViewItems> createState() => _HomeViewItemsState();
}

class _HomeViewItemsState extends State<HomeViewItems> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Container(
          height: 590,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 1.5,
              fit: BoxFit.fill,
              image: AssetImage(widget.imagetext),
            ),
          ),
        ),
        Container(
          height: widget.hight,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 1.5,
              fit: BoxFit.fill,
              image: AssetImage('assets/images/Overlay 4(1).png'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              Text(
                widget.headtext,
                style: TextStyle(color: Colors.white, fontSize: 42),
              ),
              SizedBox(
                height: 120,
                width: 300,
                child: Text(
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  widget.centertext,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () {
                  if (widget.bottomtext == 'Donate Now') {
                    navigatetoDonate_view();
                  } else {
                    navigatetoexplorecharity_view();
                  }
                },
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    color: kprimarycolor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      widget.bottomtext,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void navigatetoexplorecharity_view() {
    GoRouter.of(context).push('/ExploreCharityView');
  }

  navigatetoDonate_view() {
    GoRouter.of(context).push('');
  }
}
