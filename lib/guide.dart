import 'package:flutter/material.dart';

class Guide extends StatefulWidget {
  @override
  GuideState createState() => GuideState();
}

class GuideState extends State<Guide> {
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
              "Guia do Caloiro",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
            ),
            margin: EdgeInsets.only(
              top: 10.0,
              bottom: 15.0,
              right: 25.0,
              left: 25.0
            ),
            color: Colors.white,
            child: ListView(
              padding: EdgeInsets.all(20),
              children: <Widget>[
                Text(loremIpsum)
              ],
            )
          )
        ),
      ],
    );
  }
}