import 'package:flutter/material.dart';
import 'package:eletro_app/dict_musics.dart';

class MusicDisplay extends StatefulWidget {
  @override
  MusicDisplayState createState() => MusicDisplayState();
}

class MusicDisplayState extends State<MusicDisplay> {
  List<Widget> listedMusics(String title, List songsName, var lyrics) {
    List<Widget> musicList = [];

    musicList.add(
      Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold
        ),
      )
    );

    for(var i=0; i<songsName.length; i++) {
      musicList.add(
        Divider(
          height: 15.0,
        )
      );

      musicList.add(
        Text(
          songsName[i],
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        )
      );

      musicList.add(
        Divider(
          height: 15.0,
        )
      );

      List core = lyrics[i+1];

      for(var j=0; j<core.length; j++) {
        musicList.add(
        Text(
          core[j],
          textAlign: TextAlign.left,
        )
      );   
      }
    }

    return musicList;
  }

  @override
  Widget build(BuildContext context) {
    String title = musics["title"];
    List songsName = musics["songsName"];
    var lyrics = musics["songs"];

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
              "Cancioneiro",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              )
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
              children: listedMusics(title, songsName, lyrics),
            ),
          ),
        )
      ],
    );
  }
}