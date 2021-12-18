import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

ButtonStyle _setTextButtonStyle(Color primary, {Color? fontColor}) {
  return TextButton.styleFrom(
    backgroundColor: primary,
    primary: fontColor ?? primary,
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

  Expanded _buildKey({required Color color, required int soundTrack}) {
    return Expanded(
      child: TextButton(
        style: _setTextButtonStyle(color),
        onPressed: () {
          playAudio(soundTrack);
        },
        child: const Text('Click Me'),
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
            children: <Widget>[
              _buildKey(
                color: Colors.red,
                soundTrack: 1,
              ),
              _buildKey(
                color: Colors.orange,
                soundTrack: 2,
              ),
              _buildKey(
                color: Colors.yellow,
                soundTrack: 3,
              ),
              _buildKey(
                color: Colors.green,
                soundTrack: 4,
              ),
              _buildKey(
                color: Colors.teal,
                soundTrack: 5,
              ),
              _buildKey(
                color: Colors.blue,
                soundTrack: 6,
              ),
              _buildKey(
                color: Colors.purple,
                soundTrack: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
