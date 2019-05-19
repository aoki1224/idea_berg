import 'package:flutter/material.dart';

class EachIdeaScreen extends StatelessWidget {
  final String idea;

  const EachIdeaScreen({Key key, this.idea})
      : assert(idea != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(idea),
        ),
        body: Column(
          children: <Widget>[
            //title 入力欄
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Title :",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    decoration:
                        BoxDecoration(color: Theme.of(context).dividerColor),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Idea Name",
                          hintStyle:
                              TextStyle(color: Theme.of(context).primaryColor)),
                    ),
                  )
                ],
              ),
            ),

            //word combination
            Container(
              margin: EdgeInsets.symmetric(vertical: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      "Word Combination :",
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Theme.of(context).primaryColor),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Card(
                        color: Theme.of(context).dividerColor,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 30.0),
                            child: Text("word1")),
                      ),
                      Text(
                        "+",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 30.0),
                      ),
                      Card(
                        color: Theme.of(context).dividerColor,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 30.0),
                            child: Text("word2")),
                      ),
                      Text(
                        "+",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 30.0),
                      ),
                      Card(
                        color: Theme.of(context).dividerColor,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 30.0),
                            child: Text("word3")),
                      ),
                    ],
                  )
                ],
              ),
            ),

            //Details
            Container(
              margin: EdgeInsets.symmetric(vertical: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          "Details :",
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Theme.of(context).primaryColor),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: Icon(
                          Icons.check_circle_outline,
                          color: Theme.of(context).primaryColor,
                          size: 35.0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    height: 240.0,
                    decoration:
                        BoxDecoration(color: Theme.of(context).dividerColor),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Input something about this idea.",
                          border: InputBorder.none
                        ),
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
