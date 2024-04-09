import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../frosted_widget.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.sizes,
  });

  final Size sizes;
  final bottomBarSvg= const[
    'asset/page_1/bottomBar1.svg',
    'asset/page_1/bottomBar2.svg',
    'asset/page_1/bottomBar3.svg',
    'asset/page_1/bottomBar4.svg',
    'asset/page_1/bottomBar5.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11,right: 11,bottom: 10),
      child: FrostedWidget(
        height: 70,
        width: sizes.width * 0.87,
        borderRadius: 15,
        child: Container(
          color: Colors.black.withOpacity(0.5),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 22.5,
                backgroundColor: const Color(0xff5e5e5e),
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: const Color(0xff2d2d2d),
                  child: SvgPicture.asset(
                    bottomBarSvg[0],
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              SvgPicture.asset(
                bottomBarSvg[1],
                height: 20,
                width: 20,
              ),
              SvgPicture.asset(
                bottomBarSvg[2],
                height: 20,
                width: 20,
              ),
              SvgPicture.asset(
                bottomBarSvg[3],
                height: 20,
                width: 20,
              ),
              SvgPicture.asset(
                bottomBarSvg[4],
                height: 20,
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
