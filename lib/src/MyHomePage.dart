import 'package:flutter/material.dart';
import 'package:equinox/equinox.dart' as eva;
import 'package:flutter_equinox/src/widgets/FirstPage.dart';
import 'package:flutter_equinox/src/widgets/SecondPage.dart';
import 'package:flutter_equinox/src/widgets/ThirdPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedItem = 0;
  List<Widget> tabs = [FirstPage(),SecondPage(),ThirdPage()];

  onTabbed(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return eva.EqLayout(
      appBar: eva.EqAppBar(
        title: widget.title,
      ),
      child: tabs[selectedItem],
      bottomTabBar: eva.EqTabBar.bottom(
        defaultSelected: selectedItem,
        onSelect: onTabbed,
        tabs: [
          eva.EqTabData.fromIcon(title: "Home", icon: eva.EvaIcons.home),
          eva.EqTabData.fromIcon(title: "Projects", icon: eva.EvaIcons.archive),
          eva.EqTabData.fromIcon(title: "User", icon: eva.EvaIcons.person)
        ],
      ),
    );
  }
}
