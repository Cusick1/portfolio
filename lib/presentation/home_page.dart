import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/blocs/home_page_cubit.dart';
import 'package:portfolio/presentation/about_page.dart';
import 'package:portfolio/presentation/projects_page.dart';
import 'package:portfolio/presentation/resume_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePageView();
  }
}

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  static final List<Widget> _pages = [
    const About(),
    const Resume(),
    const Projects(),
  ];
  static final List<String> _titles = ['About', 'Resume', 'Projects'];

  List<AppBar> _createAppBars(BuildContext context, List<String> titles) {
    List<AppBar> list = [];

    for (int i = 0; i < titles.length; i++) {
      list.add(
        AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            titles[i],
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ),
      );
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    HomePageCubit homePageCubit = context.read<HomePageCubit>();
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final List<AppBar> appBars = _createAppBars(context, _titles);
    return BlocBuilder<HomePageCubit, int>(
      bloc: homePageCubit,
      builder: (context, pageState) {
        return Scaffold(
          appBar: appBars[pageState],
          body: _pages[pageState],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: pageState,
            backgroundColor: colorScheme.surface,
            selectedItemColor: colorScheme.primary,
            selectedLabelStyle: const TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            unselectedItemColor: colorScheme.onSurfaceVariant,
            items: [
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.home_rounded),
                  onPressed: () {
                    homePageCubit.changePage(0);
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
                        homePageCubit.changePage(1);
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
                    homePageCubit.changePage(2);
                  },
                ),
                label: 'Projects',
              ),
            ],
          ),
        );
      },
    );
  }
}


// Copilot generated alternative using Controller.
//   @override
  //   Widget build(BuildContext context) {
  //     final ThemeData theme = Theme.of(context);
  //     final ColorScheme colorScheme = theme.colorScheme;

  //     return DefaultTabController(
  //       length: _pages.length,
  //       child: Builder(
  //         builder: (context) {
  //           final TabController tabController = DefaultTabController.of(context);
  //           return Scaffold(
  //             appBar: AppBar(
  //               backgroundColor: colorScheme.primary,
  //               title: AnimatedBuilder(
  //                 animation: tabController,
  //                 builder:
  //                     (context, _) => Text(
  //                       _titles[tabController.index],
  //                       style: TextStyle(color: colorScheme.onPrimary),
  //                     ),
  //               ),
  //             ),
  //             body: TabBarView(children: _pages),
  //             bottomNavigationBar: AnimatedBuilder(
  //               animation: tabController,
  //               builder:
  //                   (context, _) => BottomNavigationBar(
  //                     currentIndex: tabController.index,
  //                     backgroundColor: colorScheme.primary,
  //                     selectedItemColor: colorScheme.primaryContainer,
  //                     selectedLabelStyle: const TextStyle(
  //                       fontStyle: FontStyle.italic,
  //                       fontWeight: FontWeight.bold,
  //                     ),
  //                     unselectedItemColor: Colors.black,
  //                     onTap: (index) {
  //                       tabController.animateTo(index);
  //                     },
  //                     items: List.generate(_pages.length, (i) {
  //                       return BottomNavigationBarItem(
  //                         icon: Icon(_icons[i]),
  //                         label: _titles[i],
  //                       );
  //                     }),
  //                   ),
  //             ),
  //           );
  //         },
  //       ),
  //     );
  //   }
  // }