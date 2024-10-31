import 'package:flutter/material.dart';

class SeekBar extends StatelessWidget {
  final Duration currentPosition;
  final Duration totalDuration;

  SeekBar({required this.currentPosition, required this.totalDuration});

  @override
  Widget build(BuildContext context) {
    double progress = currentPosition.inSeconds / totalDuration.inSeconds;

    return Column(
      children: [
        Slider(
          value: progress,
          onChanged: (value) {
            // Logika untuk mengubah posisi audio
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _formatDuration(currentPosition),
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Text(
                _formatDuration(totalDuration),
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$minutes:$seconds";
  }
}
