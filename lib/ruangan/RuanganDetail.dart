import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maulwidget/ruangan/DataRuangan.dart';

class RuanganDetail extends StatefulWidget {
  final String? KodeRuangan;
  final String? NamaRuangan;
  final String? Kapasitas;


  const RuanganDetail({Key? key, this.KodeRuangan, this.NamaRuangan, this.Kapasitas})
  : super(key: key);

  @override
  State<RuanganDetail> createState() => _RuanganDetailState();
}

class _RuanganDetailState extends State<RuanganDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Ruangan Detail'),
        backgroundColor: Color.fromARGB(255, 176, 189, 25),
        centerTitle: true,
      ),

  body: Center (child: Column(
    children: [
      Text("Kode Ruangan: ${widget.KodeRuangan}",
      style: const TextStyle(fontSize: 20.0),),

      Text("Nama Ruangan: ${widget.NamaRuangan}",
      style: const TextStyle(fontSize: 20.0),),
      
      Text("Kapasitas: ${widget.Kapasitas}",
      style: const TextStyle(fontSize: 20.0),),
    ],
  )
  ),
  );
}
}

