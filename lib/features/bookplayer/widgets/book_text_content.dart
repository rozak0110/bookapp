import 'package:flutter/material.dart';

class BookTextContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'The two hide behind a shower wall while gunfire rings out around them. '
          'They overhear three sicarios looking for a man and a child (Sebastián and Luca)...',
      style: TextStyle(fontSize: 16),
      textAlign: TextAlign.justify,
    );
  }
}
