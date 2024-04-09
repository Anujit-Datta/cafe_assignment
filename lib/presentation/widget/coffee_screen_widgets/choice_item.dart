import 'package:cafe_assignment/presentation/widget/coffee_screen_widgets/slider_off.dart';
import 'package:cafe_assignment/presentation/widget/coffee_screen_widgets/slider_on.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoiceItem extends StatelessWidget {
  const ChoiceItem({super.key,required this.selected,required this.text});

  final bool selected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Row(
        children: [
          selected?const SliderOn():const SliderOff(),
          const SizedBox(width: 15,),
          Text(
            text,
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: const Color(0xffcdcdcd)
            ),
          )
        ],
      ),
    );
  }
}
