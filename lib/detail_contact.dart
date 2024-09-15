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
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(height: 20),
            Text(
              'Nama: $name',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            Text(
              'Nomor Telepon: $phone',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
              onPressed: () {
                // Logika untuk menambahkan ke favorite
              },
            ),
          ],
        ),
      ),
    );
  }
}
