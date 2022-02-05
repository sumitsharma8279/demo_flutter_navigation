import 'package:flutter/material.dart';
import 'package:flutter_application_demo/pages/drawerScreen/page1.dart';
import 'package:flutter_application_demo/pages/drawerScreen/page2.dart';
import 'package:flutter_application_demo/pages/drawerScreen/page3.dart';
import 'package:flutter_application_demo/pages/drawerScreen/page4.dart';
import 'package:flutter_application_demo/pages/fourth_view.dart';
import 'package:flutter_application_demo/pages/second_page.dart';
import 'package:flutter_application_demo/pages/startpage.dart';
import 'package:flutter_application_demo/pages/third_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  final _pageOptions = [
    StartPage(),
    SecondPageView(),
    ThirdViewPage(),
    Fourthview()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DemoPage1()),
            );
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DemoPage2()));
                // Update the state of the app.
                // ...
              },
            ), ListTile(
              title: const Text('Item 3'),
              onTap: () {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DemoPage3()));
                // Update the state of the app.
                // ...
              },
            ),

             ListTile(
              title: const Text('Item 4'),
              onTap: () {
                 Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DemoPage4()));
                // Update the state of the app.
                // ...
              },
            ),

            
          ],
        ),
      ),
      // ignore: avoid_unnecessary_containers
      body: _pageOptions[_selectedIndex],
    );
  }

  Widget bottomBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
          backgroundColor: Colors.green,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
          backgroundColor: Colors.purple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          backgroundColor: Colors.pink,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
