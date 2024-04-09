import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyButton extends StatelessWidget {
  const PrivacyPolicyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height*0.01),
      child: TextButton(
          onPressed: (){},
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.white.withOpacity(0.1)),
          ),
          child: Text(
            'Privacy Policy',
            style: GoogleFonts.inter(
              fontSize: 16,
              color: Colors.white,
            )
          )
      ),
    );
  }
}
