import 'package:flutter/material.dart';
import 'package:project_apptron/CustomWidgets/CustomScaffold.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isSwitchednotif = false;
  bool isSwitcheddark = false;
  List listOptions = [
    'WishList (0)',
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
}
