import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTap;
  final bool expanded;
  final int flex;

  ReusableCard(
      {this.child,
      @required this.color,
      this.onTap,
      this.expanded = true,
      this.flex = 1});

  @override
  Widget build(BuildContext context) {
    Widget card = Container(
        child: child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10.0),
        ));
    if (onTap != null) card = GestureDetector(onTap: onTap, child: card);
    if (expanded) card = Expanded(child: card, flex: flex);
    return card;
  }
}
