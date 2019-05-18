import 'package:flutter/material.dart';

class CategoryDropDown extends StatefulWidget {
  final String dropdownValue;
  const CategoryDropDown({Key key, this.dropdownValue}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CategoryDropDownState(dropdownValue);
}

class _CategoryDropDownState extends State<CategoryDropDown> {
  String dropdownValue;
  static const _categoryNames = <String>[
      "category1",
      "category2",
      "category3",
      "category4",
      "category5",
    ];

  _CategoryDropDownState(this.dropdownValue);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      width: 160.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(10.0)
      ) ,
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 17.0),
          value: dropdownValue,
          items: _categoryNames.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
          onChanged: (String newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
        ),
      ),
    );
  }
}
