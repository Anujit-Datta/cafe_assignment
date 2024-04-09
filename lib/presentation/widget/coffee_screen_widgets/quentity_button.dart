import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuentityButton extends StatelessWidget {
  const QuentityButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 53,
        height: 27,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xffd9d9d9)
        ),
        child: DropdownButton<int>(
          value: 1,
          icon: Container(
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Color(0xff9b9b9b),
                  width: 1, // Set the width of the border
                ),
              ),
            ),
            child: const Icon(Icons.arrow_drop_down),
          ), // Down arrow icon
          iconSize: 24.0,
          elevation: 16,
          style: const TextStyle(color: Colors.black, fontSize: 16.0),
          underline: Container(
            height: 0, // Customize underline color
          ),
          onChanged: (int? newValue){},
          items: <int>[1,2,3,4,5]
              .map<DropdownMenuItem<int>>((int value) {
            return DropdownMenuItem<int>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                child: Text(
                  value.toString(),
                  style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff9b9b9b)
                  ),
                ),
              ),
            );
          }).toList(),
        )
    );
  }
}
