import 'package:flutter/material.dart';
import 'seek_bar.dart';

class AudioPlayerControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SeekBar(
          currentPosition: Duration(minutes: 22, seconds: 45),
          totalDuration: Duration(minutes: 45, seconds: 32),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.replay_10),
              onPressed: () {
                // Logika untuk rewind 10 detik
              },
            ),
            SizedBox(width: 20),
            IconButton(
              icon: Icon(Icons.play_arrow),
              iconSize: 48,
              onPressed: () {
                // Logika untuk play/pause
              },
            ),
            SizedBox(width: 20),
            IconButton(
              icon: Icon(Icons.forward_10),
              onPressed: () {
                // Logika untuk forward 10 detik
              },
            ),
          ],
        ),
      ],
    );
  }
}
