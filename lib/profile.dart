import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Gambar profil dari folder images
            Image.asset(
              'images/profile.png',
              width: 150, // Sesuaikan ukuran gambar
              height: 150,
            ),
            const SizedBox(height: 20), // Spasi antara gambar dan teks
            // Nama
            const Text(
              'Sarif Hidayatullah',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8), // Spasi antara nama dan email
            // Email
            const Text(
              'htsarif@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
