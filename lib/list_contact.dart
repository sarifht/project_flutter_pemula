import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'detail_contact.dart';
import 'contact_provider.dart';

class ListContactPage extends StatefulWidget {
  const ListContactPage({super.key});

  @override
  ListContactPageState createState() => ListContactPageState();
}

class ListContactPageState extends State<ListContactPage> {
  List<Map<String, dynamic>> filteredContacts = [];

  @override
  void initState() {
    super.initState();
    final contactProvider =
        Provider.of<ContactProvider>(context, listen: false);
    filteredContacts = contactProvider.contacts;
  }

  void _filterContacts(String query) {
    final contactProvider =
        Provider.of<ContactProvider>(context, listen: false);
    setState(() {
      if (query.isEmpty) {
        filteredContacts = contactProvider.contacts;
      } else {
        filteredContacts = contactProvider.contacts
            .where((contact) =>
                contact['name']!.toLowerCase().contains(query.toLowerCase()) ||
                contact['phone']!.contains(query))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<ContactProvider>(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: _filterContacts,
            decoration: const InputDecoration(
              hintText: 'Cari Kontak...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
          ),
        ),
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
                      contactProvider.toggleFavorite(index); // Toggle favorite
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
