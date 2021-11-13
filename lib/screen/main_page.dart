import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mau_kerja/screen/add_job_page.dart';
import 'package:mau_kerja/screen/favorite_page.dart';
import 'package:mau_kerja/screen/profile_page.dart';
import 'package:mau_kerja/screen/setting_page.dart';
import 'package:mau_kerja/screen/home_page.dart';
import 'package:mau_kerja/shared/theme.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.favorite, size: 30),
      const Icon(Icons.settings, size: 30),
      const Icon(Icons.person, size: 30),
    ];

    final screen = <Widget>[
      const HomePage(),
      const FavoritePage(),
      const SettingPage(),
      const ProfilePage()
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: primaryColor,
      body: screen[_currentIndex],
      // appBar: AppBar(),
      bottomNavigationBar: SalomonBottomBar(
        selectedItemColor: lastColor,
        currentIndex: _currentIndex,
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.purple
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.favorite_border),
            title: const Text("Likes"),
            selectedColor: Colors.pink
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: const Text("Search"),
            selectedColor: Colors.orange
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.teal
          )
        ],
      ), 
      // bottomNavigationBar: Theme(
      //   data: Theme.of(context).copyWith(
      //     iconTheme: IconThemeData(color: secondaryColor),
      //   ),
      //   child: CurvedNavigationBar(
      //     height: 60,
      //     backgroundColor: Colors.transparent,
      //     color: lastColor,
      //     buttonBackgroundColor: lastColor,
      //     index: index,
      //     items: items,
      //     onTap: (index) {
      //       setState(() {
      //         this.index = index;
      //       });
      //     },
      //   ),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  AddJobPage()));
          },
          child: const Icon(Icons.add),
          elevation: 2.0,
        ),
    );
  }
}
