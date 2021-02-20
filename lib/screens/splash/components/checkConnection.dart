import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CheckConnection extends StatefulWidget {
  static String routeName = "/checkConnection";
  @override
  _CheckConnectionState createState() => _CheckConnectionState();
}

class _CheckConnectionState extends State<CheckConnection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.blueAccent),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "   Loading....",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            SpinKitChasingDots(
              color: Colors.white,
              size: 50,
            ),
          ],
        ),
      ],
    ));
  }
}
