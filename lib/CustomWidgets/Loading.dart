import 'package:flutter/material.dart';
import 'package:project_apptron/Global.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topCenter,
      child: Card(
        color: Colors.redAccent[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ) ,
      elevation: 10.0,
        child: CircularProgressIndicator(
strokeWidth: 5,
          valueColor: new AlwaysStoppedAnimation<Color>(primaryTextColor),
          backgroundColor: secondaryColor,
        ),
      ),
    );
  }
}