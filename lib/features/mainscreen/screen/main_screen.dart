import 'package:flutter/material.dart';
import '../widgets/header_section.dart';
import '../widgets/trending_books_section.dart';
import '../widgets/top_authors_section.dart';
import '../widgets/continue_listening_section.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(),
              SizedBox(height: 20),
              TrendingBooksSection(),
              SizedBox(height: 20),
              TopAuthorsSection(),
              SizedBox(height: 20),
              ContinueListeningSection(
                cover: 'lib/assets/images/amer.jpg', // Path ke gambar cover buku
                title: 'American Dirt',
                author: 'Jeanine Cummins',
                rating: 4.6,
                progress: 65, // Persentase progress mendengarkan
              ),
            ],
          ),
        ),
      ),
    );
  }
}
