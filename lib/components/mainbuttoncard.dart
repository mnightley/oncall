import 'package:flutter/material.dart';

class MainButtonCard extends StatelessWidget {
  MainButtonCard({this.onPress, this.cardIcon, this.cardText});

  final Function onPress;
  final Icon cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 95,
        width: 300,
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
        child: Row(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                  left: 25.0,
                  right: 25.0,
                ),
                child: cardIcon),
            Container(
              color: Theme.of(context).backgroundColor,
              height: 70,
              width: 1,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 25.0,
                left: 25.0,
              ),
              child: Text(
                cardText,
                style: TextStyle(
                  color: Theme.of(context).backgroundColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
