import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: <Widget>[
        ListTile(
            title: Row(
          children: <Widget>[
            Text(
              'Color',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 40,
            ),
            Text('Black, Yellow, Red'),
          ],
        )),
      ],
    );
  }
}
