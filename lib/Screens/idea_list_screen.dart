import 'package:flutter/material.dart';
import 'package:idea_slot/Screens/navigation_drawer.dart';
import 'package:idea_slot/Widgets/idea_card.dart';

class IdeaListScreen extends StatelessWidget {

  static const _ideaNames = <String>[
    "Idea1",
    "Idea2",
    "Idea3",
    "Idea4",
    "Idea5",
  ];

  Widget _buildCategoryWidgets(List<IdeaCard> ideas) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => ideas[index],
      itemCount: ideas.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final ideas = <IdeaCard>[];
    for (var i = 0; i < _ideaNames.length; i++) {
      ideas.add(IdeaCard(
        idea: _ideaNames[i],
      ));
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Category",),
        ),
        drawer: NavigationDrawer(),
        body: Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: _buildCategoryWidgets(ideas),
        ));
  }
}
