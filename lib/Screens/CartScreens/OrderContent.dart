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
            child: Text(
              'Order Confirmation',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Icon(
              Icons.check,
              size: 35.0,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                color: Colors.orangeAccent, shape: BoxShape.circle),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Thank you!',
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Thank you so much for your purchased, check your delivery status by tapping the View My orders button.',
                maxLines: 2,
              ))
        ],
      ),
    );
  }
}
