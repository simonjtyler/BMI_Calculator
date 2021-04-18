import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Icon(
            this.icon,
            size: 80,
          ),
        ),
        Text(
          this.label,
          style: labelTextStyle,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
