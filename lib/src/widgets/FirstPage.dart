import 'package:flutter/material.dart';
import 'package:equinox/equinox.dart' as eva;

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: eva.EqCard(
              shape: eva.EqWidgetShape.semiRound,
              statusAppearance: eva.EqCardStatusAppearance.strip,
              status: eva.EqWidgetStatus.primary,
              header: eva.EqText.heading5("Equinox"),
              child: eva.EqText.paragraph1("Eva"),
              footer: eva.EqButton(
                appearance: eva.EqWidgetAppearance.ghost,
                onTap: () {},
                label: eva.EqText.label("Click me"),
              ),
            ),
          ),
        )
      ],
    );
  }
}
