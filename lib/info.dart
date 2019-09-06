import 'package:flutter/material.dart';
import 'package:eletro_app/dict_info.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:photo_view/photo_view.dart';

class Info extends StatefulWidget {
  @override
  InfoState createState() => InfoState();
}

class InfoState extends State<Info> {
  List<Widget> infoCard(int numCards) {
    List<Widget> infoCards = [];

    for(var i=0; i<numCards; i++) {
      var infoCard = info[i];
      String title = infoCard["info_type"];
      List paragraphs = infoCard["paragraphs"];
      List urls = infoCard["urls"];
      String imgURL = infoCard["image"];
      List icons = infoCard["icons"];
      List tags = infoCard["descriptions"];

      infoCards.add(
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: infoCardText(title, paragraphs, urls, imgURL, icons, tags),
            ),
          ),
          margin: EdgeInsets.only(
            top: 10.0,
            bottom: 10.0,
            right: 25.0,
            left: 25.0
          ),
        )
      );
    }

    return infoCards;
  }

  List<Widget> infoCardText(String title, List paragraphs, List urls, String imgURL, List icons, List tags) {
    List<Widget> infoCardText = [];
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.width;

    infoCardText.add(
      Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold
        ),
      )
    );

    infoCardText.add(
      Divider(
        height: 15.0,
      )
    );

    if(imgURL != null) {
      infoCardText.add(
        Container(
          height: deviceHeight,
          child: Stack(
            children: <Widget>[
              ClipRect(
                child: PhotoView(
                  backgroundDecoration: BoxDecoration(
                    color: Colors.white
                  ),
                  imageProvider: AssetImage(
                    imgURL,
                  ),
                  minScale: 0.5,
                  maxScale: 1.5,
                )
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Icon(
                  FontAwesomeIcons.searchPlus,
                  color: Colors.black12,
                ),
              )
            ]
          )
        )
      );

      infoCardText.add(
        Divider(
          height: 15.0,
        )
      );
    }
      
    for(var j=0; j<paragraphs.length; j++) {
      if(j > 0) {
        infoCardText.add(
          Divider(
            height: 15.0,
            color: Colors.transparent,
          )
        );
      }

      Widget text;

      if(j+1 > urls.length) {
        text = Text(
          paragraphs[j],
          textAlign: TextAlign.left,
        );
      } else {
        text = InkWell(
          child: Text(
            paragraphs[j],
            style: TextStyle(
              color: Colors.blueGrey,
              decoration: TextDecoration.underline
            ),
            textAlign: TextAlign.left,
          ),
          onTap: () => launch(urls[j]),
        );
      }

      infoCardText.add(
        text
      );
    }

    if(icons.length > 0) {
      List<Widget> socialLinks = [];

      for(var k=0; k<icons.length; k++) {
        socialLinks.add(
          InkWell(
            onTap: () => launch(urls[k]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  icons[k],
                  color: Colors.black54,
                  size: 40.0,
                ),
                Container(
                  width: deviceWidth * 0.4,
                  margin: EdgeInsets.only(
                    right: 20.0,
                    left: 20.0
                  ),
                  child: Text(
                    tags[k],
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Icon(
                  FontAwesomeIcons.chevronRight,
                  color: Colors.black12,
                  size: 15.0,
                )
              ],
            ),
          )
        );

        socialLinks.add(
          Divider(
            height: 15.0,
          )
        );
      }

      infoCardText.add(
        Column(
          children: socialLinks,
        )
      );
    }
    
    return infoCardText;
  }

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
          body: ListView(
            children: infoCard(info.length),
          )
        ),
      ],
    );
  }
}