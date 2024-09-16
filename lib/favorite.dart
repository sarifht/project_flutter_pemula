import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'contact_provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<ContactProvider>(context);
    final favoriteContacts = contactProvider.favoriteContacts;

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
                    icon: const Icon(Icons.favorite, color: Colors.red),
                    onPressed: () {
                      // Toggle favorite dari halaman Favorite
                      int originalIndex =
                          contactProvider.contacts.indexOf(contact);
                      contactProvider.toggleFavorite(originalIndex);
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
