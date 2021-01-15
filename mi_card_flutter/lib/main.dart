import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/stephen thajeb.png'),
              ),
              Text(
                "Stephen Thajeb",
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 25,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text("Junior Software Developer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 2.5,
                    color: Colors.blue.shade100,
                  )),
              SizedBox(
                height: 20.0,
                width: 360,
                child: Divider(
                  color: Colors.blue.shade50,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Sthajeb1@gmail.com',
                    style: TextStyle(
                        color: Colors.blue.shade500,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.web,
                    size: 28,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'stephenthajeb.xyz',
                    style: TextStyle(
                        color: Colors.blue.shade500,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.green),
                  title: Text(
                    "+87781011608",
                    style: TextStyle(
                        color: Colors.blue.shade500,
                        fontSize: 18,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Challenge
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.blue,
//         body: SafeArea(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Container(
//                 color: Colors.red,
//                 width: 100,
//                 height: 300,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     color: Colors.amber,
//                     width: 100,
//                     height: 100,
//                   )
//                 ],
//               ),
//               Container(
//                 color: Colors.blue,
//                 width: 100,
//                 height: 100,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
