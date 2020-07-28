import 'package:flutter/material.dart';
import 'package:project_apptron/Global.dart';
import 'package:project_apptron/Screens/CartScreens/Cart.dart';
import 'package:project_apptron/Screens/ItemDetails/Description.dart';
import 'package:project_apptron/Screens/ItemDetails/Features.dart';

class ItemDetail extends StatefulWidget {
  final String url;
  final String name;
  final String price;
  const ItemDetail({
    @required this.url,
    @required this.name,
    @required this.price,
    Key key,
  }) : super(key: key);
  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: primaryTextColor),
          backgroundColor: Colors.transparent,
          title: Text('Item Details',
              style: TextStyle(
                  color: primaryTextColor, fontWeight: FontWeight.w800)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                ),
                ClipRRect(
                  child: Image.network(
                    widget.url,
                    height: MediaQuery.of(context).size.height / 1.7,
                    width: MediaQuery.of(context).size.width / 1.3,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Size',
                        enabled: false,
                        suffixIcon: IconButton(
                            icon: Icon(Icons.arrow_drop_down),
                            onPressed: () {}),
                        disabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2.0, color: Colors.grey),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: Text(widget.name,
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('\$' + widget.price,
                          style: TextStyle(
                            fontSize: 18,
                          )),
                      SizedBox(width: 10),
                      Text('\$500.00',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 20,
                    ),
                    Icon(Icons.star, color: Colors.orangeAccent, size: 20),
                    Icon(Icons.star, color: Colors.orangeAccent, size: 20),
                    Icon(Icons.star, color: Colors.grey, size: 20),
                    Icon(Icons.star, color: Colors.grey, size: 20)
                  ],
                ),
                PreferredSize(
                  preferredSize: Size(MediaQuery.of(context).size.width, 80),
                  child: TabBar(
                      indicatorColor: primaryTextColor,
                      labelStyle: TextStyle(color: primaryTextColor),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(
                            icon: Text(
                          'DESCRIPTION',
                        )),
                        Tab(icon: Text('FEATURES')),
                        Tab(icon: Text('REVIEWS')),
                      ]),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: TabBarView(
                      children: [Description(), Features(), Container()]),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => Cart()),
                (Route<dynamic> route) => false);
          },
          backgroundColor: Colors.orangeAccent,
          label: Text(
            'Buy Now',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          icon: Icon(Icons.payment),
          foregroundColor: Colors.white,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
