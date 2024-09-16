import 'package:flutter/material.dart';
import 'detail_contact.dart';

class ListContactPage extends StatefulWidget {
  const ListContactPage({super.key});

  @override
  ListContactPageState createState() => ListContactPageState();
}

class ListContactPageState extends State<ListContactPage> {
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
  ];

  List<Map<String, dynamic>> filteredContacts = [];

  @override
  void initState() {
    super.initState();
    filteredContacts = contacts; // Mulai dengan semua kontak
  }

  // Fungsi untuk mengupdate daftar kontak berdasarkan pencarian
  void _filterContacts(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredContacts = contacts; // Tampilkan semua jika kosong
      } else {
        filteredContacts = contacts
            .where((contact) =>
                contact['name']!.toLowerCase().contains(query.toLowerCase()) ||
                contact['phone']!.contains(query))
            .toList();
      }
    });
  }

  // Fungsi untuk toggle favorite
  void _toggleFavorite(int index) {
    setState(() {
      filteredContacts[index]['isFavorite'] =
          !filteredContacts[index]['isFavorite'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Input Pencarian
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged:
                _filterContacts, // Panggil fungsi filter saat input berubah
            decoration: const InputDecoration(
              hintText: 'Cari Kontak...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
          ),
        ),
        // Daftar Kontak
        Expanded(
          child: ListView.builder(
            itemCount: filteredContacts.length,
            itemBuilder: (context, index) {
              final contact = filteredContacts[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(contact['image']!),
                  ),
                  title: Text(contact['name']!),
                  subtitle: Text(contact['phone']!),
                  trailing: IconButton(
                    icon: Icon(
                      contact['isFavorite']
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: contact['isFavorite'] ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      _toggleFavorite(index); // Toggle status favorite
                    },
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailContactPage(
                          name: contact['name']!,
                          phone: contact['phone']!,
                          image: contact['image']!,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
