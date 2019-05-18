import 'package:flutter/material.dart';
import 'package:idea_slot/Screens/drawer.dart';

class IdeaListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("this is idea list screen.")),
      drawer: NavigationDrawer(),
    );
  }

}