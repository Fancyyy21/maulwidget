import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maulwidget/constants.dart';
import 'package:maulwidget/dosen/DataDosen.dart';
import 'package:maulwidget/matakuliah/DataMataKuliah.dart';
import 'package:maulwidget/models/setting.dart';
import 'package:maulwidget/ruangan/DataRuangan.dart';
import 'package:maulwidget/widgets/avatar_card.dart';
import 'package:maulwidget/widgets/setting_tile.dart';
import 'package:maulwidget/widgets/support_card.dart';
import 'package:maulwidget/mahasiswa/MahasiswaForm.dart';
import 'package:maulwidget/mahasiswa/MahasiswaDetail.dart';
import 'package:maulwidget/mahasiswa/DataMahasiswa.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  // Halaman-halaman yang akan ditampilkan
  final List<Widget> _pages = [
    HomePage(),
    DataMahasiswa(),
    DataDosen(),
    DataRuangan(),
    DataMataKuliah(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Universitas Logistik dan Bisnis Internasional'),
        backgroundColor: Colors.red,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.red,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 122, 150, 69),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 114, 208, 239),
            icon: Icon(Icons.data_array),
            label: 'Data Mahasiswa',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 216, 235, 6),
            icon: Icon(Icons.data_array),
            label: 'Data Dosen',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 112, 226, 7),
            icon: Icon(Icons.data_array),
            label: 'Data Ruangan',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 7, 226, 153),
            icon: Icon(Icons.data_array),
            label: 'Data MataKuliah',
          ),
        ],
      ),
    );
  }
}

// Kelas AboutPage yang baru ditambahkan


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/BACKGROUND2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Tempatkan logo atau elemen lain di sini
              ],
            ),
          ),
          Positioned(
            top: 160, // Sesuaikan dengan posisi vertikal yang diinginkan
            left: 30, // Sesuaikan dengan posisi vertikal yang diinginkan
            child: Center(
              child: Text(
                'SELAMAT DATANG DI KAMPUS ULBI!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class MahasiswaDetail extends StatefulWidget {
//   final String? Npm;
//   final String? NamaLengkap;
//   final String? Alamat;


//   const MahasiswaDetail({Key? key, this.Npm, this.NamaLengkap, this.Alamat})
//   : super(key: key);

//   @override
//   State<MahasiswaDetail> createState() => _MahasiswaDetailState();
// }

// class _MahasiswaDetailState extends State<MahasiswaDetail> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       appBar: AppBar(
//         title: const Text('Mahasiswa Detail'),
//         backgroundColor: Color.fromARGB(255, 172, 24, 122),
//         centerTitle: true,
//       ),

//   body: Center (child: Column(
//     children: [
//       Text("N P M: ${widget.Npm}",
//       style: const TextStyle(fontSize: 20.0),),

//       Text("Nama Lengkap: ${widget.NamaLengkap}",
//       style: const TextStyle(fontSize: 20.0),),
      
//       Text("Alamat: ${widget.Alamat}",
//       style: const TextStyle(fontSize: 20.0),),
//     ],
//   )
//   ),
//   );
// }
// }


void main() {
  runApp(MaterialApp(
    home: BottomNav(),
  ));
}
