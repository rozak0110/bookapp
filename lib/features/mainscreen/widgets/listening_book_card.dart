import 'package:flutter/material.dart';

class ListeningBookCard extends StatelessWidget {
  final String title;
  final String author;
  final double rating;
  final int progress;

  ListeningBookCard({
    required this.title,
    required this.author,
    required this.rating,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          color: Colors.blue,
          child: Center(child: Text('Cover')),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(author),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 16),
                  Text('$rating'),
                ],
              ),
            ],
          ),
        ),
        Text('$progress%'),
      ],
    );
  }
}
