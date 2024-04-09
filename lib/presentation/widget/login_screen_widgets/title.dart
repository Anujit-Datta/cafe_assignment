import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SwiftCafeTitle extends StatelessWidget {
  const SwiftCafeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Swift',
        style: GoogleFonts.raleway(
          fontSize: 64,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        children: <TextSpan>[
          TextSpan(
            text: '\nCafé',
            style: GoogleFonts.raleway(
              fontSize: 40,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ],
      ),

    );
  }
}