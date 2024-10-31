import 'package:flutter/material.dart';
import 'category_chip.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello, Users 👋',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'Find your favourite category!',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        SizedBox(height: 16),
        Wrap(
          spacing: 8,
          children: [
            CategoryChip(label: 'Motivation'),
            CategoryChip(label: 'Nature'),
            CategoryChip(label: 'Psychology'),
            CategoryChip(label: 'Travel'),
            CategoryChip(label: 'Sc-fi'),
            CategoryChip(label: 'comedy'),
            CategoryChip(label: 'fiction'),
            // Tambahkan kategori lain sesuai desain
          ],
        ),
      ],
    );
  }
}
