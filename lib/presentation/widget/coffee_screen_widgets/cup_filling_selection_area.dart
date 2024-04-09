import 'package:cafe_assignment/presentation/widget/coffee_screen_widgets/portion_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CupFillingSelectionArea extends StatelessWidget {
  const CupFillingSelectionArea({
    super.key,
    required this.sizes,
  });

  final Size sizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: sizes.width*0.01),
          child: Container(
            height: 27,
            width: 51,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xff37AD54),
            ),
            child: Center(
              child: Text(
                'Full',
                style: GoogleFonts.inter(
                  color: const Color(0xffd9d9d9),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        PortionWidget(sizes: sizes,text: '1/2 Full',),
        PortionWidget(sizes: sizes,text: '3/4 Full',),
        PortionWidget(sizes: sizes,text: '1/4 Full',),
      ],
    );
  }
}
