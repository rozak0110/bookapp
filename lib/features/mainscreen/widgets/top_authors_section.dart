import 'package:flutter/material.dart';
import 'author_avatar.dart';

class TopAuthorsSection extends StatelessWidget {
  // Daftar penulis beserta gambar profilnya
  final List<Map<String, String>> authors = [
    {'name': 'Rozak', 'profile': 'lib/assets/images/authorbc.png'},
    {'name': 'Abdul', 'profile': 'lib/assets/images/authorbc.png'},
    {'name': 'Elina Jain', 'profile': 'lib/assets/images/authorbl.png'},
    {'name': 'Samuel Jon', 'profile': 'lib/assets/images/authorbc.png'},
    {'name': 'walawee', 'profile': 'lib/assets/images/authorbl.png'},
    {'name': 'woilahcik', 'profile': 'lib/assets/images/authorbc.png'},
    // Tambahkan lebih banyak penulis jika diperlukan
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top Authors',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: authors.map((author) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: AuthorAvatar(
                  name: author['name']!,
                  profile: author['profile']!,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
