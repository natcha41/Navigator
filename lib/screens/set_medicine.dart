import 'package:flutter/material.dart';
import 'set_up.dart';

class Set_Medicine extends StatefulWidget {
  final String title;

  const Set_Medicine({Key key, this.title}) : super(key: key);

  @override
  _Set_MedicineState createState() => _Set_MedicineState();
}

class _Set_MedicineState extends State<Set_Medicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ตั้งค่าข้อมูลยา'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Set_up()),
                );
              },
              child: Text('ตกลง'),
              color: Colors.blue[900],
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}