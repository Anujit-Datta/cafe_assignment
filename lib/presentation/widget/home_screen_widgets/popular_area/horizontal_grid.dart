import 'package:cafe_assignment/presentation/screen/coffee_screen.dart';
import 'package:cafe_assignment/presentation/widget/home_screen_widgets/subtitle_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../frosted_widget.dart';

class HorizontalGrids extends StatelessWidget {
  const HorizontalGrids({
    super.key,
    required this.sizes,
    required this.grid_coffees_image,
  });

  final Size sizes;
  final List<String> grid_coffees_image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 15,
          mainAxisExtent: sizes.width*0.5,
        ),
        itemCount: 3,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const CoffeeScreen()));
            },
            child: FrostedWidget(
              height: 10,
              width: sizes.width*0.3,
              borderRadius: 5,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      grid_coffees_image[index],
                      height: sizes.height*0.135,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'Hot Cappuccino',
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffcdcdcd).withOpacity(0.8),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Espresso, Steamed Milk',
                                style: GoogleFonts.inter(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff303030),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              const SubtitleWidget(vegan: false,textColor: false,)
                            ],
                          ),
                          const SizedBox(width: 20,),
                          Container(
                            color: const Color(0xff66a35c).withOpacity(0.8),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    )
                  ]
              ),
            ),
          );
        },
      ),
    );
  }
}