import 'package:flutter/material.dart';
import 'package:project_apptron/CustomWidgets/CustomScaffold.dart';

import 'package:project_apptron/Screens/Categories/Collection.dart';

class AllCategories extends StatefulWidget {
  @override
  _AllCategoriesState createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  List datalist = [
    {
      'Category': 'MEN',
      'Products': '41',
      'Image': 'assets/extras/men.jpg',
      'left': true,
    },
    {
      'Category': 'WOMEN',
      'Products': '70',
      'Image': 'assets/extras/women.jpg',
      'left': false,
    },
    {
      'Category': 'KIDS',
      'Products': '50',
      'Image': 'assets/extras/kids.jpg',
      'left': true,
    },
    {
      'Category': 'CLOTHING',
      'Products': '110',
      'Image': 'assets/extras/clothing.jpg',
      'left': false,
    },
    {
      'Category': 'MUSIC',
      'Products': '25',
      'Image': 'assets/extras/music.jpg',
      'left': true,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        bottomappbarTitle: Container(),
        index: 1,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListView.separated(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20);
                  },
                  itemBuilder: (context, index) {
                    bool isLeft = datalist[index]['left'];
                    return Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: InkWell(
                        onTap: () {
                          if (datalist[index]['Category'] == 'MEN') {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Collection(
                                      collectionName: 'Men',
                                      urlSearch: 'man apparel',
                                    )));
                          } else if (datalist[index]['Category'] == 'WOMEN') {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Collection(
                                      collectionName: 'Women',
                                      urlSearch: 'female dress',
                                    )));
                          } else if (datalist[index]['Category'] == 'KIDS') {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Collection(
                                      collectionName: 'Kids',
                                      urlSearch: 'toddler',
                                    )));
                          } else if (datalist[index]['Category'] ==
                              'CLOTHING') {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Collection(
                                      collectionName: 'Clothing',
                                      urlSearch: 'Clothes',
                                    )));
                          } else if (datalist[index]['Category'] == 'MUSIC') {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Collection(
                                      collectionName: 'Music Instruments',
                                      urlSearch: 'music instruments',
                                    )));
                          }
                        },
                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset(
                                datalist[index]['Image'],
                                height:
                                    MediaQuery.of(context).size.height / 3.7,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 3.7,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      begin: FractionalOffset.topCenter,
                                      end: FractionalOffset.bottomCenter,
                                      colors: [
                                        Colors.grey.withOpacity(0.3),
                                        Colors.grey.withOpacity(0.3),
                                      ],
                                      stops: [
                                        0.0,
                                        1.0
                                      ])),
                            ),
                            Positioned(
                                left: isLeft ? 50 : null,
                                top: 70,
                                right: isLeft ? null : 50,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      datalist[index]['Category'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 22,
                                          letterSpacing: 2),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      datalist[index]['Products'] + ' Products',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white),
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ));
  }
}
