import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../frosted_widget.dart';

class HighPrioritySelector extends StatelessWidget {
  const HighPrioritySelector({
    super.key,
    required this.sizes,
  });

  final Size sizes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11,right: 11,bottom: 10),
      child: FrostedWidget(
        height: 70,
        width: sizes.width * 0.87,
        borderRadius: 15,
        child: Container(
          color: Colors.black.withOpacity(0.5),
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: false,
                onChanged: (newValue){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                side: BorderSide(
                    width: 1,
                    color: const Color(0xffececec).withOpacity(0.7)
                ),
              ),
              Text(
                'High Priority',
                style: GoogleFonts.inter(
                  color: const Color(0xffcdcdcd),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(width: sizes.width*0.01,),
              Image.asset(
                'asset/page_23/error.png',
                height: 15,
                width: 15,
              ),
              SizedBox(width: sizes.width*0.1,),
              Container(
                height: 45,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Colors.green.shade700,
                      Colors.green.shade400,
                    ],
                    stops: const [0,1],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    foregroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Submit',
                    style: GoogleFonts.inter(
                        fontSize: 16,
                        color: const Color(0xffcdcdcd),
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
