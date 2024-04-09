import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortionWidget extends StatelessWidget {
  const PortionWidget({
    super.key,
    required this.sizes,
    required this.text,
  });

  final Size sizes;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: sizes.width*0.03),
      child: Container(
        height: 27,
        width: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xffd9d9d9),
        ),
        child: Center(
          child: Text(
            '1/2 Full',
            style: GoogleFonts.inter(
              color: const Color(0xff000000),
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
