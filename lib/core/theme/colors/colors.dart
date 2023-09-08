import 'package:flutter/material.dart';

class PokedexColors {
  //customBD
  static const Color customBD = Colors.black;

  //green scale
  static const Color greenDeep = Color.fromARGB(255, 27, 147, 44);
  static const Color greenMedium = Color.fromARGB(255, 112, 208, 144);
  static const Color greenBase = Color.fromARGB(255, 84, 220, 68);
  static const Color greenLigth = Color.fromARGB(255, 208, 236, 148);

  //purple scale
  static const Color purpleDeep = Color.fromARGB(255, 97, 20, 188);
  static const Color purpleMedium = Color.fromARGB(255, 141, 142, 203);
  static const Color purpleBase = Color.fromARGB(255, 136, 73, 176);
  static const Color purpleLigth = Color.fromARGB(255, 169, 141, 248);

  //hot colors scale
  static const Color hotRed = Color.fromARGB(255, 241, 10, 52);
  static const Color hotPeach = Color.fromARGB(255, 236, 140, 76);
  static const Color hotOrange = Color.fromARGB(255, 248, 168, 1);
  static const Color hotPink = Color.fromARGB(255, 255, 224, 202);
  static const Color hotYellow = Color.fromARGB(255, 252, 244, 124);

  //blue Scale
  static const Color blueShadow = Color.fromARGB(255, 4, 5, 52);
  static const Color blueDark = Color.fromARGB(255, 8, 4, 180);
  static const Color blueDeep = Color.fromARGB(255, 38, 93, 252);
  static const Color blueMedium = Color.fromARGB(255, 143, 195, 233);
  static const Color blueBase = Color.fromARGB(255, 170, 203, 225);
  static const Color blueLigth = Color.fromARGB(255, 32, 197, 245);
  static const Color blueWhite = Color.fromARGB(255, 183, 219, 255);

  //grey Scale
  static const Color greyBlack = Color.fromARGB(255, 30, 24, 21);
  static const Color greyDark = Color.fromARGB(255, 93, 102, 110);
  static const Color greyMedium = Color.fromARGB(255, 85, 82, 82);
  static const Color greyBase = Color.fromARGB(255, 138, 136, 134);
  static const Color greyLigth = Color.fromARGB(255, 137, 160, 179);
  static const Color greyWhite = Color.fromARGB(255, 184, 184, 184);
  static const Color greyWhiteLigth = Color.fromARGB(255, 205, 205, 205);

  //brown scale
  static const Color brownDeep = Color.fromARGB(255, 103, 62, 44);
  static const Color brownMedium = Color.fromARGB(255, 125, 54, 0);
  static const Color brownBase = Color.fromARGB(255, 158, 110, 83);
  static const Color brownLigth = Color.fromARGB(255, 154, 131, 113);

  //pink scale
  static const Color pinkDeep = Color.fromARGB(255, 221, 161, 231);
  static const Color pinkBase = Color.fromARGB(255, 253, 183, 218);

  //degrade colors

  static LinearGradient waterGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 32, 197, 245),
      Color.fromARGB(255, 21, 124, 154),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static LinearGradient fireGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 248, 168, 1),
      Color.fromARGB(255, 236, 140, 76),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static LinearGradient grassGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 112, 208, 144),
      Color.fromARGB(255, 85, 162, 58),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static LinearGradient darkGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 165, 165, 165),
      Color.fromARGB(255, 129, 129, 129),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static LinearGradient electricGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 252, 244, 124),
      Color.fromARGB(255, 188, 137, 5),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient fairyGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 252, 124, 250),
      Color.fromARGB(255, 185, 5, 188),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient figthinGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 252, 124, 124),
      Color.fromARGB(255, 188, 5, 5),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient flyingGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 124, 235, 252),
      Color.fromARGB(255, 5, 182, 188),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient ghostGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 162, 124, 252),
      Color.fromARGB(255, 48, 5, 188),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient groundGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 252, 164, 124),
      Color.fromARGB(255, 136, 80, 24),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient poisonGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 214, 124, 252),
      Color.fromARGB(255, 124, 5, 188),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient dragonGradient = const LinearGradient(
    colors: [
      Color.fromARGB(255, 130, 124, 252),
      Color.fromARGB(255, 5, 11, 188),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
