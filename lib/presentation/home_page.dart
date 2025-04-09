import 'package:flutter/material.dart';
import 'package:portfolio/presentation/about_page.dart';
import 'package:portfolio/presentation/projects_page.dart';
import 'package:portfolio/presentation/resume_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  void _onNavigationItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [About(), Resume(), Projects()];

  @override
  Widget build(BuildContext context) {
    //TODO: research if scaffold is most comomonly used or do people create their own custom scaffolds.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        title: Text('Ryan Cusick'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.teal[400],
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.home_rounded),
              onPressed: () {
                _onNavigationItemTapped(0);
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.remember_me_rounded),
              onPressed: () {
                _onNavigationItemTapped(1);
              },
            ),
            label: 'Resume',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              color: Colors.black,
              icon: const Icon(Icons.now_wallpaper_rounded),
              onPressed: () {
                _onNavigationItemTapped(2);
              },
            ),
            label: 'Projects',
          ),
        ],
      ),
    );
  }
}
