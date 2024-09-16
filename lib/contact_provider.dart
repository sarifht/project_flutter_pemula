import 'package:flutter/material.dart';

class ContactProvider with ChangeNotifier {
  List<Map<String, dynamic>> contacts = [
    {
      "name": "Aulus",
      "phone": "081234567890",
      "image": "images/profile.png",
      "isFavorite": false
    },
    {
      "name": "Bruno",
      "phone": "081234567891",
      "image": "images/profile.png",
      "isFavorite": false
    },
    {
      "name": "Claude",
      "phone": "081234567892",
      "image": "images/profile.png",
      "isFavorite": false
    },
    {
      "name": "Diggie",
      "phone": "081234567893",
      "image": "images/profile.png",
      "isFavorite": false
    },
    {
      "name": "Eudora",
      "phone": "081234567894",
      "image": "images/profile.png",
      "isFavorite": false
    },
    {
      "name": "Fredrinn",
      "phone": "081234567895",
      "image": "images/profile.png",
      "isFavorite": false
    },
    {
      "name": "Gusion",
      "phone": "081234567896",
      "image": "images/profile.png",
      "isFavorite": false
    },
    {
      "name": "Hilda",
      "phone": "081234567897",
      "image": "images/profile.png",
      "isFavorite": false
    },
    {
      "name": "Ixia",
      "phone": "081234567898",
      "image": "images/profile.png",
      "isFavorite": false
    },
    {
      "name": "Joy",
      "phone": "081234567899",
      "image": "images/profile.png",
      "isFavorite": false
    },
    {
      "name": "Karina",
      "phone": "081234567800",
      "image": "images/profile.png",
      "isFavorite": false
    },
    {
      "name": "Ling",
      "phone": "081234567801",
      "image": "images/profile.png",
      "isFavorite": false
    },
    {
      "name": "Miya",
      "phone": "081234567802",
      "image": "images/profile.png",
      "isFavorite": false
    },
    {
      "name": "Nana",
      "phone": "081234567803",
      "image": "images/profile.png",
      "isFavorite": false
    },
    {
      "name": "Odette",
      "phone": "081234567804",
      "image": "images/profile.png",
      "isFavorite": false
    },
    // Tambahkan kontak lainnya
  ];

  void toggleFavorite(int index) {
    contacts[index]['isFavorite'] = !contacts[index]['isFavorite'];
    notifyListeners(); // Notifikasi perubahan ke UI
  }
}
