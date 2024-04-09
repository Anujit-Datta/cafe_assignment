import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'horizontal_grid.dart';

class PopularCoffeeArea extends StatelessWidget {
  const PopularCoffeeArea({
    super.key,
    required this.sizes,
  });

  final Size sizes;
  final List<String> gridCoffeeImages =const [
    'asset/page_1/grid_coffe_1.png',
    'asset/page_1/grid_coffe_2.png',
    'asset/page_1/grid_coffe_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizes.height*0.35,
      width: sizes.width,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Most Popular Beverages',
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: const Color(0xffb6b6b6).withOpacity(0.7),
              ),
            ),
          ),
          HorizontalGrids(sizes: sizes, grid_coffees_image: gridCoffeeImages),
          SizedBox(height: sizes.height*0.03),
        ],
      ),
    );
  }
}