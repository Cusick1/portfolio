import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/blocs/home_page_cubit.dart';
import 'package:portfolio/presentation/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool darkMode = true;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: MediaQuery.platformBrightnessOf(context) == Brightness.dark
        colorScheme: darkMode
            ? ColorScheme.dark(
                primary: Color(0xFF165a43),
                surface: Color(0xFF131f1b),
                onSurface: Colors.white,
                onSurfaceVariant: Colors.grey[500],
              )
            // ignore: dead_code
            : ColorScheme.light(
                primary: Color(0xFF165a43),
                surface: Colors.white,
                onSurface: Colors.grey.shade900,
                onSurfaceVariant: Colors.grey[500],
              ),
        useMaterial3: true,
        // textTheme: TextTheme(),
        // iconButtonTheme: IconButtonThemeData(style: ButtonStyle(textStyle: ))
      ),
      home: BlocProvider(
        create: (context) => HomePageCubit(),
        child: const MyHomePage(),
      ),
    );
  }
}
