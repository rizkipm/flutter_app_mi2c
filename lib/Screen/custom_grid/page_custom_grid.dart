import 'package:flutter/material.dart';
import 'package:flutter_app_mi2c/Screen/custom_grid/page_detail_grid.dart';

class PageCustomGrid extends StatefulWidget {
  const PageCustomGrid({super.key});

  @override
  State<PageCustomGrid> createState() => _PageCustomGridState();
}

class _PageCustomGridState extends State<PageCustomGrid> {

  List<Map<String, dynamic>> listMovie = [
    {
      "judul":"Ciao Alberto",
      "gambar":"movie1.jpg",
      "harga":"Rp 45.000"
    },
    {
      "judul":"The Simpson",
      "gambar":"movie2.png",
      "harga":"Rp 45.000"
    },
    {
      "judul":"Jungle Cruise",
      "gambar":"movie3.jpg",
      "harga":"Rp 45.000"
    },
    {
      "judul":"Home Alon",
      "gambar":"movie4.jpg",
      "harga":"Rp 45.000"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie App'),
        backgroundColor: Colors.green,
      ),

      body: GridView.builder(
        itemCount: listMovie.length,
          gridDelegate: const
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),//kolom kotak
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){
                //untuk pindah ke detail page
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    PageDetailGrid(listMovie[index])

                ));
              },
              child: Padding(padding: EdgeInsets.all(10),
                child: GridTile(
                  footer: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.black54)
                    ),
                    child: Column(
                      children: [
                        Text("${listMovie[index]["judul"]}", style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                        Text('Rp. ${listMovie[index]['harga']}')
                      ],
                    ),
                  ),
                  child: Image.asset('gambar/${listMovie[index]['gambar']}'),
                ),
              ),

            );
          }),
    );
  }
}
