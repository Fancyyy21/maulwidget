import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maulwidget/mahasiswa/MahasiswaForm.dart';
import 'package:maulwidget/bottomnav.dart';

class DataMahasiswa extends StatefulWidget {
  const DataMahasiswa({super.key});

  @override
  State<DataMahasiswa> createState() => _DataMahasiswaState();
}

class _DataMahasiswaState extends State<DataMahasiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Data Mahasiswa',
        style: TextStyle(
          color: Color.fromARGB(255, 151, 15, 15), fontWeight: FontWeight.bold),
      ),
      backgroundColor: Color.fromARGB(0, 225, 38, 13),
      centerTitle: true,
      actions: [
        // Tombol "Tambah Data" di sisi kanan AppBar
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            // Navigasi ke halaman MahasiswaForm
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MahasiswaForm(),
              ),
            );
          },
        ),
      ], // Corrected indentation here
    ),
      body: ListView(
        children: const [
         Card(
            child: ListTile(
              title: Text('NPM: 1214078'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama: Maulana Imanulhaq'),
                  Text('Alamat: Bandung'),  // Gantilah [Alamat Anda] dengan alamat yang sesuai
                ],
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('NPM: 1214053'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama: Raul Mahya'),
                  Text('Alamat: Bandung'),  // Gantilah [Alamat Anda] dengan alamat yang sesuai
                ],
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text('NPM: 1214081'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama: Ibrohim Mubarok'),
                  Text('Alamat: Bandung'),  // Gantilah [Alamat Anda] dengan alamat yang sesuai
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}