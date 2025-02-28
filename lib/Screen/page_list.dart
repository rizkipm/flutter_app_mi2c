import 'package:flutter/material.dart';
import 'package:flutter_app_mi2c/Screen/page_get_data.dart';

class PageList extends StatelessWidget {
  const PageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Passing Data List"),
      ),

      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
          return ListTile(
            title: Text("Judul Berita $index",),
            subtitle: Text("Detail Berita $index"),
            onTap: (){
              //ini akan pindah ke page berikut nya
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PageGetData(index)));
            },
          );
        },
      ),
    );
  }
}
