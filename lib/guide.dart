import 'package:flutter/material.dart';

class Guide extends StatefulWidget {
  @override
  GuideState createState() => GuideState();
}

class GuideState extends State<Guide> {
  @override
  Widget build(BuildContext context) {
    String loremIpsum = "They say everything looks better with odd numbers of things. But sometimes I put even numbers—just to upset the critics. Very easy to work these to death. Play with the angles. Isn't that fantastic? You can spend all day playing with mountains. And right there you got an almighty cloud. Have fun with it. The man who does the best job is the one who is happy at his job. Trees live in your fan brush, but you have to scare them out. There isn't a rule. You just practice and find out which way works best for you. You're the greatest thing that has ever been or ever will be. You're special. You're so very special. We don't have to be committed. We are just playing here. I'm going to mix up a little color. We’ll use Van Dyke Brown, Permanent Red, and a little bit of Prussian Blue. I will take some magic white, and a little bit of Vandyke brown and a little touch of yellow. The more we do this - the more it will do good things to our heart. They say everything looks better with odd numbers of things. But sometimes I put even numbers—just to upset the critics. Very easy to work these to death. Play with the angles. Isn't that fantastic? You can spend all day playing with mountains. And right there you got an almighty cloud. Have fun with it. The man who does the best job is the one who is happy at his job. Trees live in your fan brush, but you have to scare them out. There isn't a rule. You just practice and find out which way works best for you. You're the greatest thing that has ever been or ever will be. You're special. You're so very special. We don't have to be committed. We are just playing here. I'm going to mix up a little color. We’ll use Van Dyke Brown, Permanent Red, and a little bit of Prussian Blue. I will take some magic white, and a little bit of Vandyke brown and a little touch of yellow. The more we do this - the more it will do good things to our heart. They say everything looks better with odd numbers of things. But sometimes I put even numbers—just to upset the critics. Very easy to work these to death. Play with the angles. Isn't that fantastic? You can spend all day playing with mountains. And right there you got an almighty cloud. Have fun with it. The man who does the best job is the one who is happy at his job. Trees live in your fan brush, but you have to scare them out. There isn't a rule. You just practice and find out which way works best for you. You're the greatest thing that has ever been or ever will be. You're special. You're so very special. We don't have to be committed. We are just playing here. I'm going to mix up a little color. We’ll use Van Dyke Brown, Permanent Red, and a little bit of Prussian Blue. I will take some magic white, and a little bit of Vandyke brown and a little touch of yellow. The more we do this - the more it will do good things to our heart. They say everything looks better with odd numbers of things. But sometimes I put even numbers—just to upset the critics. Very easy to work these to death. Play with the angles. Isn't that fantastic? You can spend all day playing with mountains. And right there you got an almighty cloud. Have fun with it. The man who does the best job is the one who is happy at his job. Trees live in your fan brush, but you have to scare them out. There isn't a rule. You just practice and find out which way works best for you. You're the greatest thing that has ever been or ever will be. You're special. You're so very special. We don't have to be committed. We are just playing here. I'm going to mix up a little color. We’ll use Van Dyke Brown, Permanent Red, and a little bit of Prussian Blue. I will take some magic white, and a little bit of Vandyke brown and a little touch of yellow. The more we do this - the more it will do good things to our heart.";

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
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(loremIpsum),
                )
              ],
            )
          )
        ),
      ],
    );
  }
}