import 'package:employees_app/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(EmplApp());
}
class EmplApp extends StatelessWidget {
  //const EmplApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Employees App"),
        ),
        body: Login(),
      ),
    );
  }
}
