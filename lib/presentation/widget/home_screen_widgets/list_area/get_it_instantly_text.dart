import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetItInstantly extends StatelessWidget {
  const GetItInstantly({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12,left: 23),
      child: Row(
        children: [
          Text(
            'Get it instantly',
            style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: const Color(0xffB6B6B6)
            ),
          ),
        ],
      ),
    );
  }
}
