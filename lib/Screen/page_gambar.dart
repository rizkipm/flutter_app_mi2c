import 'package:flutter/material.dart';

class PageGambar extends StatelessWidget {
  const PageGambar({super.key});

  //untuk image asset
  //buat direktori
  //masukin gambar dan rename yang simple namanya
  //update di puspuck.yaml
  //kita pub get atau pub upgrade

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Singapore Places'),
      ),
      body: Center(
        child: Image.asset('gambar/sing.jpeg')
      ),

    );
  }
}
