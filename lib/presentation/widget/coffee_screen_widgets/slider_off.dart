import 'package:flutter/material.dart';

class SliderOff extends StatelessWidget {
  const SliderOff({
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
            colors: [Color(0xff5b5b5b), Color(0xffbababa)], // Your desired colors
            begin: Alignment.centerLeft, // Start point of the gradient
            end: Alignment.centerRight, // End point of the gradient
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [Colors.white, Colors.grey], // Your desired colors
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
