// import 'package:flutter/material.dart';
// import 'package:im_stepper/stepper.dart';
// import 'package:project_apptron/CustomWidgets/CustomScaffold.dart';

// class Stepperdemo extends StatefulWidget {
//   @override
//   _StepperdemoState createState() => _StepperdemoState();
// }

// class _StepperdemoState extends State<Stepperdemo> {
//   int selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
     
//     return CustomScaffold(index: 4, body: 
    
//     Column(
//     children: <Widget>[
        
//       Expanded(child: IconStepper(
//  direction: Axis.horizontal,
            
//                 stepColor: Colors.white,
//                 activeStepColor: Colors.amber,
//                 lineColor: Colors.amberAccent,
//                 // lineDotRadius: 2,
//                 lineLength: 75,
//         enableNextPreviousButtons: true,
//   enableStepTapping: false,
// previousButtonIcon: Icon(Icons.navigate_next),

//          onStepReached: (value) {
//                   setState(() {
//                     print('value: $value');
//                     selectedIndex = value;
//                   });
//                 },
//                  icons: [
//                   Icon(Icons.home,),
//                   Icon(Icons.person),
//                   Icon(Icons.account_balance),
//                   Icon(Icons.access_time),
//                   Icon(Icons.dashboard),
              
//                 ],
//       ),)
//     ],
//     )
    
//     , bottomappbarTitle: Container());
//   }
// }