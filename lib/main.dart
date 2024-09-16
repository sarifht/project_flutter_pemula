import 'package:flutter/material.dart';
import 'list_contact.dart';
import 'profile.dart';
import 'favorite.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Buku Kontak',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // Index menu navigasi yang dipilih

  // Daftar halaman untuk navigasi, termasuk halaman ProfilePage dan FavoritePage
  final List<Widget> _pages = [
    const ListContactPage(), // Tampilan list kontak
    const FavoritePage(), // Halaman Favorite
    const ProfilePage(), // Halaman Profile
  ];

  // Fungsi untuk mengubah halaman berdasarkan item yang dipilih
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Ubah index sesuai item yang dipilih
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Header dengan background hitam
        title: const Text(
          'Buku Kontak',
          style: TextStyle(color: Colors.white), // Teks header berwarna putih
        ),
      ),
      body: _pages[
          _selectedIndex], // Menampilkan halaman berdasarkan index yang dipilih
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts_rounded),
            label: 'Kontak', // Menu Beranda
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorit', // Menu Favorite
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil', // Menu Profile
          ),
        ],
        currentIndex: _selectedIndex, // Index yang dipilih saat ini
        selectedItemColor: Colors.black, // Warna item yang dipilih
        onTap: _onItemTapped, // Panggil fungsi saat item dipilih
      ),
    );
  }
}
