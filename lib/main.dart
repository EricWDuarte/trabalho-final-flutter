import 'package:flutter/material.dart';
import 'package:trabalho_final/cores.dart';
import 'package:trabalho_final/mainMenu.dart';
import 'jogos.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: "Square721",
      textTheme: myTextTheme,
      unselectedWidgetColor: Cores.verde,
      scaffoldBackgroundColor: Cores.roxo,
      indicatorColor: Cores.verde,
      buttonTheme: ButtonThemeData(
          buttonColor: Cores.verde, textTheme: ButtonTextTheme.normal),
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.resolveWith((states) => Cores.verde),
          checkColor:
              MaterialStateProperty.resolveWith((states) => Cores.roxo)),
    ),
    home: MainRoute(),
  ));
}

final myTextTheme = TextTheme(
  bodyText1: TextStyle(),
  bodyText2: TextStyle(),
  headline1: TextStyle(),
  headline2: TextStyle(),
  headline3: TextStyle(),
  headline4: TextStyle(),
  headline5: TextStyle(),
  headline6: TextStyle(),
  subtitle1: TextStyle(),
  subtitle2: TextStyle(),
).apply(
  bodyColor: Cores.verde,
  displayColor: Cores.verde,
);
