import 'package:flutter/material.dart';
class OrderContent extends StatefulWidget {
  @override
  _OrderContentState createState() => _OrderContentState();
}

class _OrderContentState extends State<OrderContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Text('Order Confirmation',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
          )
        ],
      ),
    );
  }
}