import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  int sum(){
    return 5+2;
  }                    // this
  int sum1() => 5+2;    // and this are same....1 liner function


  void playsound(int note_num){
    final player = AudioPlayer();
    player.play(AssetSource('note$note_num.wav'));
  }
  // function for button build
  Expanded buildbutton({Color color,int note_num}){  //data type will be the name of widget that it returns
    return Expanded(                                  // named paramters must be inside {}
      child: TextButton(                              // Color is datatype here and it will accept its property only
        //style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.$col)), we cant do this
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: (){
          playsound(note_num);
        },
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildbutton(color: Colors.red,note_num: 1),   // named argument var_name : value  #value can be property
              buildbutton(color: Colors.orange,note_num: 2),
              buildbutton(color: Colors.yellow,note_num: 3),
              buildbutton(color: Colors.green,note_num: 4),
              buildbutton(color: Colors.teal,note_num: 5),
              buildbutton(color: Colors.blue,note_num: 6),
              buildbutton(color: Colors.purple,note_num: 7),


              /*TextButton(
                onPressed: (){
                  final player = AudioPlayer();
                  player.play(AssetSource('note2.wav'));
                },child: Text(
                  'tone 2'
              ),

              ),
              TextButton(
                onPressed: (){
                  final player = AudioPlayer();
                  player.play(AssetSource('note3.wav'));
                },child: Text(
                  'tone 3'
              ),

              ),
              TextButton(
                onPressed: (){
                  final player = AudioPlayer();
                  player.play(AssetSource('note4.wav'));
                },child: Text(
                  'tone 4'
              ),

              ),
              TextButton(
                onPressed: (){
                  final player = AudioPlayer();
                  player.play(AssetSource('note5.wav'));
                },child: Text(
                  'tone 5'
              ),

              ),*/
            ],
          ),

        ),
      ),
    );
  }
}
