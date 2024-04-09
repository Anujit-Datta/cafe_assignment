import 'package:flutter/material.dart';

import 'choice_item.dart';

class SugerSelectorArea extends StatelessWidget {
  const SugerSelectorArea({
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
              ChoiceItem(selected: false,text: 'Suger X1',),
              ChoiceItem(selected: false,text: '½ Sugar',),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChoiceItem(selected: true,text: 'Suger X2',),
              ChoiceItem(selected: false,text: 'No Suger',),
            ],
          )
        ],
      ),
    );
  }
}
