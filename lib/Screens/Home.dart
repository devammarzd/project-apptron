import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_apptron/CustomWidgets/CustomScaffold.dart';
import 'package:project_apptron/CustomWidgets/Loading.dart';
import 'package:project_apptron/Global.dart';
import 'package:project_apptron/Screens/Categories/Collection.dart';
import 'package:project_apptron/Screens/ItemDetails/ItemDetails.dart';
import 'dart:convert';
import 'package:project_apptron/clothicons_icons.dart';
import 'package:http/http.dart' as http;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String url =
      "https://api.unsplash.com/search/photos/?query=female dress&client_id=ChAav-2ffB3ek3FLfLSjARu7K7cRxsW2-FkdwEkIxlg&per_page=5&content_filter=high&orientation=portrait";
  List data;
  bool loading = false;
  String id = '';
  String picurl;
  List<String> dressnames = [
    'Bodycon Dress',
    'Zebra Skirt',
    'Slit Dress',
    'Summer Dress',
    'Black Dress'
  ];
  List<String> dressprices = ['100', '80', '110', '90', '130'];

  // Future makeRequestforbody() async {
  //   var response = await http
  //       .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
  //   print(response.body);
  // }

  Future makeRequestsingleitem() async {
    setState(() {
      loading = true;
    });
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    var extractdata = JsonDecoder().convert(response.body);

    data = extractdata["results"];

    setState(() {
      picurl = data[0]['urls']['small'];
    });

    setState(() {
      loading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    makeRequestsingleitem();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        bottomappbarTitle: Container(),
        index: 0,
        body: loading
            ? Loading()
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 150,
                        child: ListView(
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Collection(
                                          collectionName: 'Shirts',
                                          urlSearch: 'shirt',
                                        )));
                              },
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
                               onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Collection(
                                          collectionName: 'Jeans',
                                          urlSearch: 'jeans',
                                        )));
                              },
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
                                    'Jeans',
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
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Collection(
                                          collectionName: 'Footwear',
                                          urlSearch: 'Footwear',
                                        )));
                              },
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
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Collection(
                                          collectionName: 'Dress',
                                          urlSearch: 'female dress',
                                        )));
                              },
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
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Collection(
                                          collectionName: 'Handbags',
                                          urlSearch: 'Handbag',
                                        )));
                              },
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
//ad
                      Card(
                        child: Stack(
                          children: [
                            ClipRRect(
                              child: Image(
                                image: AssetImage(
                                    'assets/extras/discountpic.jpeg'),
                                height:
                                    MediaQuery.of(context).size.height / 3.0,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                                left: 20,
                                top: 100,
                                child: Text(
                                  'FOR SLIM',
                                  style: TextStyle(
                                      color: secondaryColor,
                                      fontFamily: 'Cinzel',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                            Positioned(
                                left: 20,
                                top: 130,
                                child: Text(
                                  '& BEAUTY',
                                  style: TextStyle(
                                      color: secondaryColor,
                                      fontFamily: 'Cinzel',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Featured Products',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  letterSpacing: 3,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            FlatButton(
                              onPressed: () {
                                makeRequestsingleitem();
                              },
                              child: Text(
                                'Show All',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 2.5,
                        child: ListView.builder(
                            itemCount: data.length,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => ItemDetail(
                                            url: data[index]['urls']['regular'],
                                            name: dressnames[index],
                                            price: dressprices[index],
                                          )));
                                },
                                child: Column(
                                  children: <Widget>[
                                    Card(
                                      color: Colors.white,
                                      child: picurl != null
                                          ? Image.network(
                                              data[index]['urls']['regular'],
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  3,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2.5,
                                              fit: BoxFit.cover,
                                            )
                                          : Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  3,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2.5,
                                            ),
                                    ),
                                    Text(
                                      dressnames[index],
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(dressprices[index] + '\$'),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ));
  }
}
