import 'package:flutter/material.dart';
import 'home.dart';
import 'register.dart';

class FirstRoute extends StatefulWidget {
  final String title;

  FirstRoute({Key key, this.title}) : super(key: key);
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  String user;
  String pass;
  String machinecode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เข้าสู่ระบบ'),
      ),
      body: Center(
        child: Column(
          children: [
            
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
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink[800]),
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
            ), // ขนานของเส้น //ใช้คุมข้อความ


            Container(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    pass = value;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'รหัสผ่าน',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink[800]),
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

          
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
              child: Text('ตกลง'),
              color: Colors.blue[900],
              textColor: Colors.white,
            ),
          
          FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
              child: Text('ลงทะเบียน'),
              // color: Colors.blue[900],
              textColor: Colors.blue,
            ),
          
          
          
          
          ],
        ),

        // RaisedButton(
        //   child: Text('Open route'),
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => SecondRoute()),
        //     );
        //   },
        // ),
      ),
    );
  }

  void validateTextField(BuildContext context) {
    print(user);
    print(pass);
  }
}

// class FirstRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Route'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('Open route'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => SecondRoute()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class SecondRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Route"),
//       ),
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }
