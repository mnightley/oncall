import 'package:flutter/material.dart';
import 'drawercard.dart';

class NewDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 15.0,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Container(
                child: CircleAvatar(
//                  foregroundColor: Colors.white,
//                  backgroundColor: Colors.white,
                    ),
              ),
              decoration:
                  BoxDecoration(color: Theme.of(context).primaryColorDark),
            ),
            Container(
              color: Color(0xFF009faf),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  DrawerCard(
                    content: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(Icons.home),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text('Página Princial')
                      ],
                    ),
                  ),
                  DrawerCard(
                    content: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(Icons.receipt),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text('Reporte del Día')
                      ],
                    ),
                  ),
                  DrawerCard(
                    content: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(Icons.wb_sunny),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text('Reportes Previos')
                      ],
                    ),
                  ),
                  DrawerCard(
                    content: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(Icons.check_circle_outline),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text('To - Do')
                      ],
                    ),
                  ),
                  DrawerCard(
                    content: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(Icons.add_to_home_screen),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text('Contactos')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
