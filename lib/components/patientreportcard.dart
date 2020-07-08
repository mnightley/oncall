import 'package:flutter/material.dart';

class PatientReportCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 50, left: 15, right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).primaryColorLight,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.0,
              spreadRadius: 6.0,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text('Jane Doe',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                )),
          ),
          Container(
              padding: EdgeInsets.only(
                top: 5.0,
              ),
              child: Text('58 años, Femenina')),
          Container(
              padding: EdgeInsets.only(
                top: 5.0,
              ),
              child: Text('Diagnósticos: Asma, Trastorno Afectivo Bipolar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ))),
          Container(
            padding: EdgeInsets.only(top: 5.0),
            child: Text(
              'Programados:',
              style: (TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '- BHC',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      Text(' - Por sospecha de IVRB.')
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '- Urinalisis',
                        style: TextStyle(color: Colors.yellow[900]),
                      ),
                      Text(' - Por sospecha de IVU')
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '- Evolucion',
                        style: TextStyle(color: Colors.green),
                      ),
                      Expanded(
                        child: Text(
                          ' - Paciente en estado séptico, evaluar Paasdfawef',
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
