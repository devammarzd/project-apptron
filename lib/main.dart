import 'package:flutter/material.dart';
import 'package:project_apptron/CustomWidgets/CustomScaffold.dart';
import 'package:project_apptron/Global.dart';
import 'package:project_apptron/Screens/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryTextColor,
        accentColor: primaryTextColor,
        fontFamily: 'DidactGothic',
        iconTheme: IconThemeData(color: primaryTextColor),
      ),
      home: Home(),
    );
  }
}
