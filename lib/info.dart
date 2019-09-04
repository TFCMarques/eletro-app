import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  InfoState createState() => InfoState();
}

class InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
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
          body: Container(
            color: Colors.transparent,
          ),
        ),
      ],
    );
  }
}