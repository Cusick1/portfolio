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
  //TODO: If we need to set state to refresh resume page make sure this index remains it's current value
  late int _currentIndex;

  void _onNavigationItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<AppBar> _createAppBars(List<String> titles) {
    List<AppBar> list = [];

    for (int i = 0; i < titles.length; i++) {
      list.add(
        AppBar(
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          title: Text(
            titles[i],
            style: TextStyle(color: Theme.of(context).colorScheme.onTertiary),
          ),
        ),
      );
    }

    return list;
  }

  final List<Widget> _pages = [About(), Resume(), Projects()];

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    List<AppBar> appBars = _createAppBars(['About', 'Resume', 'Projects']);
    return Scaffold(
      appBar: appBars[_currentIndex],
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: colorScheme.tertiary,
        selectedItemColor: colorScheme.tertiaryContainer,
        selectedLabelStyle: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.home_rounded),
              onPressed: () {
                _onNavigationItemTapped(0);
              },
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.remember_me_rounded),
                  onPressed: () {
                    _onNavigationItemTapped(1);
                  },
                ),
              ],
            ),
            label: 'Resume',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
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
