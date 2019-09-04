import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eletro_app/guide.dart';
import 'package:eletro_app/info.dart';
import 'package:eletro_app/praxis_code.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Menu(),
      routes: <String, WidgetBuilder>{
        "/Guide": (BuildContext context) => Guide(),
        "/Info": (BuildContext context) => Info(),
        "/PraxisCode": (BuildContext context) => PraxisCode()
      },
    );
  }
}

class Menu extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'img/logo.png',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.2),
              BlendMode.dstATop
            )
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'img/title.png',
                height: 200,
                width: 250,
              ),
              SizedBox(
                width: 300.0,
                height: 50.0,
                child: RaisedButton(
                  child: Text(
                    "Guia do Caloiro",
                    style: TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, anim, secAnim) {
                          return Guide();
                        },
                        transitionsBuilder: (context, anim, secAnim, child) {
                          return FadeTransition(
                            opacity: anim,
                            child: child,
                          );
                        }
                      )
                    );
                  },
                )
              ),
              Divider(
                height: 30.0,
              ),
              SizedBox(
                width: 300.0,
                height: 50.0,
                child: RaisedButton(
                  child: Text(
                    "Informação",
                    style: TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, anim, secAnim) {
                          return Info();
                        },
                        transitionsBuilder: (context, anim, secAnim, child) {
                          return FadeTransition(
                            opacity: anim,
                            child: child,
                          );
                        }
                      )
                    );
                  },
                )
              ),
              Divider(
                height: 30.0,
              ),
              SizedBox(
                width: 300.0,
                height: 50.0,
                child: RaisedButton(
                  child: Text(
                    "Código de Praxe",
                    style: TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold
                    ),
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, anim, secAnim) {
                          return PraxisCode();
                        },
                        transitionsBuilder: (context, anim, secAnim, child) {
                          return FadeTransition(
                            opacity: anim,
                            child: child,
                          );
                        }
                      )
                    );
                  },
                )
              )
            ]
          ),
        ),
      )
    );
  }
}