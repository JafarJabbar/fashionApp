import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  String imgPath;
  Details({this.imgPath});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Stack(
      children:<Widget>[
        Hero(
          tag: widget.imgPath,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.imgPath),fit: BoxFit.cover)
            ),
          ),
        ),
        Positioned(
          top: (MediaQuery.of(context).size.height-100)/2,
          left: (MediaQuery.of(context).size.width-300)/2,
          child: Container(
            width: 150,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.black.withOpacity(.3),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "LAMINATED",
                  style: TextStyle(color: Colors.white,fontFamily: 'Montserrat'),
                ),
                Icon(Icons.keyboard_arrow_right,color:Colors.white ,)
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 10,
          right: 10,
          height: 280,
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 10,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 110,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                        image: DecorationImage(image: AssetImage(widget.imgPath),fit: BoxFit.cover)
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("LAMINATED",style: TextStyle(fontFamily: 'Montserrat',fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black87),),
                        SizedBox(height: 10,),
                        Text("Louis Vouition",style: TextStyle(fontFamily: 'Montserrat',fontSize: 16,color: Colors.black54),),
                        SizedBox(height: 10,),
                        Container(width: MediaQuery.of(context).size.width-200,child: Text("One button V-neck sling long-sleeved waist female stitching dress",style: TextStyle(fontFamily: 'Montserrat',fontSize: 16,color: Colors.black54),)),
                      ],
                    )
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "\$6200",
                        style: TextStyle(fontSize: 22,color: Colors.black87,fontFamily: 'Montserrat'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: FloatingActionButton(
                        onPressed: (){},
                        backgroundColor: Colors.brown,
                        child: Icon(Icons.keyboard_arrow_right),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
