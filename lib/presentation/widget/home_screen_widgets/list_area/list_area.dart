import 'package:cafe_assignment/presentation/screen/coffee_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../frosted_widget.dart';
import '../subtitle_widget.dart';

class ListArea extends StatelessWidget {
  const ListArea({
    super.key,
    required this.sizes,
  });

  final Size sizes;
  final names=const['Latt','Flat White'];
  final images=const['asset/page_1/list_cofee_1.png','asset/page_1/list_cofee_2.png'];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const CoffeeScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: FrostedWidget(
                  height: sizes.height * 0.2,
                  width: sizes.width * 0.9,
                  borderRadius: 17,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 28),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: names[index],
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xffcdcdcd),
                                ),
                                children: [
                                  TextSpan(
                                    text: names[index]=='Latt'?'è':'',
                                    style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xffcdcdcd),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: sizes.height* 0.01),
                            const SubtitleWidget(vegan: true,textColor: false,),
                            const SizedBox(height: 5,),
                            SizedBox(
                              width: sizes.width * 0.45,
                              child: Text(
                                'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                                softWrap: true,
                                style: GoogleFonts.inter(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffc0c0c0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: SizedBox(
                          height: sizes.height * 0.17+20,
                          width: sizes.width * 0.3,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 20,
                                left: 0,
                                child: ClipRRect(
                                  clipBehavior: Clip.none,
                                  child: Container(
                                    height: sizes.height * 0.15,
                                    width: sizes.width * 0.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            images[index]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 40,
                                bottom: 10,
                                child: Container(
                                  height: 19,
                                  width: 52,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: const Color(0xff66a35c)
                                  ),
                                  child: Center(
                                    child: Text(
                                      'ADD',
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
