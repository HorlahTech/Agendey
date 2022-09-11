import 'package:agendey/bottom_sheet.dart';
import 'package:agendey/task_list.dart';
import 'package:agendey/tile_list_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                      Icons.menu_sharp,
                      color: Colors.blueGrey,
                      size: 40.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Agendey',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    '${Provider.of<Taskdata>(context).taskDataLength} tasks',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    )),
                child: TilteListView(),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueGrey,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return AddTasks();
                });
          },
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
