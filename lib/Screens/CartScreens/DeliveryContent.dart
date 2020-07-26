import 'package:flutter/material.dart';
import 'package:project_apptron/Global.dart';

class DeliveryContent extends StatefulWidget {
  @override
  _DeliveryContentState createState() => _DeliveryContentState();
}

class _DeliveryContentState extends State<DeliveryContent> {
  bool freeShip = false;
  bool flatRate = false;
  bool localPickup = true;

  deliveryModeSel(int modeNo) {
    if (modeNo == 1) {
      setState(() {
        freeShip = true;
        flatRate = false;
        localPickup = false;
      });
    } else if (modeNo == 2) {
      setState(() {
        freeShip = false;
        flatRate = true;
        localPickup = false;
      });
    } else if (modeNo == 3) {
      setState(() {
        freeShip = false;
        flatRate = false;
        localPickup = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Text(
              'Delivery',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  deliveryModeSel(1);
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
                        color:
                            freeShip ? Colors.indigoAccent[400] : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.indigo)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '0 \$',
                          style: TextStyle(
                              color: freeShip
                                  ? Colors.white
                                  : Colors.indigoAccent[400],
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Free Shipping',
                          style: TextStyle(
                              color: freeShip
                                  ? Colors.white
                                  : Colors.indigoAccent[400],
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  deliveryModeSel(2);
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
                        color:
                            flatRate ? Colors.indigoAccent[400] : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.indigo)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '5 \$',
                          style: TextStyle(
                              color: flatRate
                                  ? Colors.white
                                  : Colors.indigoAccent[400],
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Flat Rate',
                          style: TextStyle(
                              color: flatRate
                                  ? Colors.white
                                  : Colors.indigoAccent[400],
                              fontSize: 16),
                        )
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
                  deliveryModeSel(3);
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
                        color: localPickup
                            ? Colors.indigoAccent[400]
                            : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.indigo)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '10 \$',
                          style: TextStyle(
                              color: localPickup
                                  ? Colors.white
                                  : Colors.indigoAccent[400],
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Local Pickup',
                          style: TextStyle(
                              color: localPickup
                                  ? Colors.white
                                  : Colors.indigoAccent[400],
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Your Delivery Info:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 15,
          ),
          ListView.separated(
            separatorBuilder: (context,index){
              return SizedBox(height: 10,);
            },
            shrinkWrap: true,
            primary: false,
            itemCount: inputFieldsDelivery.length,
            itemBuilder: (context,index){

return  Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Text(
                    '${inputFieldsDelivery[index]}:',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                height: 40,
                child: TextField(
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ))
            ],
          );
          })
         
        ],
      ),
    );
  }
}
