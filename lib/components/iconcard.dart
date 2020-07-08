import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  IconCard({this.icon});

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      child: icon,
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Theme.of(context).primaryColorLight,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.0,
              spreadRadius: 6.0,
            )
          ]),
    );
  }
}
