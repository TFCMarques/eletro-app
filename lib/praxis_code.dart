import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:eletro_app/dict_praxis.dart';

class PraxisCode extends StatefulWidget {
  @override
  PraxisCodeState createState() => PraxisCodeState();
}

class PraxisCodeState extends State<PraxisCode> {
  Widget chapterCard(int index) {
    var chapter = praxisCode[index];
    String chapterNum = chapter["chapter"];
    String title = chapter["title"];
    List articles = chapter["articles"];

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      child: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          Text(
            "Capítulo " + chapterNum + " - " + title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold
            ),
          )
        ] + articlesListed(articles),
      ),
      margin: EdgeInsets.only(
        bottom: 40.0,
        top: 10.0
      ),
    );
  }

  List<Widget> articlesListed(List articles){
    List<Widget> articlesWidgets = [];

    for(var i=0; i<articles.length; i++) {
      articlesWidgets.add(
        Divider(
          height: 15.0,
        )
      );

      var currentArticle = articles[i];
      String title = currentArticle["title"];
      List paragraphs = currentArticle["paragraphs"];
      String articleNum = "";

      if(currentArticle["article"]is String){
        articleNum = "Artigos " + currentArticle["article"];
      } else {
        articleNum = "Artigo " + currentArticle["article"].toString();
      }

      articlesWidgets.add(
        Text(
          articleNum + " - " + title,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        )
      );
      articlesWidgets.add(
        Divider(
          height: 15.0,
        )
      );

      for(var j=0; j<paragraphs.length; j++) {
        articlesWidgets.add(
          Text(
            paragraphs[j],
            textAlign: TextAlign.justify,
          )
        );
        articlesWidgets.add(
          Divider(
            height: 15.0,
            color: Colors.transparent,
          )
        );
      }
    }

    return articlesWidgets;
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
              "Código de Praxe",
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
            child: Swiper(
              itemCount: praxisCode.length,
              viewportFraction: 0.8,
              scale: 0.9,
              itemBuilder: (BuildContext context, int index) {
                return chapterCard(index);
              },
              pagination: SwiperPagination(
                margin: EdgeInsets.all(10.0)
              ),
            ),
          ),
        ),
      ],
    );
  }
}
