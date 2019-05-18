import 'package:flutter/material.dart';
import 'package:idea_slot/Screens/navigation_drawer.dart';

class IdeaSlotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("this is idea slot screen.")),
      drawer: NavigationDrawer(),
    );
  }

}