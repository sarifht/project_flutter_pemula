import 'package:flutter/material.dart';

class DetailContactPage extends StatelessWidget {
  final String name;
  final String phone;
  final String image;

  const DetailContactPage({
    super.key,
    required this.name,
    required this.phone,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height; // Mendapatkan tinggi layar

    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Nama di AppBar berada di tengah
        title: const Text('Detail Kontak'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Horizontal di tengah
          children: [
            SizedBox(
                height: screenHeight *
                    0.10), // Padding antara AppBar dan body sebesar 10% dari tinggi layar
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(height: 20),
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              phone,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
