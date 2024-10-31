import 'package:flutter/material.dart';
import 'book_card.dart';
import 'section_header.dart';
import 'package:bookapp/features/trendingbook/screen/trending_book_screen.dart';

class TrendingBooksSection extends StatelessWidget {
  // Daftar buku beserta covernya
  final List<Map<String, String>> trendingBooks = [
    {
      'title': 'The Mind of a Leader',
      'cover': 'lib/assets/images/themind.jpg'
    },
    {
      'title': 'Infinite Country',
      'cover': 'lib/assets/images/inf_country.jpg'
    },
    {
      'title': 'The Domestic G',
      'cover': 'lib/assets/images/thedom.jpg'
    },
    {
      'title': 'The Great G',
      'cover': 'lib/assets/images/thgr.jpg'
    },
    // Tambahkan lebih banyak buku sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: 'Trending Books',
          onViewAllPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TrendingBooksScreen()),
            );
            print("View All Trending Books");
          },
        ),
        SizedBox(height: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: trendingBooks.map((book) {
              return BookCard(
                title: book['title']!,
                cover: book['cover']!,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
