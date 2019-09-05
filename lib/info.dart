import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  InfoState createState() => InfoState();
}

class InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    String loremIpsum = "There he comes. The least little bit can do so much. In this world, everything can be happy. The little tiny Tim easels will let you down. Let's get crazy. You can spend all day playing with mountains.";

    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.black
            
          ),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img/logo.png"),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2),
                BlendMode.dstATop
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              "Informações",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: ListView(
            children: <Widget>[
              Card(
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 15.0,
                  right: 25.0,
                  left: 25.0
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(loremIpsum),
                ),
              ),
              Card(
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 15.0,
                  right: 25.0,
                  left: 25.0
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(loremIpsum),
                ),
              ),
              Card(
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 15.0,
                  right: 25.0,
                  left: 25.0
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(loremIpsum),
                ),
              ),
              Card(
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 15.0,
                  right: 25.0,
                  left: 25.0
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(loremIpsum),
                ),
              ),
              Card(
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 15.0,
                  right: 25.0,
                  left: 25.0
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(loremIpsum),
                ),
              ),
              Card(
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 15.0,
                  right: 25.0,
                  left: 25.0
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(loremIpsum),
                ),
              ),
              Card(
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 15.0,
                  right: 25.0,
                  left: 25.0
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(loremIpsum),
                ),
              ),
              Card(
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 15.0,
                  right: 25.0,
                  left: 25.0
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(loremIpsum),
                ),
              ) 
            ],
          )
        ),
      ],
    );
  }
}