import 'package:flutter/material.dart';
import 'package:flutter_app_mi2c/Screen/page_form_login.dart';
import 'package:flutter_app_mi2c/Screen/page_gambar.dart';
import 'package:flutter_app_mi2c/Screen/page_satu.dart';

class PageNavBar extends StatefulWidget {
  const PageNavBar({super.key});

  @override
  State<PageNavBar> createState() => _PageNavBarState();
}

class _PageNavBarState extends State<PageNavBar>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  //proses do in background
  //setState : proses ketika ui sudah djalankan
  //initState : proses sebelum UI di jalankan
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
          controller: tabController,
          children: const [PageSatu(), PageGambar(), PageFormLogin()]),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
            isScrollable: true,
            labelColor: Colors.blueAccent,
            unselectedLabelColor: Colors.purple,
            controller: tabController,
            tabs: const [
              Tab(
                text: "Satu",
                icon: Icon(
                  Icons.assignment,
                ),
              ),
              Tab(
                text: "Gambar",
                icon: Icon(
                  Icons.photo,
                ),
              ),
              Tab(
                text: "Login",
                icon: Icon(
                  Icons.folder_delete_outlined,
                ),
              ),
            ]),
      ),
    );
  }
}
