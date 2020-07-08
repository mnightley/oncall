import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oncall/screens/add_report.dart';
import 'package:oncall/screens/add_task.dart';
import 'package:oncall/screens/my_tasks.dart';
import 'package:oncall/screens/homepage.dart';
import 'package:oncall/screens/report_today.dart';
import 'package:oncall/screens/contacts.dart';
import 'package:oncall/screens/report_previous.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFFF5F5F6),
          primaryColorLight: Colors.white,
          primaryColorDark: Color(0xFFc2c2c2),
          backgroundColor: Colors.black,
          scaffoldBackgroundColor: Color(0xFFF5F5F6),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color(0xFFff9800),
            foregroundColor: Colors.black,
          )),
      initialRoute: '/OnCall',
      routes: {
        '/OnCall': (context) => OnCall(),
        '/ReportToday': (context) => ReportToday(),
        '/ReportPrevious': (context) => ReportPrevious(),
        '/MyTasks': (context) => MyTasks(),
        '/Contacts': (context) => Contacts(),
        '/AddReport': (context) => AddReport(),
        '/AddTasks': (context) => AddTasks(),
      },
    );
  }
}

//theme:
//ThemeData(
//textTheme: TextTheme(
//bodyText1: TextStyle(),
//bodyText2: TextStyle(),
//).apply(
//bodyColor: Colors.white,
//displayColor: Colors.white,
//),
//primaryColor: Color(0xFF212121),
//primaryColorLight: Color(0xFF484848),
//primaryColorDark: Color(0xFFc2c2c2),
//backgroundColor: Color(0xFFF5F5F6),
//scaffoldBackgroundColor: Color(0xFF212121),
//floatingActionButtonTheme: FloatingActionButtonThemeData(
//backgroundColor: Color(0xFFff9800),
//foregroundColor: Colors.black,
//)),
