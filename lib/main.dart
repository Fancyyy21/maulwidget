import 'package:flutter/material.dart';
import 'package:maulwidget/bottomnav.dart';
import 'package:maulwidget/mahasiswa/MahasiswaForm.dart';
import 'package:maulwidget/mahasiswa/DataMahasiswa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      home: BottomNav(), // Mengganti MyHomePage() dengan BottomNav()
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Flutter'),
      ),
      body: Center(
        child: Text(
          'Selamat Datang di Campus ULBI',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
