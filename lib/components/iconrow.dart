import 'package:flutter/material.dart';
import 'iconcard.dart';

class IconRow extends StatelessWidget {
  const IconRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconCard(icon: Icon(Icons.wifi_lock)),
          IconCard(icon: Icon(Icons.home)),
          IconCard(icon: Icon(Icons.call)),
          IconCard(icon: Icon(Icons.calendar_today)),
        ],
      ),
    );
  }
}
