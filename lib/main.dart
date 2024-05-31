import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do_app/pages/home_page.dart';

void main() async {
  await Hive.initFlutter();

  var box = await Hive.openBox("myBox");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.yellow,
            primary: Colors.yellow[900],
            secondary: Colors.yellow[400]),
        dialogBackgroundColor: Colors.yellow[100],
        scaffoldBackgroundColor: Colors.yellow[100],
        checkboxTheme: CheckboxThemeData(
          checkColor: WidgetStateProperty.all(Colors.black),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.yellow[300],
        ),
      ),
      home: const HomePage(),
    );
  }
}
