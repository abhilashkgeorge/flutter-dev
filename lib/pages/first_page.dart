
import 'package:coolapp/pages/HomePage.dart';
import 'package:coolapp/pages/second_page.dart';
import 'package:coolapp/pages/settings.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List _pages = [
    const homePage(),
    const SettingsPage(),
    const SecondPage()
  ];

  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("First Page"),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Home'),

         BottomNavigationBarItem(icon: Icon(Icons.menu),
          label: 'Second'),

           BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: 'Settings'),
        ]),
        // drawer: Drawer(
        //   backgroundColor: Colors.yellow,
        //   child: Column(
        //     children: [
        //      const DrawerHeader(child: Icon(
        //         Icons.favorite
        //       )),
        //       ListTile(
        //         leading: const Icon(Icons.home),
        //         title: const Text("Home Page"),
        //         onTap: () {
        //           Navigator.pop(context);
        //           Navigator.pushNamed(context, '/homepage');
        //         },
        //       ),
        //       ListTile(
        //         leading: const Icon(Icons.settings),
        //         title: const Text("Settings Page"),
        //         onTap: () {
        //           Navigator.pop(context);
        //           Navigator.pushNamed(context, '/settingspage');
        //         },
        //       ),
        //       ListTile(
        //         leading: const Icon(Icons.logout),
        //         title: const Text("Logout Page"),
        //         onTap: () {
        //           Navigator.pop(context);
        //           Navigator.pushNamed(context, '/logoutpage');
        //         },
        //       )
        //     ],
        //   ),
        // ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: const Text("Navigate to the second Button"),
      //     onPressed: () {
      //       Navigator.pushNamed(context, 'secondPage');
      //     },
      //   ),
      // ),
    );
  }
}