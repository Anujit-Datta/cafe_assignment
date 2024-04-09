import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  final bool brownHue;
  const BackgroundWidget({super.key, required this.child,required this.brownHue});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'asset/login/main_bg.jfif',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.1),
                Colors.brown.withOpacity(brownHue?0.4:0),
              ],
              stops: const [0.0, 1],
            ),
          ),
        ),
        child,
      ],
    );
  }
}
