import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  final String title;

  const Register({Key key, this.title}) : super(key: key);
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
String user;
  String password;
  String name;
  String machinecode;
  String tel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ลงทะเบียน"),
      ),
      body: Center(
        child: Column(children: [
          Container(
            child: TextField(
              onChanged: (value) {
                setState(() {
                  user = value;
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_box),
                labelText: 'ชื่อผู้ใช้',
                hintText: 'Enter Username',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            width: 250,
            padding: EdgeInsets.all(16),
          ),
          Container(
            child: TextField(
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.keyboard),
                labelText: 'รหัสผ่าน',
                hintText: 'Enter Password',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            width: 250,
            padding: EdgeInsets.all(16),
          ),

          Container(
            child: TextField(
              onChanged: (value) {
                setState(() {
                  machinecode = value;
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.alarm),
                labelText: 'รหัสตัวเครื่อง',
                hintText: 'รหัสตัวเครื่อง',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            width: 250,
            padding: EdgeInsets.all(16),
          ),

          Container(
            child: TextField(
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.account_box),
                labelText: 'ชื่อ-สกุล ผู้ป่วย',
                hintText: 'ชื่อ-สกุล ผู้ป่วย',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            width: 250,
            padding: EdgeInsets.all(16),
          ),


          Container(
            child: TextField(
              onChanged: (value) {
                setState(() {
                  tel = value;
                });
              },
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                labelText: 'เบอร์โทรศัพท์',
                hintText: 'เบอร์โทรศัพท์',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            width: 250,
            padding: EdgeInsets.all(16),
          ),
          FlatButton(
            //validateTextField(context),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("ตกลง"),
            color: Colors.blueAccent[200],
            textColor: Colors.white,
          ),
        ]),
      ),
    );
  }
}

