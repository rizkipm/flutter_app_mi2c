import 'package:flutter/material.dart';

class PageGetData extends StatelessWidget {
  
  //contructor untuk penampung data
  final int index;
  const PageGetData(this.index, {super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Judul Berita $index'),
      backgroundColor: Colors.blueAccent,
    ),
    body: Center(
      child: Text("Detail Berita ke : $index"),
    ),
    );
  }
}
