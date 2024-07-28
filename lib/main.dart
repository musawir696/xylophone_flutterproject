import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

               getview(1, Colors.red),
               getview(2, Colors.green),
               getview(3, Colors.blue),
               getview(4, Colors.greenAccent),
               getview(5, Colors.yellow),
               getview(6, Colors.purple),
               getview(7, Colors.red),
          ],

        ),
      )
    ),
  ));
}

Widget getview(int pos, Color color)
{
  return  Expanded(
    child: TextButton(
      style: ButtonStyle(
          backgroundColor:MaterialStateProperty.all(color)


      ),
      onPressed: () {
        playsound(1);
      },
      child:
      Text(''),



    ),
  );

}

void playsound(int pos)
{

    final audioPlayer=AudioPlayer();
    audioPlayer.play(AssetSource('assets_note1.wav'));

}