import 'dart:html';

import 'package:flutter/material.dart';
import 'package:myclassmate/login.dart';
import 'package:path/path.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyClassMate',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Register(),
    );
  }
}

class Register extends StatelessWidget {
  final TextEditingController Name = TextEditingController();
  final TextEditingController Email = TextEditingController();
  final TextEditingController Mobnumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Register'),      
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset("assets/images/m_logo.png"),
            TextField(
              controller: Name,
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            TextField(
              controller: Email,
              decoration: InputDecoration(
                labelText: 'Email id',
              ),
            ),
            TextField(
              controller: Mobnumber,
              decoration: InputDecoration(
                labelText: 'Mobile Number',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
