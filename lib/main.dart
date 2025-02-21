import 'package:flutter/material.dart';
import 'package:flutter_app_mi2c/Screen/page_dua.dart';
import 'package:flutter_app_mi2c/Screen/page_empat.dart';
import 'package:flutter_app_mi2c/Screen/page_satu.dart';
import 'package:flutter_app_mi2c/Screen/page_tiga.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PageUtama(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//ketik st
class PageUtama extends StatelessWidget {
  const PageUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appBar : properti
        //AppBar : Widget
        title: Text('Mobile Apps MI2c',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text("Halo Selamat Datang di Apps MI 2C"),
            //untuk atur jarak dari stu widget ke widget lain
            SizedBox(height: 10,),
            MaterialButton(onPressed: (){
              //pindah ke page satu
              Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageSatu()
              ));

              //Lat buat page 2 dan 3, kemudian tambahkan navigator.
            },
              color: Colors.purple,
              child: Text('Page 1',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white
                ),
              ),
            ),

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(onPressed: (){
                //code diarahkan kemana
                Navigator.push(context, MaterialPageRoute(builder: (context)
                => PageDua()
                ));
              },
                elevation: 18.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                // color: Colors.purple,
                //color default putih : 0xFFFFFFFF
                color: Color(0xFFB63131),
                // color: Color(0xFFA81449),
                clipBehavior: Clip.antiAlias,
                child: Text('Page 2',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => PageTiga()
              ));
            },
              color: Colors.purple,
              child: Text('Page 3',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white
                ),
              ),
            ),

            SizedBox(height: 10,),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => PageListEmpat()
              ));
            },
              color: Colors.purple,
              child: Text('Page 4',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white
                ),
              ),
            ),
          ],
        ),
        //child :  hanya bisa menampung 1 widget
        //children : bisa menampung lebih dari 1 widget (column, row, list)
      ),
    );
  }
}

