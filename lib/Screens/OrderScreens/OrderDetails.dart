import 'package:flutter/material.dart';
import 'package:project_apptron/Global.dart';

class OrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: primaryTextColor),
        backgroundColor: Colors.transparent,
        title: Text('Order Details',
            style: TextStyle(
                color: primaryTextColor, fontWeight: FontWeight.w800)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Order ID: #20306',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Velvet Gown Dress',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'x1',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      '\$100.00',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Subtotal',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      '\$100.00',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Shipping',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      '\$10.00',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              Divider(
                color: primaryTextColor,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 8, right: 8),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Total',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      '\$110.00',
                      style: TextStyle(
                          color: primaryTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Status',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text('PENDING',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: primaryTextColor,
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                'Shipping Address: ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text('North Nazimabad, Karachi, Pakistan',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                'Order Notes: ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text('xyz order notes',
                  style: TextStyle(
                    fontSize: 16,
                  )),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      color: Colors.red[700]),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          'Refund',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      color: Colors.indigo[700]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
