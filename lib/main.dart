import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flare",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool animationBool = true;

  FlareController flareController (){
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            print(animationBool);
            if(animationBool == false){
              animationBool = true;
            }else{
              animationBool = false;
            }
          });
        },
        child: Icon(Icons.play_circle_filled),
      ),
      body: FlareActor("assets/GITlogo.flr",
          fit: BoxFit.contain, animation: "MainAnimation",
          isPaused: animationBool,
          controller: Fcontroller,
      ),
    );
  }
}
