import 'package:flutter/material.dart';
import 'package:project_apptron/Global.dart';
import 'package:project_apptron/Screens/Home.dart';

class WishList extends StatefulWidget {
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: primaryTextColor),
        backgroundColor: Colors.transparent,
        title: Text('Wishlist',
            style: TextStyle(
                color: primaryTextColor, fontWeight: FontWeight.w800)),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.favorite_border,
              color: Colors.blueGrey,
              size: 40,
            ),
            SizedBox(
              height: 30,
            ),
            Text('Empty Wishlist',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 20,
            ),
            Text('There is no item in wishlist')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => Home()),
              (Route<dynamic> route) => false);
        },
        backgroundColor: primaryTextColor,
        label: Text(
          'Shop Now',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        icon: Icon(Icons.payment),
        foregroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
