import 'package:flutter/material.dart';
import 'package:equinox/equinox.dart' as eva;

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return eva.EqListItem(
                onTap: () {},
                icon: eva.EvaIcons.text,
                title: "Eva $index",
                status: eva.EqWidgetStatus.danger,
                subtitle: "Flutter $index",
                padding: EdgeInsets.all(10),
              );
            }),
      ),
    );
  }
}
