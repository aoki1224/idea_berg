import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idea_slot/Widgets/category_dropdown.dart';

class IdeaSlot extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IdeaSlotState(); 
}

class _IdeaSlotState extends State<IdeaSlot> {
  int pickerValue = 1;
  static const _wordNames= <String>[
    "word1",
    "word2",
    "word3",
    "word4",
    "word5",
  ];

  @override
  Widget build(BuildContext context) {
    final random = Random.secure();
    final words = <Text>[];
    for (var i = 0; i < _wordNames.length; i++) {
      words.add(Text(_wordNames[i], style: TextStyle(fontSize: 20.0),));
    }

    return Material(
      child: Column(
        children: <Widget>[
          CategoryDropDown(dropdownValue: "category4",),
          Container(
            height: 200.0,
            width: 150.0,
            child: ListWheelScrollView(
              children: words,
              diameterRatio: 1.3,
              itemExtent: 50, 
              onSelectedItemChanged: (int newValue) {
                setState(() {
                  pickerValue = newValue; 
                });
              },
              ),
          ),
          InkWell(
            child: Icon(Icons.refresh, size: 33.0,),
            onTap: () {
              setState(() {
                pickerValue = random.nextInt(_wordNames.length);
              });
            },
          )
        ],
      ),
    );
  }

}