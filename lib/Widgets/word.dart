import 'package:flutter/material.dart';
import 'package:idea_slot/Widgets/category_dropdown.dart';

class Word extends StatelessWidget {
  final String word;
  final String category;

  const Word({Key key, this.word, this.category}) : 
      assert(word != null),
      assert(category != null),
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      padding: EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
          border: BorderDirectional(
              bottom: BorderSide(color: Theme.of(context).primaryColorLight))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: 160.0,
            child: Text(
              word,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          CategoryDropDown(dropdownValue: category,),
        ],
      ),
    );
  }
}
