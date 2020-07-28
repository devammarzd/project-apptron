import 'package:flutter/material.dart';
import 'package:project_apptron/CustomWidgets/CustomScaffold.dart';
import 'package:project_apptron/CustomWidgets/Loading.dart';
import 'package:project_apptron/Global.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_apptron/Screens/ItemDetails/ItemDetails.dart';

class SearchScreen extends StatefulWidget {
  // final List singledata;
  // const SearchScreen({Key key, @required this.singledata}):super(key:key);
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool loading = false;
  String url =
      "https://api.unsplash.com/search/photos/?query=dress&client_id=ChAav-2ffB3ek3FLfLSjARu7K7cRxsW2-FkdwEkIxlg&per_page=10&content_filter=high&orientation=portrait";
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
    return CustomScaffold(
      bottomappbarTitle: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Card(
          elevation: 2,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 19,
            child: TextField(
              cursorColor: primaryTextColor,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white)),
                  prefixIcon: Icon(Icons.search, color: Colors.blueGrey),
                  suffixIcon: IconButton(
                      icon: Icon(
                        Icons.filter_list,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {}),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: primaryTextColor))),
            ),
          ),
        ),
      ),
      index: 2,
      body: SingleChildScrollView(
        // primary: false,

        child: Column(
          children: <Widget>[
            loading
                ? Loading()
                : ListView.separated(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: data.length,
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ItemDetail(
                                  url: data[index]['urls']['regular'],
                                  dressname: dressdata[index]['Dress'],
                                  price: dressdata[index]['Price'])));
                        },
                        child: Card(
                          elevation: 0.0,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ClipRRect(
                                child: Image.network(
                                  data[index]['urls']['small'],
                                  height:
                                      MediaQuery.of(context).size.height / 7,
                                  width:
                                      MediaQuery.of(context).size.width / 3.5,
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
                                      width: 180,
                                      child: Text(
                                        dressdata[index]['Dress'],
                                        style: TextStyle(fontSize: 18),
                                        maxLines: 2,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(dressdata[index]['Price'] + '\$')
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    })
          ],
        ),
      ),
    );
  }
}
