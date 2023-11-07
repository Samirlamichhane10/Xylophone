import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//required is used if not then it will return error
  //"required" keyword is used to mark a named parameter as mandatory.
  // When a named parameter is marked as "required",
  // it means that the caller of a function or constructor must provide
  // a value for that parameter when invoking it.
  // If the required parameter is not provided, a compile-time error will occur.
  Widget playSoundWithTextButton({ required int num, required Color color}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            ContinuousRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          backgroundColor: MaterialStateProperty.all(color),
          //MaterialStateProperty.all(Colors.red)
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource('note$num.wav'));
        },
        child: Container(),
      ),
    );
  } Widget playSoundWith(  int num,  Color color) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            ContinuousRectangleBorder(borderRadius: BorderRadius.zero),
          ),
          backgroundColor: MaterialStateProperty.all(color),
          //MaterialStateProperty.all(Colors.red)
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource('note$num.wav'));
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('XyloPhone'),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                // playSoundWithTextButton uses named parameter
                playSoundWithTextButton(num:1,  color :Colors.red),
                playSoundWithTextButton(num:2,  color:Colors.orange),
                playSoundWithTextButton(num:3, color: Colors.yellow),

                //playSoundWith uses direct parameter
                playSoundWith(4,  Colors.green),
                playSoundWith(5,  Colors.teal),
                playSoundWith(6,  Colors.blue),
                playSoundWith(7,  Colors.purple),

           ]
          ),

          ),
        ),
      ),
    );
  }
}
