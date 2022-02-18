import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyXylo());
}

class MyXylo extends StatelessWidget {
  const MyXylo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AudioCache p = AudioCache();

    Widget notexylo(Color couleur, String nomfichier) {
      return Expanded(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(couleur),
          ),
          onPressed: () {
            p.play(nomfichier);
          },
          child: Container(
            color: couleur,
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              notexylo(Colors.red, "note1.wav"),
              notexylo(Colors.orange, "note2.wav"),
              notexylo(Colors.yellow, "note3.wav"),
              notexylo(Colors.green, "note4.wav"),
              notexylo(Colors.teal, "note5.wav"),
              notexylo(Colors.blue, "note6.wav"),
              notexylo(Colors.purple, "note7.wav"),
            ],
          ),
        ),
      ),
    );
  }
}
