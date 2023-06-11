import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyClassMate',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
        home: Scaffold(
          backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Login(),    
    )
    );
  }
}

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset("assets/images/m_logo.png"),
      TextField(
        decoration: InputDecoration(labelText: 'Email id'),),
    SizedBox(height: 16.0),
    TextField(
      decoration: InputDecoration(labelText:'Password' ),
    obscureText: true,
    ),
    SizedBox(height:16.0),
ElevatedButton(
    onPressed: () {},
   child: Text('Login'),
)
],
    ),
    );  
    }
}