import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Subtitle extends StatelessWidget {
  const Subtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        '''"Latte but never late"''',
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w400,
          color: const Color(0xffABABAB),
        )
    );
  }
}