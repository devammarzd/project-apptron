import 'package:flutter/material.dart';
import 'package:project_apptron/CustomWidgets/Loading.dart';
import 'package:project_apptron/Global.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:project_apptron/Screens/ItemDetails/ItemDetails.dart';

class Collection extends StatefulWidget {
  final String collectionName;
  final String urlSearch;
  const Collection(
      {Key key, @required this.collectionName, @required this.urlSearch})
      : super(key: key);

  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  int noOfItems = 10;
  bool showmore = false;
  List data;
  bool loading = false;
  String picurl;
  String url;

  Future makeRequest() async {
    setState(() {
      loading = true;
      url =
          "https://api.unsplash.com/search/photos/?query=${widget.urlSearch}&client_id=ChAav-2ffB3ek3FLfLSjARu7K7cRxsW2-FkdwEkIxlg&per_page=20&content_filter=high&orientation=portrait";
    });

    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    var extractdata = JsonDecoder().convert(response.body);
    data = extractdata["results"];
    print(data.length);
    setState(() {
      loading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    makeRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: primaryTextColor),
        backgroundColor: Colors.transparent,
        title: Text('${widget.collectionName} Collection',
            style: TextStyle(
                color: primaryTextColor, fontWeight: FontWeight.w800)),
      ),
      body: SingleChildScrollView(
        child:loading
                ? Loading()
                : Column(
          children: <Widget>[
             GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    //  physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 2.4 / 4, crossAxisCount: 2),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Card(
                          elevation: 3.0,
                          shadowColor: Colors.indigo[50],
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ItemDetail(
                                    url:data[index]['urls']['regular'] ,
                                    price: '200',
                                    name: 'Item ${index+1}',

                                  )));
                            },
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    ClipRRect(
                                      child: Container(
                                        color: Colors.grey[200],
                                        child: Image(
                                          image: NetworkImage(
                                              '${data[index]['urls']['regular']}'),

                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              3.2, //this is to make height responsive to screen height
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2, //this is to make width responsive to screen width
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        //this widget positions the circular button on the cliprect
                                        height: 30,
                                        width: 30,
                                        right:
                                            8.0, //iska matlab cliprect k right border se 8.0 points dur
                                        bottom: 8.0,
                                        child: RawMaterialButton(
                                          onPressed: () {},
                                          elevation: 1.0,
                                          fillColor: secondaryColor,
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: Colors.red,
                                          ),
                                          // padding: EdgeInsets.all(5.0),
                                          shape: CircleBorder(),
                                        ))
                                  ],
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'Item ${index+1}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text(
                                          'Price: 200 USD',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),

                                        // Text('Weight : $weight',style: TextStyle(fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ));
                    }),
//second grid
            showmore
                ? GridView.builder(
                    shrinkWrap: true,
                    primary: false,
                    //  physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 2.4 / 4, crossAxisCount: 2),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Card(
                          elevation: 3.0,
                          shadowColor: Colors.indigo[50],
                          child: InkWell(
                            onTap: () {
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => ItemDetail(
                                    url:data[index+10]['urls']['regular'] ,
                                    price: '200',
                                    name: 'Item ${index+11}',

                                  )));
                            },
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Stack(
                                  children: <Widget>[
                                    ClipRRect(
                                      child: Container(
                                        color: Colors.grey[200],
                                        child: Image(
                                          image: NetworkImage(
                                              '${data[index + 10]['urls']['regular']}'),

                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              3.2, //this is to make height responsive to screen height
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2, //this is to make width responsive to screen width
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        //this widget positions the circular button on the cliprect
                                        height: 30,
                                        width: 30,
                                        right:
                                            8.0, //iska matlab cliprect k right border se 8.0 points dur
                                        bottom: 8.0,
                                        child: RawMaterialButton(
                                          onPressed: () {},
                                          elevation: 1.0,
                                          fillColor: secondaryColor,
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: Colors.red,
                                          ),
                                          // padding: EdgeInsets.all(5.0),
                                          shape: CircleBorder(),
                                        ))
                                  ],
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'Item ${index+11}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text(
                                          'Price: 200 USD',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),

                                        // Text('Weight : $weight',style: TextStyle(fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ));
                    })
                : Container(),
            showmore
                ? Container()
                : RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      setState(() {
                        showmore = true;
                      });
                    },
                    color: Colors.grey[300],
                    child: Container(
                      alignment: Alignment.center,
                      height: 20,
                      width: MediaQuery.of(context).size.width / 6,
                      child: Text('View more'),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
