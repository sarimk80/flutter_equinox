import 'package:flutter/material.dart';
import 'package:equinox/equinox.dart' as eva;

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool state=false;
  onTapped(bool status){
    setState(() {
      state=status;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              child: eva.EqButton(
                onTap: () {},
                label: eva.EqText.caption1("Click"),
                size: eva.EqWidgetSize.giant,
                status: eva.EqWidgetStatus.primary,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Container(
              child: eva.EqButton(
                onTap: () {},
                label: eva.EqText.caption1("Click"),
                size: eva.EqWidgetSize.medium,
                status: eva.EqWidgetStatus.success,
                appearance: eva.EqWidgetAppearance.ghost,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Container(
              child: eva.EqButton(
                onTap: () {},
                label: eva.EqText.caption1("Click"),
                size: eva.EqWidgetSize.tiny,
                status: eva.EqWidgetStatus.warning,
                appearance: eva.EqWidgetAppearance.outline,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Container(
              child: eva.EqCheckbox(
                value: true,
                onChanged: (v) {},
                description: "Check Box",
                status: eva.EqWidgetStatus.danger,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Container(
              child: eva.EqProgressBar(
                value: 0.8,
                text: "Loading",
                status: eva.EqWidgetStatus.success,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Container(
              child: eva.EqSpinner(
                status: eva.EqWidgetStatus.danger,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Container(
              child: eva.EqRadio(
                value: true,
                description: "Pakistan",
                status: eva.EqWidgetStatus.info,
                onSelected: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
            ),
            Container(
              child: eva.EqTextField(
                hint: "Enter email",
                icon: eva.EvaIcons.person,
                status: eva.EqWidgetStatus.primary,
                obscureText: false,
              ),
            ),
            Padding(padding: EdgeInsets.all(8),),
            Container(
              child: eva.EqToggle(
                value: state,
                onChanged: onTapped,
                description: "Hello",
                status: eva.EqWidgetStatus.danger,
              ),
            )
          ],
        ),
      ),
    );
  }
}
