import 'package:flutter/material.dart';

class ContactProvider with ChangeNotifier {
  List<Map<String, dynamic>> contacts = [
    {
      "name": "Aulus",
      "phone": "081234567890",
      "image": "images/avatars/aulus.png",
      "isFavorite": false
    },
    {
      "name": "Bruno",
      "phone": "081234567891",
      "image": "images/avatars/bruno.png",
      "isFavorite": false
    },
    {
      "name": "Claude",
      "phone": "081234567892",
      "image": "images/avatars/claude.png",
      "isFavorite": false
    },
    {
      "name": "Diggie",
      "phone": "081234567893",
      "image": "images/avatars/diggie.png",
      "isFavorite": false
    },
    {
      "name": "Eudora",
      "phone": "081234567894",
      "image": "images/avatars/eudora.png",
      "isFavorite": false
    },
    {
      "name": "Fredrinn",
      "phone": "081234567895",
      "image": "images/avatars/fredrinn.png",
      "isFavorite": false
    },
    {
      "name": "Gusion",
      "phone": "081234567896",
      "image": "images/avatars/gusion.png",
      "isFavorite": false
    },
    {
      "name": "Hilda",
      "phone": "081234567897",
      "image": "images/avatars/hilda.png",
      "isFavorite": false
    },
    {
      "name": "Ixia",
      "phone": "081234567898",
      "image": "images/avatars/ixia.png",
      "isFavorite": false
    },
    {
      "name": "Joy",
      "phone": "081234567899",
      "image": "images/avatars/joy.png",
      "isFavorite": false
    },
    {
      "name": "Karina",
      "phone": "081234567800",
      "image": "images/avatars/karina.png",
      "isFavorite": false
    },
    {
      "name": "Ling",
      "phone": "081234567801",
      "image": "images/avatars/ling.png",
      "isFavorite": false
    },
    {
      "name": "Miya",
      "phone": "081234567802",
      "image": "images/avatars/miya.png",
      "isFavorite": false
    },
    {
      "name": "Nana",
      "phone": "081234567803",
      "image": "images/avatars/nana.png",
      "isFavorite": false
    },
    {
      "name": "Odette",
      "phone": "081234567804",
      "image": "images/avatars/odette.png",
      "isFavorite": false
    },
    // Tambahkan kontak lainnya
  ];

  List<Map<String, dynamic>> get favoriteContacts =>
      contacts.where((contact) => contact['isFavorite'] == true).toList();

  void toggleFavorite(int index) {
    contacts[index]['isFavorite'] = !contacts[index]['isFavorite'];
    notifyListeners(); // Notifikasi perubahan ke UI
  }
}
