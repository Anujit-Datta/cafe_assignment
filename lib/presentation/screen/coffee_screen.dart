import 'package:cafe_assignment/presentation/widget/BackgroundWidget.dart';
import 'package:cafe_assignment/presentation/widget/home_screen_widgets/subtitle_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/coffee_screen_widgets/cup_filling_selection_area.dart';
import '../widget/coffee_screen_widgets/high_priority_selector.dart';
import '../widget/coffee_screen_widgets/milk_selector_area.dart';
import '../widget/coffee_screen_widgets/quentity_button.dart';
import '../widget/coffee_screen_widgets/suger_selector_area.dart';

class CoffeeScreen extends StatelessWidget {
  const CoffeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizes=MediaQuery.sizeOf(context);
    return Scaffold(
      body: BackgroundWidget(
        brownHue: false,
        child: Column(
          children: [
            topImage(sizes),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26,vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      titleAndSubtitleArea(),
                      const Expanded(child: Center()),
                      const QuentityButton(),
                      const SizedBox(width: 40,)
                    ],
                  ),
                  SizedBox(height: sizes.height*0.01,),
                  description(sizes),
                  SizedBox(height: sizes.height*0.01,),
                  inBodyTitle('Choice of Cup Filling'),
                  SizedBox(height: sizes.height*0.01,),
                  CupFillingSelectionArea(sizes: sizes),
                  SizedBox(height: sizes.height*0.01,),
                  inBodyTitle(' Choice of Milk'),
                  const MilkSelectorArea(),
                  inBodyTitle('Choice of Suger'),
                  const SugerSelectorArea(),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: HighPrioritySelector(sizes: sizes),
    );
  }

  SizedBox description(Size sizes) {
    return SizedBox(
      width: sizes.width*0.75,
      child: Text(
        'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
        softWrap: true,
        style: GoogleFonts.inter(
          color: const Color(0xffc0c0c0),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Column titleAndSubtitleArea() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Lattè',
          style: GoogleFonts.inter(
            color: const Color(0xffcdcdcd),
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SubtitleWidget(vegan: true,textColor: true,),
      ],
    );
  }

  SizedBox topImage(Size sizes) {
    return SizedBox(
      height: sizes.height*0.4,
      width: sizes.width,
      child: Image.asset(
        'asset/page_23/coffee_cover.png',
        fit: BoxFit.cover,
      ),
    );
  }

  Text inBodyTitle(String title) {
    return Text(
      title,
      style: GoogleFonts.inter(
        color: const Color(0xffcdcdcd),
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}







