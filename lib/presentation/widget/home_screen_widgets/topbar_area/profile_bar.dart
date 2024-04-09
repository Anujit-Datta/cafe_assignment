import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({
    super.key,
    required this.sizes,
  });

  final Size sizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'asset/page_1/hand_wave.png',
          height: 27,
          width: 27,
          fit: BoxFit.cover,
        ),
        SizedBox(width: sizes.width*0.06),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '20/12/22',
              style: GoogleFonts.inter(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: const Color(0xffB6B6B6),
              ),
            ),
            Text(
              'Joshua Scanlan',
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: const Color(0xffB6B6B6),
              ),
            ),
          ],
        ),
        const Expanded(child: Text('')),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xfff9f9f9).withOpacity(0.79),
          ),
          child: SvgPicture.asset(
            'asset/page_1/delete.svg',
            fit: BoxFit.scaleDown,
          )
        ),
        SizedBox(width: sizes.width*0.05),
        const CircleAvatar(
          radius: 20,
          backgroundColor: Color(0xff71AB7A),
          child: CircleAvatar(
            radius: 19,
            backgroundImage: AssetImage('asset/page_1/profile.png'),
          ),
        ),
      ],
    );
  }
}