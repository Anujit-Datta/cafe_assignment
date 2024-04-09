import 'package:flutter/material.dart';

class SwiftCafeLogo extends StatelessWidget {
  const SwiftCafeLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'asset/login/coffe_mug_logo.png',
      height: 70,
      width: 89,
    );
  }
}