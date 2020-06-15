import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
  
      backgroundColor: Colors.red[100],
      body: Center(
  
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
Image.asset('assets/images/logo.png'),
Text(
  'Samia Alsaleh',
  textAlign: TextAlign.center,
  style: TextStyle(
  fontSize: 16),
),
SizedBox(height: 48,),
            Text(
  'Hello',
  textAlign: TextAlign.center,
  style: TextStyle(fontWeight: FontWeight.bold,
  fontSize: 40),
),Text(
  'Beautiful!',
  textAlign: TextAlign.center,
  style: TextStyle(fontWeight: FontWeight.bold,
  fontSize: 40),
),
SizedBox(height: 48,),

Container(
      margin: const EdgeInsets.only(left: 48, right: 48),
      child: ConstrainedBox(
      
    constraints: const BoxConstraints(minWidth: double.infinity),
    child: RaisedButton(
  
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.red)),
      onPressed: () {},
      color: Colors.red,
      textColor: Colors.white,
      child: Text("Log In",
        style: TextStyle(fontSize: 14)),
        
    ),
),
    ),
SizedBox(height: 36,),
Text(
  'by Samia Alsaleh',
  textAlign: TextAlign.center,
  style: TextStyle(fontStyle: FontStyle.italic,
  fontSize: 16),
),
SizedBox(height: 36,),
Image.asset('assets/images/horizontal-line-50.png'),
          ],
        ),
      ),
    );
  }
}