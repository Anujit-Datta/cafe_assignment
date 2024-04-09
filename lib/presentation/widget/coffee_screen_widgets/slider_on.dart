import 'package:flutter/material.dart';

class SliderOn extends StatelessWidget {
  const SliderOn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 35,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [Colors.green, Colors.grey], // Your desired colors
            begin: Alignment.centerLeft, // Start point of the gradient
            end: Alignment.centerRight, // End point of the gradient
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [Color(0xff206823), Colors.grey], // Your desired colors
                    begin: Alignment.centerLeft, // Start point of the gradient
                    end: Alignment.centerRight, // End point of the gradient
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
