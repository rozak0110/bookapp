import 'package:flutter/material.dart';
import '../widgets/book_cover_section.dart';
import '../widgets/book_text_content.dart';
import '../widgets/audio_player_controls.dart';

class ContinueListeningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Continue Listening'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
              // Logika untuk menambahkan ke favorit
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BookCoverSection(),
            SizedBox(height: 20),
            BookTextContent(),
            Spacer(),
            AudioPlayerControls(),
          ],
        ),
      ),
    );
  }
}
