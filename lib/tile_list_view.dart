import 'package:agendey/our_tile_list.dart';
import 'package:agendey/task_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TilteListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return OurTileList(
                name: taskData.gettasksList[index].name,
                taskDone: taskData.gettasksList[index].isDone,
                onChangedValue: (newValue) {
                  if (newValue != null) {
                    taskData.updateList(taskData.gettasksList[index]);
                    // setState(() {
                    //   taskList[index].taskStateToggle();
                    // });
                  }
                },
                indexToRemove: () {
                  taskData.deleteList(index);
                });
          },
          itemCount: taskData.taskDataLength,
        );
      },
    );
  }
}
