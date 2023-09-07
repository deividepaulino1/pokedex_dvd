import 'package:flutter/material.dart';

class ThemeBase {
  static ThemeData get pokedexLigth {
    return ThemeData(
      primarySwatch: Colors.blue,
      primaryColorLight: const Color.fromARGB(255, 1, 165, 253),
      primaryColorDark: Colors.blue.shade700,
      primaryColor: const Color.fromARGB(255, 24, 14, 109),
      fontFamily: 'Montserrat',
      colorScheme: ColorScheme.fromSwatch().copyWith(
        background: Colors.grey.shade200,
        primary: Colors.blue,
        secondary: Colors.orange,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(Colors.blue),
        checkColor: MaterialStateProperty.all(Colors.white),
      ),
      textTheme: TextTheme(
        displayLarge: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        displayMedium: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 14,
        ),
        displaySmall: const TextStyle(
          color: Colors.blue,
          fontSize: 12,
        ),
        headlineMedium: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: const TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: const TextStyle(
          fontFamily: 'Roboto',
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: const TextStyle(
          color: Colors.black,
          fontSize: 26,
        ),
        bodyMedium: const TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
      ),
    );
  }

  static ThemeData get pokedexDark {
    return ThemeData(
      primarySwatch: Colors.green,
      primaryColorLight: Colors.green.shade100,
      primaryColorDark: Colors.green.shade700,
      primaryColor: Colors.green.shade900,
      fontFamily: 'Montserrat',
      colorScheme: ColorScheme.fromSwatch().copyWith(
        background: Colors.grey.shade200,
        primary: Colors.green,
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(Colors.green),
        checkColor: MaterialStateProperty.all(Colors.white),
      ),
      textTheme: TextTheme(
        displayLarge: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        displayMedium: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 14,
        ),
        displaySmall: const TextStyle(
          color: Colors.green,
          fontSize: 12,
        ),
        headlineMedium: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: const TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: const TextStyle(
          color: Colors.black,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: const TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        bodyMedium: const TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
      ),
    );
  }
}
