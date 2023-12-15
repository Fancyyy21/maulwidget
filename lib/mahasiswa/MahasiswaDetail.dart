import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maulwidget/mahasiswa/DataMahasiswa.dart';

class MahasiswaDetail extends StatefulWidget {
  final String? Npm;
  final String? NamaLengkap;
  final String? Alamat;


  const MahasiswaDetail({Key? key, this.Npm, this.NamaLengkap, this.Alamat})
  : super(key: key);

  @override
  State<MahasiswaDetail> createState() => _MahasiswaDetailState();
}

class _MahasiswaDetailState extends State<MahasiswaDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Mahasiswa Detail'),
        backgroundColor: Color.fromARGB(255, 176, 189, 25),
        centerTitle: true,
      ),

  body: Center (child: Column(
    children: [
      Text("N P M: ${widget.Npm}",
      style: const TextStyle(fontSize: 20.0),),

      Text("Nama Lengkap: ${widget.NamaLengkap}",
      style: const TextStyle(fontSize: 20.0),),
      
      Text("Alamat: ${widget.Alamat}",
      style: const TextStyle(fontSize: 20.0),),
    ],
  )
  ),
  );
}
}

