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
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Your Email'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            new Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Switch(
                    value: true,
                    onChanged: (value) {},
                  ),
                ),
                Text(
                  'Remember',
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                new Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Log In", style: TextStyle(fontSize: 14)),
                ),
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Text(
              'by Samia Alsaleh',
              textAlign: TextAlign.center,
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
