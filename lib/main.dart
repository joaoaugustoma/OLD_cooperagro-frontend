import 'package:cooper_agro/screen/LoginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primaryColor: const Color(0xFF77D94A),
        secondaryHeaderColor: const Color(0xFFCDF2A7),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
              color: Color(0xFF16162F),
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto'),
        ),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xFF97D984)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color(0xFF77D94A)),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF77D94A)),
          ),
          labelStyle: TextStyle(
            color: Color(0xFF16162F),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF97D984),
            textStyle: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}
