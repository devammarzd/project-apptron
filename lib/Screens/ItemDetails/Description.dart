import 'package:flutter/material.dart';
import 'package:project_apptron/CustomWidgets/MyBullet.dart';

class Description extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: <Widget>[
        ListTile(
        
          title: Row(
            children: <Widget>[
               MyBullet(),
               SizedBox(width: 10,),
              Text('Soft Wooven flannel'),
            ],
          ) ,
          ),
            ListTile(
        
          title: Row(
            children: <Widget>[
               MyBullet(),
               SizedBox(width: 10,),
              Text('High Quality'),
            ],
          ) ,
          ),
            ListTile(
        
          title: Row(
            children: <Widget>[
               MyBullet(),
               SizedBox(width: 10,),
              Text('Comfortable'),
            ],
          ) ,
          )
      ],
    );

  }
}