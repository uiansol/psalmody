import 'package:flutter/material.dart';

import 'package:psalmody/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Map<int, Color> colorPrimary = {
    50: Color.fromRGBO(85, 44, 40, .1),
    100: Color.fromRGBO(85, 44, 40, .2),
    200: Color.fromRGBO(85, 44, 40, .3),
    300: Color.fromRGBO(85, 44, 40, .4),
    400: Color.fromRGBO(85, 44, 40, .5),
    500: Color.fromRGBO(85, 44, 40, .6),
    600: Color.fromRGBO(85, 44, 40, .7),
    700: Color.fromRGBO(85, 44, 40, .8),
    800: Color.fromRGBO(85, 44, 40, .9),
    900: Color.fromRGBO(85, 44, 40, 1),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salmodiai',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(85, 44, 40, 1),
        accentColor: Color.fromRGBO(167, 152, 148, 1),
        canvasColor: Color.fromRGBO(251, 250, 246, 1),
      ),
      home: Home(),
    );
  }
}
