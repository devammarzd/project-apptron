import 'package:flutter/material.dart';

class PaymentContent extends StatefulWidget {
  @override
  _PaymentContentState createState() => _PaymentContentState();
}

class _PaymentContentState extends State<PaymentContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Text('Payment Method',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
          )
        ],
      ),
    );
  }
}