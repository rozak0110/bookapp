import 'package:flutter/material.dart';

class AuthorAvatar extends StatelessWidget {
  final String name;
  final String profile;

  AuthorAvatar({required this.name, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(profile), // Menggunakan gambar profil
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
