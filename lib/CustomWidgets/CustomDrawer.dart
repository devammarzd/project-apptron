import 'package:flutter/material.dart';
import 'package:project_apptron/Screens/Categories/Collection.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool showMen = false;
  bool showWomen = false;
  bool showKids = false;
  

  List catMen = ['Suits', 'T-Shirts', 'Jeans', 'Shoes'];
  List catWomen = ['Dress', 'T-Shirts', 'Jeans', 'Shoes'];
  List catKids = ['Toddler Clothes'];
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text('Email'),
            accountName: Text("Guest"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/extras/useravatar.png'),
            ),
          ),
          ListTile(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => ProfileScreen(),
              //     ));
            },
            title: Text(
              'SHOP',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {
              // Navigator.push(
              // context,
              // MaterialPageRoute(
              //   builder: (context) => FavScreen(),
              // ));
            },
            title: Text(
              'NEWS',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => MyBookingsScreen(),
              // ));
            },
            title: Text(
              'CONTACT US',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            title: Text(
              'LOGOUT',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            title: Text(
              'CATEGORIES',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  enabled: false,
                  dense: true,
                  title: Text(
                    'Men',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight:
                            showMen ? FontWeight.bold : FontWeight.normal),
                  ),
                  trailing: InkWell(
                    onTap: () {
                      setState(() {
                        showMen = !showMen;
                        showWomen = false;
                        showKids = false;
       
                      });
                    },
                    child: showMen
                        ? Icon(Icons.remove, color: Colors.black)
                        : Icon(Icons.add),
                  ),
                ),
                showMen
                    ? Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: catMen.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                  onTap: () {
                                    if (catMen[index] == 'Suits') {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => Collection(
                                                    collectionName: 'Suits',
                                                    urlSearch: 'Suit man',
                                                  )));
                                    } else if (catMen[index] == 'T-Shirts') {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => Collection(
                                                    collectionName: 'T-Shirts',
                                                    urlSearch: 't shirt man',
                                                  )));
                                    } else if (catMen[index] == 'Jeans') {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => Collection(
                                                    collectionName: 'Jeans',
                                                    urlSearch: 'Jeans man',
                                                  )));
                                    } else if (catMen[index] == 'Shoes') {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => Collection(
                                                    collectionName: 'Shoes',
                                                    urlSearch: 'footwear',
                                                  )));
                                    }
                                  },
                                  dense: true,
                                  title: Text(catMen[index]));
                            }),
                      )
                    : Container(),
//Women category
                ListTile(
                  enabled: false,
                  dense: true,
                  title: Text(
                    'Women',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight:
                            showWomen ? FontWeight.bold : FontWeight.normal),
                  ),
                  trailing: InkWell(
                    onTap: () {
                      setState(() {
                        showWomen = !showWomen;
                        showMen = false;
                        showKids = false;
              
                      });
                    },
                    child: showWomen
                        ? Icon(Icons.remove, color: Colors.black)
                        : Icon(Icons.add),
                  ),
                ),
                showWomen
                    ? Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: catWomen.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                  onTap: () {
                                    if (catWomen[index] == 'Dress') {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => Collection(
                                                    collectionName: 'Dress',
                                                    urlSearch: 'female dress',
                                                  )));
                                    }
                                     else  if (catWomen[index] == 'T-Shirts') {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => Collection(
                                                    collectionName: 'T-Shirts',
                                                    urlSearch: 'female shirt',
                                                  )));
                                    }
                                     else  if (catWomen[index] == 'Jeans') {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => Collection(
                                                    collectionName: 'Jeans',
                                                    urlSearch: 'jeans',
                                                  )));
                                    }
                                    else  if (catWomen[index] == 'Shoes') {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => Collection(
                                                    collectionName: 'Shoes',
                                                    urlSearch: ' shoes',
                                                  )));
                                    }

                                  },
                                  dense: true,
                                  title: Text(catWomen[index]));
                            }),
                      )
                    : Container(),
                //Kids Category

                ListTile(
                  enabled: false,
                  dense: true,
                
                  title: Text(
                    'Kids',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight:
                            showKids ? FontWeight.bold : FontWeight.normal),
                  ),
                  trailing: InkWell(
                    onTap: () {
                      setState(() {
                        showKids = !showKids;
                        showMen = false;
                        showWomen = false;
                  
                      });
                    },
                    child: showKids
                        ? Icon(Icons.remove, color: Colors.black)
                        : Icon(Icons.add),
                  ),
                ),
                showKids
                    ? Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: catKids.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                  onTap: () {
if(catKids[index]=='Toddler Clothes'){
  Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) => Collection(
                                                    collectionName: 'Kids Clothes',
                                                    urlSearch: 'toddler',
                                                  )));
}

                                  },
                                  dense: true,
                                  title: Text(catKids[index]));
                            }),
                      )
                    : Container()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
