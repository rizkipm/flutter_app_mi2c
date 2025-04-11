import 'package:flutter/material.dart';

class PageDetailGrid extends StatelessWidget {

  //constructor untuk penampung data
  final Map<String, dynamic> itemGrid;

  const PageDetailGrid(this.itemGrid, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemGrid['judul']),
      ),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRect(
                child: Image.asset('gambar/${itemGrid['gambar']}',
                  fit: BoxFit.contain,
                  width: double.infinity,
                  height: 350,
                ),
              ),

              SizedBox(height: 10,),
              Text(itemGrid['judul'],
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 10,),
              Text(itemGrid['harga'],
                style: TextStyle(
                  color: Colors.orange
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
