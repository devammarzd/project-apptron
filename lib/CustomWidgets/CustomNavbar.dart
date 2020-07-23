import 'package:flutter/material.dart';
import 'package:project_apptron/Screens/Home.dart';
class CustomNavbar extends StatefulWidget {
  final int index;
  const CustomNavbar({Key key, @required this.index}) : super(key: key);
  @override
  _CustomNavbarState createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.index,
        elevation: 12,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => Home()),
                (Route<dynamic> route) => false);
          }
          if (index == 1) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) =>Home()),
                (Route<dynamic> route) => false);
          }
          if (index == 2) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) =>Home()),
                (Route<dynamic> route) => false);
          }
          if (index == 3) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => Home()),
                (Route<dynamic> route) => false);
          }
          if (index == 4) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => Home()),
                (Route<dynamic> route) => false);
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            title: Text('')
             ),
          BottomNavigationBarItem(
              icon: Icon(Icons.border_all),
               title: Text('')
             ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
               title: Text('')
            ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
               title: Text('')
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
               title: Text('')
             ),
             BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
               title: Text('')
             )
        ]);
  }
}
