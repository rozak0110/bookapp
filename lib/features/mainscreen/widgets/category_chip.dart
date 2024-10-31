import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String label;

  CategoryChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.redAccent.withOpacity(0.2),
      labelStyle: TextStyle(color: Colors.redAccent),
    );
  }
}
