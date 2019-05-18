import 'package:flutter/material.dart';
import 'package:idea_slot/Screens/navigation_drawer.dart';
import 'package:idea_slot/Widgets/add_word.dart';
import 'package:idea_slot/Widgets/word.dart';

class WordScreen extends StatelessWidget {
  static const _wordNames = <String>[
    "word1",
    "word2",
    "word3",
    "word4",
    "word5",
  ];

  static const _categoryNames = <String>[
    "category1",
    "category2",
    "category3",
    "category4",
    "category5",
  ];

  Widget _buildWordWidgets(List<Widget> words) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => words[index],
      itemCount: words.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final words = <Word>[];
    for (var i = 0; i < _wordNames.length; i++) {
      words.add(Word(
        word: _wordNames[i],
        category: _categoryNames[i],
      ));
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Word"),
        ),
        drawer: NavigationDrawer(),
        body: Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Column( 
            children: <Widget>[
                AddWord(),
                Container(
                  height: 500.0,
                  child: _buildWordWidgets(words)
                  ),
            ],
          ),
        ),
    );
  }
}
