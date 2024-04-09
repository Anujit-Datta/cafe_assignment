import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget({
    super.key,
    required this.vegan,
    required this.textColor
  });

  final bool vegan;
  final bool textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '4.9',
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: textColor?const Color(0xffc4c4c4):Colors.black,
          ),
        ),
        const SizedBox(width: 2,),
        const Icon(
          Icons.star,
          color: Color(0xffffc003),
          size: 13,
        ),
        const SizedBox(width: 3,),
        Text(
          '(458)',
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: textColor?const Color(0xffc4c4c4):Colors.black,
          ),
        ),
        const SizedBox(width: 15,),
        Visibility(
          visible: vegan,
          child: Image.asset(
            'asset/vegan_logo.png',
            height: 14,
            width: 14,
          ),
        )
      ],
    );
  }
}