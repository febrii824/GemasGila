import 'package:flutter/material.dart';
import 'gantipassword.dart';
import 'daftar.dart';
import 'editprofil.dart';
import 'pengajuan.dart';
import 'lihatpengajuan.dart';
import 'ubahpengajuan.dart'; 
import 'ubahstatuspengajuan.dart'; // Import UbahStatusPengajuanPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Makarya',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins', // Define the Poppins font here
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/daftar': (context) => DaftarPage(),
        '/gantipassword': (context) => GantiPasswordPage(),
        '/editprofil': (context) => EditProfilePage(),
        '/pengajuan': (context) => PengajuanPage(),
        '/lihatpengajuan': (context) => LihatPengajuan(),
        '/ubahpengajuan': (context) => UbahPengajuanHakiPage(),
        '/ubahstatuspengajuan': (context) => UbahStatusPengajuanPage(), // Add route for UbahStatusPengajuanPage
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _navigateTo(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _navigateTo(context, '/daftar'),
              child: const Text('Daftar'),
            ),
            ElevatedButton(
              onPressed: () => _navigateTo(context, '/gantipassword'),
              child: const Text('Ganti Password'),
            ),
            ElevatedButton(
              onPressed: () => _navigateTo(context, '/editprofil'),
              child: const Text('Edit Profil'),
            ),
            ElevatedButton(
              onPressed: () => _navigateTo(context, '/pengajuan'),
              child: const Text('Pengajuan'),
            ),
            ElevatedButton(
              onPressed: () => _navigateTo(context, '/lihatpengajuan'),
              child: const Text('Lihat Pengajuan'),
            ),
            ElevatedButton(
              onPressed: () => _navigateTo(context, '/ubahpengajuan'),
              child: const Text('Ubah Pengajuan'),
            ),
            ElevatedButton(
              onPressed: () => _navigateTo(context, '/ubahstatuspengajuan'), // Navigate to UbahStatusPengajuanPage
              child: const Text('Ubah Status Pengajuan'), // Add button for UbahStatusPengajuanPage
            ),
          ],
        ),
      ),
    );
  }
}
