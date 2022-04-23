import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  AudioCache audioCache = AudioCache();

  void playNote(int number) {
    audioCache.play('music/note$number.wav');
  }

  Widget buildKey(int nota, Color valor) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          color: valor,
          child: TextButton(
            onPressed: () {
              playNote(nota);
              print("Reproduciendo $nota");
            },
            child: const Text(""),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xylophone App"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(1, Colors.redAccent),
          buildKey(2, Colors.blueAccent),
          buildKey(3, Colors.greenAccent),
          buildKey(4, Colors.deepPurpleAccent),
          buildKey(5, Colors.deepOrangeAccent),
          buildKey(6, Colors.lightBlue),
          buildKey(7, Colors.red),
        ],
      ),
    );
  }
}
