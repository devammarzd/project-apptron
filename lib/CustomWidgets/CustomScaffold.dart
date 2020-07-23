import 'package:flutter/material.dart';
import 'package:project_apptron/CustomWidgets/CustomNavbar.dart';
import 'package:project_apptron/Global.dart';
class CustomScaffold extends StatefulWidget {
  final int index;
  final Widget body;
  const CustomScaffold({Key key, @required this.index,@required this.body}) : super(key: key);
  @override
  _CustomScaffoldState createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.transparent,
        iconTheme: IconThemeData(
          color: primaryTextColor
        ),
        
      ),
      drawer: Drawer(
        child: ListView(

        ),
      ),
      body: widget.body,
      bottomNavigationBar: CustomNavbar(index: widget.index),
    );
  }
}