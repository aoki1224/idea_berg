import 'package:flutter/material.dart';
import 'package:idea_slot/Screens/each_idea_screen.dart';

class IdeaCard extends StatelessWidget {
  final String idea;

  const IdeaCard({Key key, this.idea})
      : assert(idea != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
              return EachIdeaScreen(idea: idea,);
            }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.0),
        padding: EdgeInsets.symmetric(vertical: 5.0),
        height: 50.0,
        decoration: BoxDecoration(
            border: BorderDirectional(
                bottom:
                    BorderSide(color: Theme.of(context).primaryColorLight))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              idea,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).primaryColor,
              size: 18.0,
            )
          ],
        ),
      ),
    );
  }
}
