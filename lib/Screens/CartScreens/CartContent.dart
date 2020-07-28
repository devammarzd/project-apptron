import 'package:flutter/material.dart';
import 'package:project_apptron/Global.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CartContent extends StatefulWidget {
  @override
  _CartContentState createState() => _CartContentState();
}

class _CartContentState extends State<CartContent> {
  bool loading = false;
  String url =
      "https://api.unsplash.com/search/photos/?query=dress&client_id=ChAav-2ffB3ek3FLfLSjARu7K7cRxsW2-FkdwEkIxlg&per_page=2&content_filter=high&orientation=portrait";
  List data;
  String picurl;
  Future makeRequest() async {
    setState(() {
      loading = true;
    });
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    var extractdata = JsonDecoder().convert(response.body);
    data = extractdata["results"];

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
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Text(
              'Your Cart',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Total Price:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Text('\$500.00',
                  style: TextStyle(
                      fontSize: 16,
                      color: primaryTextColor,
                      fontWeight: FontWeight.w600))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            itemCount: loading ? 0 : data.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 0.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      child: loading
                          ? Container(
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 3.5,
                              color: Colors.grey[100],
                            )
                          : Image.network(
                              data[index]['urls']['small'],
                              height: MediaQuery.of(context).size.height / 7,
                              width: MediaQuery.of(context).size.width / 3.5,
                              fit: BoxFit.cover,
                            ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 120,
                          child: Text(
                            dressdata[index]['Dress'],
                            style: TextStyle(fontSize: 16),
                            maxLines: 2,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(dressdata[index]['Price'] + '\$'),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            height: MediaQuery.of(context).size.height / 7,
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: InkWell(
                                  child: Icon(Icons.delete), onTap: () {}),
                            ))
                      ],
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: primaryTextColor),
                          borderRadius: BorderRadius.circular(20)),
                      height: MediaQuery.of(context).size.height / 6.8,
                      width: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          InkWell(
                              onTap: () {}, child: Icon(Icons.arrow_drop_up)),
                          Container(
                            child: Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          InkWell(
                              onTap: () {}, child: Icon(Icons.arrow_drop_down)),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
