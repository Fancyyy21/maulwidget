import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maulwidget/dosen/DataDosen.dart';

class DosenDetail extends StatefulWidget {
  final String? Nidn;
  final String? NamaDosen;
  final String? Alamat;


  const DosenDetail({Key? key, this.Nidn, this.NamaDosen, this.Alamat})
  : super(key: key);

  @override
  State<DosenDetail> createState() => _DosenDetailState();
}

class _DosenDetailState extends State<DosenDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Dosen Detail'),
        backgroundColor: Color.fromARGB(255, 176, 189, 25),
        centerTitle: true,
      ),

  body: Center (child: Column(
    children: [
      Text("N I D N: ${widget.Nidn}",
      style: const TextStyle(fontSize: 20.0),),

      Text("Nama Dosen: ${widget.NamaDosen}",
      style: const TextStyle(fontSize: 20.0),),
      
      Text("Alamat: ${widget.Alamat}",
      style: const TextStyle(fontSize: 20.0),),
    ],
  )
  ),
  );
}
}

