import 'package:flutter/material.dart';
import 'package:project_apptron/CustomWidgets/CustomScaffold.dart';
import 'package:project_apptron/Global.dart';
import 'package:project_apptron/Screens/AccountScreens/Wishlist.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isSwitchednotif = false;
  bool isSwitcheddark = false;
  List listOptions = [
    'Wishlist',
    'Currency',
    'Languages',
    'Contact Us',
    'Privacy Policy',
    'Terms & Conditions',
    'About us'
  ];

  List listOptionsSwitch = ['Dark Mode', 'Push notifications'];
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        index: 4,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                elevation: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      child: Image.asset('assets/extras/useravatar.png',
                          height: MediaQuery.of(context).size.height / 6,
                          width: MediaQuery.of(context).size.width / 4),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Guest',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text('Login')
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        if (listOptions[index] == 'Currency') {
                          onCurrencyTap();
                        } else if (listOptions[index] == 'Languages') {
                          onLanguageTap();
                        } else if (listOptions[index] == 'Wishlist') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WishList(),
                              ));
                        }
                      },
                      title: Text(
                        '${listOptions[index]}',
                        style: TextStyle(fontSize: 18),
                      ),
                      trailing: Icon(Icons.arrow_right),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: listOptions.length),
              Divider(),
              ListTile(
                title: Text(
                  'Dark Mode',
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Switch(
                    activeColor: Colors.green,
                    value: isSwitcheddark,
                    onChanged: (value) {
                      setState(() {
                        isSwitcheddark = value;
                      });
                    }),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Push Notifications',
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Switch(
                    activeColor: Colors.green,
                    value: isSwitchednotif,
                    onChanged: (value) {
                      setState(() {
                        isSwitchednotif = value;
                      });
                    }),
              )
            ],
          ),
        ),
        bottomappbarTitle: null);
  }

  void onLanguageTap() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: bsheetBackColor,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'United States',
                            style: TextStyle(
                                fontSize: 18, color: primaryTextColor),
                          ),
                          Text('English',
                              style: TextStyle(
                                  fontSize: 18, color: primaryTextColor))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Pakistan',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text('Urdu', style: TextStyle(fontSize: 18))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  void onCurrencyTap() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: bsheetBackColor,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Theme.of(context).canvasColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'US Currency',
                            style: TextStyle(
                                fontSize: 18, color: primaryTextColor),
                          ),
                          Text('USD',
                              style: TextStyle(
                                  fontSize: 18, color: primaryTextColor))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Pakistan Currency',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text('PKR', style: TextStyle(fontSize: 18))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
