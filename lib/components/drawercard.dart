import 'package:flutter/material.dart';

class DrawerCard extends StatelessWidget {
  DrawerCard({this.content});

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: content,
      height: 60,
      width: 304,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.0),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}
