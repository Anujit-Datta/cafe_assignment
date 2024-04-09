import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  final searchbarColor= const Color(0xffbbbbbc);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search favorite Beverages',
          hintStyle: GoogleFonts.inter(
            color: searchbarColor,
            fontSize: 12,
            fontWeight: FontWeight.w300,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 20,right: 10),
            child: Icon(
              Icons.search,
              color: searchbarColor,
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              'asset/page_1/tune.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
