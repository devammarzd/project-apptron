
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_apptron/CustomWidgets/CustomScaffold.dart';

import 'package:project_apptron/clothicons_icons.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        index: 0,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      InkWell(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.blue[100],
                              radius: 40,
                              child: Icon(
                                MdiIcons.tshirtCrewOutline,
                                size: 40,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Shirts',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        child: SizedBox(
                          width: 40,
                        ),
                      ),
                      InkWell(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.green[100],
                              radius: 40,
                              child: Icon(
                                Clothicons.sport_trousers_pants,
                                size: 30,
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Pants',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      InkWell(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.pink[100],
                              radius: 40,
                              child: Icon(
                                MdiIcons.shoeHeel,
                                size: 30,
                                color: Colors.pink,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Footwear',
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      InkWell(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.indigo[100],
                              radius: 40,
                              child: Icon(
                                Clothicons.wedding_dress,
                                size: 30,
                                color: Colors.indigo,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Dress',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      InkWell(
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.orange[100],
                              radius: 40,
                              child: Icon(
                                Clothicons.fashion_purse,
                                size: 30,
                                color: Colors.orange,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Handbags',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
//ad
              Card(
                elevation: 5.0,
                // color: Colors.green[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage('assets/extras/discountpic.jpeg'),
                        height: MediaQuery.of(context).size.height / 3.0,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                        left: 20,
                        top: 50,
                        child: Text(
                          'AVAIL UPTO',
                          style: TextStyle(
                              fontFamily: 'Cinzel',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                        left: 20,
                        top: 80,
                        child: Text(
                          '40% DISCOUNT',
                          style: TextStyle(
                              fontFamily: 'Cinzel',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
