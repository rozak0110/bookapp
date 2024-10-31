import 'package:flutter/material.dart';
import 'book_grid_item.dart';

class BookGridSection extends StatelessWidget {
  final List<Map<String, String>> books = [
    {'title': 'Infinite Country', 'cover': 'lib/assets/images/inf_country.jpg'},
    {'title': 'The Mind of a Leader', 'cover': 'lib/assets/images/themind.jpg'},
    {'title': 'Range', 'cover': 'lib/assets/images/range.jpg'},
    {'title': 'The Great Gatsby', 'cover': 'lib/assets/images/thgr.jpg'},
    {'title': 'The Domestic Goddess', 'cover': 'lib/assets/images/thedom.jpg'},
    {'title': 'Normal People', 'cover': 'lib/assets/images/normalp.jpg'},
    // Tambahkan buku lainnya sesuai dengan kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Dua kolom sesuai dengan desain
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 0.7, // Mengatur rasio tampilan agar sesuai dengan cover buku
      ),
      itemCount: books.length,
      itemBuilder: (context, index) {
        return BookGridItem(
          title: books[index]['title']!,
          cover: books[index]['cover']!,
        );
      },
    );
  }
}
