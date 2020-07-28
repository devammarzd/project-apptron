import 'package:flutter/material.dart';

class PaymentContent extends StatefulWidget {
  @override
  _PaymentContentState createState() => _PaymentContentState();
}

class _PaymentContentState extends State<PaymentContent> {
  bool jazzcash = false;
  bool creditcard = false;
  bool cashOnDelv = true;
  paymentModeSel(int modeNo) {
    if (modeNo == 1) {
      setState(() {
        jazzcash = true;
        creditcard = false;
        cashOnDelv = false;
      });
    } else if (modeNo == 2) {
      setState(() {
        jazzcash = false;
        creditcard = true;
        cashOnDelv = false;
      });
    } else if (modeNo == 3) {
      setState(() {
        jazzcash = false;
        creditcard = false;
        cashOnDelv = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Select Payment method:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  paymentModeSel(1);
                },
                borderRadius: BorderRadius.circular(15),
                child: Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.8,
                    width: MediaQuery.of(context).size.width / 3.2,
                    // alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: jazzcash ? Colors.green[700] : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.green)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Jazz Cash/Easy Paisa',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color:
                                  jazzcash ? Colors.white : Colors.green[700],
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  paymentModeSel(2);
                },
                borderRadius: BorderRadius.circular(15),
                child: Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.8,
                    width: MediaQuery.of(context).size.width / 3.2,
                    // alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: creditcard ? Colors.green[700] : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.green)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Credit Card',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color:
                                  creditcard ? Colors.white : Colors.green[700],
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  paymentModeSel(3);
                },
                borderRadius: BorderRadius.circular(15),
                child: Card(
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4.8,
                    width: MediaQuery.of(context).size.width / 3.2,
                    // alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: cashOnDelv ? Colors.green[700] : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.green)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Cash on Delivery',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color:
                                  cashOnDelv ? Colors.white : Colors.green[700],
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Subtotal',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Shipping'),
                  Text('\$10.00'),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Total'),
                  Text('\$10.00'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
