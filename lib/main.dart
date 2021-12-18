import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

ButtonStyle _setTextButtonStyle(Color primary, {Color? fontColor}) {
  return TextButton.styleFrom(
    backgroundColor: primary,
    primary: fontColor ?? Colors.white,
    textStyle: const TextStyle(
      fontFamily: 'Heebo',
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(0.0),
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playAudio(int soundTrack) {
    final audio = AudioCache(prefix: 'assets/sounds/');
    audio.play('note$soundTrack.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              TextButton(
                style: _setTextButtonStyle(Colors.red),
                onPressed: () {
                  playAudio(1);
                },
                child: const Text('Click Me'),
              ),
              TextButton(
                style: _setTextButtonStyle(Colors.orange),
                onPressed: () {
                  playAudio(2);
                },
                child: const Text('Click Me'),
              ),
              TextButton(
                style: _setTextButtonStyle(Colors.yellow),
                onPressed: () {
                  playAudio(3);
                },
                child: const Text('Click Me'),
              ),
              TextButton(
                style: _setTextButtonStyle(Colors.green.shade300),
                onPressed: () {
                  playAudio(4);
                },
                child: const Text('Click Me'),
              ),
              TextButton(
                style: _setTextButtonStyle(Colors.green),
                onPressed: () {
                  playAudio(5);
                },
                child: const Text('Click Me'),
              ),
              TextButton(
                style: _setTextButtonStyle(Colors.blue),
                onPressed: () {
                  playAudio(6);
                },
                child: const Text('Click Me'),
              ),
              TextButton(
                style: _setTextButtonStyle(Colors.purple),
                onPressed: () {
                  playAudio(7);
                },
                child: const Text('Click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
