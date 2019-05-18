import 'package:flutter/material.dart';
import 'package:idea_slot/Screens/category_screen.dart';
import 'package:idea_slot/Screens/idea_list_screen.dart';
import 'package:idea_slot/Screens/idea_slot_screen.dart';
import 'package:idea_slot/Screens/word_screen.dart';

class NavigationDrawer extends StatelessWidget {
  void _navigateTo(BuildContext context, Widget screenWidget) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return screenWidget;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Tesshu"),
            accountEmail: Text("ito1002jp@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 35.0,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => _navigateTo(context, WordScreen()),
            child: ListTile(
              title: Text("word screen"),
            ),
          ),
          InkWell(
            onTap: () => _navigateTo(context, CategoryScreen()),
            child: ListTile(
              title: Text("category screen"),
            ),
          ),
          InkWell(
            onTap: () => _navigateTo(context, IdeaListScreen()),
            child: ListTile(
              title: Text("Idea List screen"),
            ),
          ),
          InkWell(
            onTap: () => _navigateTo(context, IdeaSlotScreen()),
            child: ListTile(
              title: Text("Idea Slot screen"),
            ),
          ),
        ],
      ),
    );
  }
}
