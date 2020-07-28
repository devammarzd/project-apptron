import 'package:flutter/material.dart';
import 'package:project_apptron/CustomWidgets/CustomDrawer.dart';
import 'package:project_apptron/CustomWidgets/CustomNavbar.dart';
import 'package:project_apptron/Global.dart';

class CustomScaffold extends StatefulWidget {
  // final FloatingActionButton floatingActionButton;
  final int index;
  final Widget body;
  final Widget bottomappbarTitle;
  const CustomScaffold(
      {Key key,
      @required this.index,
      @required this.body,
      @required this.bottomappbarTitle})
      : super(key: key);
  @override
  _CustomScaffoldState createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  List catMusic = ['Suits', 'T-Shirts', 'Jeans', 'Shoes'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: widget.bottomappbarTitle == null
            ? Size.fromHeight(MediaQuery.of(context).size.height / 12)
            : Size.fromHeight(MediaQuery.of(context).size.height / 8),
        child: AppBar(
          bottom: widget.bottomappbarTitle == null
              ? PreferredSize(child: Container(), preferredSize: Size(0, 0))
              : PreferredSize(
                  child: widget.bottomappbarTitle,
                  preferredSize:
                      Size.fromHeight(MediaQuery.of(context).size.height / 10)),
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: primaryTextColor),
        ),
      ),
      drawer: CustomDrawer(),
      body: widget.body,
      bottomNavigationBar: CustomNavbar(index: widget.index),
    );
  }
}
