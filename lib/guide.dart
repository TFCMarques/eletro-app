import 'package:flutter/material.dart';
import 'package:eletro_app/dict_guide.dart';

class Guide extends StatefulWidget {
  @override
  GuideState createState() => GuideState();
}

class GuideState extends State<Guide> {
  List<Widget> guideText(String title, List tags, List paragraphs) {
    List<Widget> guideTextList = [];

    guideTextList.add(
      Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold
        ),
      )
    );

    for(var i=0; i<tags.length; i++) {
      guideTextList.add(
        Divider(
          height: 15.0,
        )
      );

      guideTextList.add(
        Text(
          tags[i],
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        )
      );

      guideTextList.add(
        Divider(
          height: 15.0,
        )
      );

      guideTextList.add(
        Text(
          paragraphs[i],
          textAlign: TextAlign.justify,
        )
      );   
    }

    return guideTextList;
  }

  @override
  Widget build(BuildContext context) {
    String title = guide["title"];
    List tags = guide["tags"];
    List paragraphs = guide["paragraphs"];

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
              children: guideText(title, tags, paragraphs),
            )
          )
        ),
      ],
    );
  }
}