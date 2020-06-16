import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:samia_al_saleh/category_model.dart';
import 'package:samia_al_saleh/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  TextEditingController emailController;
  TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = new TextEditingController(text: 'pvramsad@gmail.com');
    passwordController = new TextEditingController(text: 'Asdfghjkl!123');
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/sharp_api_black_48dp.png'),
            SizedBox(
              height: 4,
            ),
            Text(
              'Samia Alsaleh',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              margin: const EdgeInsets.only(left: 32, right: 32),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: 'Your Email'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 32, right: 32),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: TextFormField(
                  controller: passwordController,
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
                  padding: const EdgeInsets.only(left: 32.0),
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
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: const EdgeInsets.only(left: 32, right: 32),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () => {_makePostRequest()},
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

  _makePostRequest() async {
    try {
      String url = 'http://135.181.28.29:8062/apiv1/login';
      final SharedPreferences prefs = await _prefs;
      Map<String, String> headers = {
        "Content-type": "application/json",
        "Cookie": prefs.getString('sessionIdHeader') ?? '',
      };
      print('Headers : ' + headers.toString());
      String json = '{"json": 2, "params": { "email":"' +
          emailController.text +
          '", "password":"' +
          passwordController.text +
          '" }}';
      print("JSON : " + json);
      Response response = await post(url, headers: headers, body: json);
      int statusCode = response.statusCode;
      print('Status Code : ' + statusCode.toString());
      String body = response.body;
      print('Response Body : ' + body);

      Map<String, dynamic> responseJson = jsonDecode(body);
      print('Response Json : ' + responseJson.toString());

      bool responseStatus = responseJson['result']['status'];
      if (responseStatus) {
        SamiaApp.username = responseJson['result']['name'].toString();
        showShortToast('Welcome ' + responseJson['result']['name']);
        _makePostRequestForCategory();
      } else {
        showShortToast("Error : " + responseJson['result']['error']);
        print("Error : " + responseJson['result']['error']);
      }
    } on Exception catch (exception) {
      print(exception);
    } catch (error) {
      print(error);
    }
  }

  _makePostRequestForCategory() async {
    try {
      String url = 'http://135.181.28.29:8062/apiv1/category';
      final SharedPreferences prefs = await _prefs;
      Map<String, String> headers = {
        "Content-type": "application/json",
        "Cookie": prefs.getString('sessionIdHeader') ?? '',
      };
      print('Headers : ' + headers.toString());
      String json = '{}';
      print("JSON : " + json);
      Response response = await post(url, headers: headers, body: json);
      int statusCode = response.statusCode;
      print('Status Code : ' + statusCode.toString());
      String body = response.body;
      print('Response Body : ' + body);

      var categoriesJson = jsonDecode(body)['result'] as List;
      SamiaApp.categories =
          categoriesJson.map((tagJson) => Category.fromJson(tagJson)).toList();
      SamiaApp.categories
          .forEach((element) => print('Category Item : ' + element.toString()));
      Navigator.pushNamed(context, '/categories');
    } on Exception catch (exception) {
      print(exception);
    } catch (error) {
      print(error);
    }
  }

  void showShortToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
    );
  }
}
