import 'package:flutter/material.dart';
import 'package:instcln/constants/global_variables.dart';
import 'package:instcln/main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Inst",
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.cardBackgroundColor,
        colorScheme: const ColorScheme.dark(
          primary: GlobalVariables.primaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: GlobalVariables.cardBackgroundColor,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      home: const MainPage(),
    );
  }
}
