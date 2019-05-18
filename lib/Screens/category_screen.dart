import 'package:flutter/material.dart';
import 'package:idea_slot/Screens/navigation_drawer.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("this is category screen.")),
      drawer: NavigationDrawer(),
    );
  }
}