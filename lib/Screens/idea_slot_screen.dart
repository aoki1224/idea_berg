import 'package:flutter/material.dart';
import 'package:idea_slot/Screens/navigation_drawer.dart';
import 'package:idea_slot/Widgets/idea_slot.dart';

class IdeaSlotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: NavigationDrawer(),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IdeaSlot(),
                  Text(
                    "+",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  IdeaSlot(),
                ],
              ),
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: Text(
                "All shuffle",
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                print("yeah");
              },
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Title :",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: 230.0,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration:
                        BoxDecoration(color: Theme.of(context).dividerColor),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Idea Name",
                          hintStyle:
                              TextStyle(color: Theme.of(context).primaryColor)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.check_circle_outline,
                      color: Theme.of(context).primaryColor,
                      size: 35.0,
                    ),
                  )
                ],
              ),
            ),
            //idea name input area
            Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.only(top: 10.0),
              height: 240.0,
              decoration: BoxDecoration(color: Theme.of(context).dividerColor),
              child: Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Input something about this idea.",
                      border: InputBorder.none),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
