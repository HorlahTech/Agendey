import 'package:agendey/home_page.dart';
import 'package:agendey/task_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Taskdata()),
      ],
      child: MaterialApp(
        title: 'Agendey - To do application',
        theme: ThemeData().copyWith(
          primaryColor: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
