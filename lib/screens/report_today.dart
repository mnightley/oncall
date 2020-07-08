import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:oncall/components/iconcard.dart';
import 'package:oncall/components/patientreportcard.dart';
import 'package:oncall/components/iconrow.dart';

class ReportToday extends StatefulWidget {
  @override
  _ReportTodayState createState() => _ReportTodayState();
}

class _ReportTodayState extends State<ReportToday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        title: Text('Reporte Actual'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Container(
            margin: EdgeInsets.all(20.0),
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
            child: Scrollbar(
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                            top: 40.0,
                            left: 40.0,
                          ),
                          child: Text(
                            'REPORTE',
                            style: TextStyle(
                                fontSize: 60.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 5,
                            left: 40.0,
                            bottom: 5,
                          ),
                          child: Text('COVID 19',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 5,
                            left: 40.0,
                            bottom: 20.0,
                          ),
                          child: Text(
                            '26 de Julio del 2020',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconRow(),
                  Center(
                    child: Container(
                        margin: EdgeInsets.only(
                          top: 30,
                          left: 15,
                          right: 15,
                        ),
                        child: PatientReportCard()),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
