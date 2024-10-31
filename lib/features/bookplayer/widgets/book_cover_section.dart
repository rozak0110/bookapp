import 'package:flutter/material.dart';

class BookCoverSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'lib/assets/images/amer.jpg', // Ganti dengan path gambar cover buku
          width: 150,
          height: 200,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 16),
        Text(
          'American Dirt',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          'Jeanine Cummins',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        Text(
          'Chapter 1',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
