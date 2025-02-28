import 'package:flutter/material.dart';

class PageFormLogin extends StatefulWidget {
  const PageFormLogin({super.key});

  @override
  State<PageFormLogin> createState() => _PageFormLoginState();
}

class _PageFormLoginState extends State<PageFormLogin> {

  //controller
  TextEditingController etUsername = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();

  //variable untuk data
  String nUsername = "";
  String nPassword = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Page Form Login'),
      ),

      body: Form(child: Column(
        children: [
          Padding(padding: EdgeInsets.all(8),
            child: Text('Form Login User',
              style: TextStyle(
                fontSize: 15, color: Colors.blueAccent, fontWeight: FontWeight.bold
              ),
            ),
          ),

          TextFormField(
            controller: etUsername,
            decoration: InputDecoration(
              hintText: 'Input Username'
            ),
          ),
          SizedBox(height: 5,),
          TextFormField(
            controller: etPassword,
            obscureText: true,//ini agar password nya gak keliatan
            decoration: InputDecoration(
                hintText: 'Input Password'
            ),
          ),

          SizedBox(height: 25,),
          MaterialButton(onPressed: (){
            //kita akan get data
            //proses do in background
            setState(() {
              nUsername = etUsername.text; // cara untuk ambil data dari widget
              nPassword = etPassword.text;

              print("data : "+ nUsername  + " pass:  " + nPassword);
              //TASK
              //1. Tampilkan username dan password ke dalam Toast
              //2. Setelah klik button login --> akan pindah ke page lain yang akan lempar data
              //username dan password
            });
          },
            color: Colors.blueAccent,
            textColor: Colors.white,
            child: Text('Login'),
          )
        ],
      )),
    );
  }
}
