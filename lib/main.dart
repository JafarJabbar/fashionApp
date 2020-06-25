import 'package:flutter/material.dart';
import 'package:fashion/details.dart';

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

class _OnePageState extends State<OnePage> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: TabBar(
          indicatorColor: Colors.grey,
          controller: tabController,
          tabs: <Widget>[
            Tab(
                icon: Icon(
              Icons.home,
              color: Colors.grey,
              size: 22,
            )),
            Tab(
                icon: Icon(
              Icons.format_align_justify,
              color: Colors.grey,
              size: 22,
            )),
            Tab(
                icon: Icon(
              Icons.settings,
              color: Colors.black,
              size: 22,
            )),
            Tab(
                icon: Icon(
              Icons.chat,
              color: Colors.grey,
              size: 22,
            )),
          ],
        ),
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
              padding: const EdgeInsets.all(10),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  height: 550,
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
                                    image:
                                        AssetImage('assets/images/model1.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Daisy',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('34 minutes ago',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "This official website features a ribbed knit zipper jacket that is"
                        "modern and stylish. It looks very temparament and is recommend to friends",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              InkWell(
                                child: Hero(
                                  tag: 'assets/images/modelgrid1.jpeg',
                                  child: Container(
                                    height: 250,
                                    width: (MediaQuery.of(context).size.width -
                                            50) /
                                        2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/modelgrid1.jpeg'),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Details(
                                              imgPath:
                                                  'assets/images/modelgrid1.jpeg')));
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Details(
                                                  imgPath:
                                                  'assets/images/modelgrid2.jpeg')));
                                    },

                                    child: Hero(
                                      tag: 'assets/images/modelgrid2.jpeg',
                                      child: Container(
                                        height: 120,
                                        margin: EdgeInsets.only(bottom: 10),
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    100) /
                                                2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/modelgrid2.jpeg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Details(
                                                  imgPath:
                                                  'assets/images/modelgrid3.jpeg')));
                                    },
                                    child: Hero(
                                      tag: 'assets/images/modelgrid3.jpeg',
                                      child: Container(
                                        height: 120,
                                        width: (MediaQuery.of(context)
                                                    .size
                                                    .width -100) /2,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/modelgrid3.jpeg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: <Widget>[
                              Center(
                                child: Container(
                                  padding: EdgeInsets.all(7),
                                  margin: EdgeInsets.all(7),
                                  child: Text(
                                    '# Louis Voution',
                                    style: TextStyle(),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.brown.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                              Center(
                                child: Container(
                                  padding: EdgeInsets.all(7),
                                  margin: EdgeInsets.all(7),
                                  child: Text(
                                    '# Chloe',
                                    style: TextStyle(),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.brown.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(Icons.share,
                                  color: Colors.grey.withOpacity(0.5)),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '2.3k',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey.withOpacity(0.5)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.chat_bubble,
                                  color: Colors.grey.withOpacity(0.5)),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '2.3k',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey.withOpacity(0.5)),
                              ),
                              Container(
                                width: (MediaQuery.of(context).size.width) / 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.favorite, color: Colors.red),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '3.2k',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey.withOpacity(0.5)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
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
        ),
      ],
    );
  }
}
