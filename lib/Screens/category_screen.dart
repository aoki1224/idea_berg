import 'package:flutter/material.dart';
import 'package:idea_slot/Screens/navigation_drawer.dart';
import 'package:idea_slot/Widgets/category_card.dart';

class CategoryScreen extends StatelessWidget {

  static const _categoryNames = <String>[
    "category1",
    "category2",
    "category3",
    "category4",
    "category5",
  ];

  Widget _buildCategoryWidgets(List<CategoryCard> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    final categories = <CategoryCard>[];
    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(CategoryCard(
        category: _categoryNames[i],
      ));
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Category",),
        ),
        drawer: NavigationDrawer(),
        body: Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: _buildCategoryWidgets(categories),
        ));
  }
}
