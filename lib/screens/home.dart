import 'package:flutter/material.dart';
import 'set_medicine.dart';
import 'information.dart';

class SecondRoute extends StatefulWidget {
  final String title;

  const SecondRoute({Key key, this.title}) : super(key: key);
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าหลัก'),
      ),
       body: Center(
        child: Column(
          children: [
        Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.settings, color: Colors.black),
                RaisedButton(
                  onPressed: () {
                    //validateTextField(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Set_Medicine()),
                    );
                  },
                  child: Text("ตั้งค่าข้อมูลยา",),
                  textColor: Colors.black,
                  // fontSize:20.0,
                ),
              ],
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.archive, color: Colors.black), 
                RaisedButton(
                  onPressed: () {
                    //validateTextField(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Information()),
                    );
                  },
                  child: Text("ข้อมูลการทานยา",),
                  textColor: Colors.black,
                  // fontSize:20.0,
                ),
              ],
            ),
        ],
      )),
    );
  }
}