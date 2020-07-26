import 'package:flutter/material.dart';
import 'package:project_apptron/Global.dart';
import 'package:project_apptron/Screens/AllCategories.dart';
import 'package:project_apptron/Screens/CartScreens/Cart.dart';
import 'package:project_apptron/Screens/Home.dart';
import 'package:project_apptron/Screens/SearchScreen.dart';
import 'package:project_apptron/Screens/Stepperdemo.dart';
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
      selectedItemColor: primaryTextColor,
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
                MaterialPageRoute(builder: (context) =>AllCategories()),
                (Route<dynamic> route) => false);
          }
          if (index == 2) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) =>SearchScreen()),
                (Route<dynamic> route) => false);
          }
          if (index == 3) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => Cart()),
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
            title: Text('Home',style: TextStyle(fontSize: 10),)
             ),
          BottomNavigationBarItem(
              icon: Icon(Icons.border_all),
               title: Text('Categories',style: TextStyle(fontSize: 10),)
             ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
               title: Text('Search',style: TextStyle(fontSize: 10),)
            ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
               title: Text('Cart',style: TextStyle(fontSize: 10),)
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
               title: Text('Account',style: TextStyle(fontSize: 10),)
             ),
             BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
               title: Text('Orders',style: TextStyle(fontSize: 10),)
             )
        ]);
  }
}
