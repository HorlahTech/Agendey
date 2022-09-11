import 'package:agendey/task_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTasks extends StatelessWidget {
  late String NewTaskName;

  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add New Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.blueGrey,
                ),
              ),
              TextField(
                // controller: _controller,
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  NewTaskName = value;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                child: Text('Submit'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blueGrey),
                ),
                onPressed: () {
                  // setState(() {
                  if (NewTaskName != null) {
                    //     Provider.of<Taskdata>(context)
                    //         .taskList
                    //         .add(Task(name: NewTaskName));
                    Provider.of<Taskdata>(context, listen: false)
                        .addList(title: NewTaskName);
                    Navigator.pop(context);
                  }
                },

                // _controller.clear();
              ),
            ],
          ),
        ),
      ),
    );
  }
}
