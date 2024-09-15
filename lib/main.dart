import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Memulai aplikasi Flutter
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp sebagai root aplikasi, menonaktifkan banner debug dan mengatur tema
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menyembunyikan banner debug
      title: 'Buku Kontak', // Judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.blue, // Mengatur tema dasar dengan warna biru
      ),
      home: const MyHomePage(), // Menentukan halaman utama aplikasi
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

  // Daftar halaman untuk setiap menu navigasi
  final List<Widget> _pages = [
    const Center(child: Text('Ini adalah Beranda')),
    const Center(child: Text('Ini adalah Favorite')),
    const Center(child: Text('Ini adalah Profile')),
  ];

  // Fungsi untuk mengubah halaman berdasarkan item yang dipilih di BottomNavigationBar
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
            icon: Icon(Icons.home),
            label: 'Beranda', // Menu Beranda
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite', // Menu Favorite
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile', // Menu Profile
          ),
        ],
        currentIndex: _selectedIndex, // Index yang dipilih saat ini
        selectedItemColor: Colors.black, // Warna item yang dipilih
        onTap: _onItemTapped, // Panggil fungsi saat item dipilih
      ),
    );
  }
}
