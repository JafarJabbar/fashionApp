import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OnePage(),
  ));
}

class OnePage extends StatefulWidget {
  @override
  _OnePageState createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Fashion",
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 22, color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.camera_alt,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(20),
                children: <Widget>[
                  brandOne('assets/images/model1.jpeg',
                      'assets/images/chanellogo.jpg'),
                  SizedBox(
                    width: 20,
                  ),
                  brandOne('assets/images/model2.jpeg',
                      'assets/images/chloelogo.png'),
                  SizedBox(
                    width: 20,
                  ),
                  brandOne('assets/images/model3.jpeg',
                      'assets/images/louisvuitton.jpg'),
                  SizedBox(
                    width: 20,
                  ),
                  brandOne('assets/images/model1.jpeg',
                      'assets/images/chloelogo.png'),
                  SizedBox(
                    width: 20,
                  ),
                  brandOne('assets/images/model2.jpeg',
                      'assets/images/chanellogo.jpg'),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  height: 470,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/model1.jpeg'), fit: BoxFit.cover)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width-250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Daisy',style: TextStyle(fontFamily: 'Montserrat',fontSize: 16,fontWeight: FontWeight.bold),),
                                Text('34 minutes ago',style: TextStyle(fontFamily: 'Montserrat',fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          IconButton(icon: Icon(Icons.more_vert),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )

          ],
        ));
  }

  Widget brandOne(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: BoxFit.contain)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
            ),
          ),
          width: 75,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.brown,
          ),
        )
      ],
    );
  }
}
