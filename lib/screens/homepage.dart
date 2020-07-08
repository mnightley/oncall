import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oncall/components/mainbuttoncard.dart';

class OnCall extends StatefulWidget {
  @override
  _OnCallState createState() => _OnCallState();
}

class _OnCallState extends State<OnCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      drawer: NewDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 25.0),
        child: FloatingActionButton.extended(
          elevation: 0.0,
          onPressed: () {},
          label: Text(
            'Add to Report',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      appBar: AppBar(
        leading: Icon(Icons.local_hospital),
        elevation: 10.0,
        title: Text('On Call'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(40.0),
            child: Text(
              'Bienvenido Doctor',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MainButtonCard(
                  onPress: () {
                    setState(() {
                      Navigator.pushNamed(context, '/ReportToday');
                    });
                  },
                  cardText: 'REPORTE ACTUAL',
                  cardIcon: Icon(Icons.textsms),
                ),
                SizedBox(
                  height: 20,
                ),
                MainButtonCard(
                  onPress: () {
                    setState(() {
                      Navigator.pushNamed(context, '/ReportPrevious');
                    });
                  },
                  cardText: 'REPORTES PREVIOS',
                  cardIcon: Icon(Icons.receipt),
                ),
                SizedBox(
                  height: 20,
                ),
                MainButtonCard(
                  onPress: () {
                    setState(() {
                      Navigator.pushNamed(context, '/MyTasks');
                    });
                  },
                  cardIcon: Icon(Icons.check_circle_outline),
                  cardText: 'TAREAS',
                ),
                SizedBox(
                  height: 20,
                ),
                MainButtonCard(
                  onPress: () {
                    setState(() {
                      Navigator.pushNamed(context, '/Contacts');
                    });
                  },
                  cardText: 'CONTACTOS',
                  cardIcon: Icon(Icons.assignment_ind),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
