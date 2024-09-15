import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar kontak favorit yang nanti akan diisi
    final List<Map<String, String>> favoriteContacts = [];

    return favoriteContacts.isEmpty
        ? const Center(child: Text('Tidak ada kontak favorit'))
        : ListView.builder(
            itemCount: favoriteContacts.length,
            itemBuilder: (context, index) {
              final contact = favoriteContacts[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(contact['image']!),
                  ),
                  title: Text(contact['name']!),
                  subtitle: Text(contact['phone']!),
                  trailing: IconButton(
                    icon: const Icon(Icons.favorite),
                    onPressed: () {
                      // Logika untuk menghapus dari favorite
                    },
                  ),
                  onTap: () {
                    // Navigasi ke halaman detail
                  },
                ),
              );
            },
          );
  }
}
