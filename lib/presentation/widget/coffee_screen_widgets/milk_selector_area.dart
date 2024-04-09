import 'package:flutter/material.dart';

import 'choice_item.dart';

class MilkSelectorArea extends StatelessWidget {
  const MilkSelectorArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChoiceItem(selected: false,text: 'Skim Milk',),
              ChoiceItem(selected: false,text: 'Almond Milk',),
              ChoiceItem(selected: false,text: 'Soy Milk',),
              ChoiceItem(selected: false,text: 'Lactose Free \nMilk',),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChoiceItem(selected: true,text: 'Full Cream Milk',),
              ChoiceItem(selected: false,text: 'Full Cream Milk',),
              ChoiceItem(selected: false,text: 'Oak Milk',),
            ],
          )
        ],
      ),
    );
  }
}
