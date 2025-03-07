import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageFormRegister extends StatefulWidget {
  const PageFormRegister({super.key});

  @override
  State<PageFormRegister> createState() => _PageFormRegisterState();
}

class _PageFormRegisterState extends State<PageFormRegister> {

  //deklarasi text controller
  TextEditingController etFullName = new TextEditingController();
  TextEditingController etUsername = new TextEditingController();
  TextEditingController etEmail = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();
  TextEditingController etTglLahir = new TextEditingController();
  GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  //untuk date picker
  Future selectDate() async{
    DateTime? pickedDate = await showDatePicker(
        context: context, firstDate: DateTime(1900),
        lastDate: DateTime(2025),
    );

    if (pickedDate != null){
      setState(() {
        etTglLahir.text = DateFormat("dd-MM-yyyy").format(pickedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Page Register'),
      ),
      body: Form(
        key: keyForm,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: etFullName,
                  validator: (val){
                    return val!.isEmpty ? "Tidak boleh kosong" : null;
                  },
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: etUsername,
                  validator: (val){
                    return val!.isEmpty ? "Tidak boleh kosong" : null;
                  },
                  decoration: InputDecoration(
                      hintText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: etEmail,
                  validator: (val){
                    return val!.isEmpty ? "Tidak boleh kosong" : null;
                  },
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  onTap: (){
                    selectDate();
                  },
                  controller: etTglLahir,
                  validator: (val){
                    return val!.isEmpty ? "Tidak boleh kosong" : null;
                  },
                  decoration: InputDecoration(
                      hintText: "Tanggal Lahir",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: etPassword,
                  validator: (val){
                    return val!.isEmpty ? "Tidak boleh kosong" : null;
                  },
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                
                MaterialButton(onPressed: (){
                  //TASK :
                  //munculkan semua inputan dari text field ke dalam toast
                  //Fullname, username, email, password dan tgl (ini pakai date picker)

                },
                  color: Colors.blueAccent,
                  minWidth: 200,
                  height: 45,
                  child: Text('REGISTER'),
                )

              ],
            ),
          ),
        ),
      ),

    );
  }
}
