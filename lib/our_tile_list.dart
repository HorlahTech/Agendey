import 'package:flutter/material.dart';

class OurTileList extends StatelessWidget {
  OurTileList(
      {required this.name,
      required this.taskDone,
      required this.onChangedValue,
      required this.indexToRemove});
  final String name;
  final bool taskDone;
  final Function(bool?) onChangedValue;
  final indexToRemove;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: taskDone
            ? TextStyle(
                fontSize: 20.0,
                decoration: TextDecoration.lineThrough,
              )
            : TextStyle(
                fontSize: 20.0,
              ),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueGrey,
        value: taskDone,
        onChanged: onChangedValue,
      ),
      onLongPress: indexToRemove,
    );
  }
}
