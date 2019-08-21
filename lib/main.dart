import 'package:flutter/material.dart';
import 'package:flutter_equinox/src/MyHomePage.dart';
import 'package:equinox/equinox.dart' as eva;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return eva.EquinoxApp(
      title: "Eva",
      theme: eva.EqThemes.defaultLightTheme,
      home: MyHomePage(
        title: 'Flutter Equinox',
      ),
    );
  }
}
