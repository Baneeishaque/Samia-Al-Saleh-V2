import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_color_models/flutter_color_models.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:samia_al_saleh/json_rpc_helpers.dart';
import 'package:samia_al_saleh/samia_post_request_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LauncherPage extends StatefulWidget {
  LauncherPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LauncherPageState createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RgbColor(252, 228, 212).toColor(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo_with_name.png'),
            SizedBox(
              height: 45.4,
            ),
            Stack(alignment: Alignment.center, children: <Widget>[
              new Padding(
                padding: EdgeInsets.only(left: 32),
                child: Image.asset('assets/images/launcher_brush.png'),
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Hello',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 88.04,
                        fontFamily: 'Sensations And Qualities'),
                  ),
                  Text(
                    'Beautiful!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 88.04,
                        fontFamily: 'Sensations And Qualities'),
                  ),
                ],
              ),
            ]),
            SizedBox(
              height: 46,
            ),
            Container(
              margin: const EdgeInsets.only(left: 82, right: 82),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.98),
                      side:
                          BorderSide(color: RgbColor(238, 199, 191).toColor())),
                  onPressed: () => {_makePostRequestForSession()},
                  color: RgbColor(238, 199, 191).toColor(),
                  textColor: Colors.white,
                  child: Text("Log In",
                      style:
                          TextStyle(fontSize: 15.56, fontFamily: 'Myriad Pro')),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Image.asset('assets/images/samia_italic.png')
          ],
        ),
      ),
    );
  }

  _makePostRequestForSession() async {
    try {
      Response response = await getJsonRpcPostRequestResponseForSamia(
          '/web/session/authenticate',
          generateJsonRpcRequestRowData(
              '{ "db": "samia", "login": "admin", "password": "admin" }'));
      print('Status Code : ' + response.statusCode.toString());
      Map<String, String> responseHeaders = response.headers;
      print('Response Headers : ' + responseHeaders.toString());
      String body = response.body;
      print('Response Body : ' + body);

      Map<String, dynamic> responseJson = jsonDecode(body);
      print('Response Json : ' + responseJson.toString());

      print('Result Json : ' + responseJson['result'].toString());
      String sessionId = responseJson['result']['session_id'].toString();
      print('Session ID : ' + sessionId);

      String sessionIdHeader = responseHeaders['set-cookie'];
      print('sessionIdHeader : ' + sessionIdHeader);

      showShortToast(sessionId, sessionIdHeader);

      final SharedPreferences prefs = await _prefs;
      prefs
          .setString("sessionIdHeader", responseHeaders['set-cookie'])
          .then((bool success) {
        Navigator.pushNamed(context, '/login');
      }).catchError((bool error, StackTrace stackTrace) {
        print('StackTrace : ' + stackTrace.toString());
      });
    } on Exception catch (exception) {
      print(exception);
    } catch (error) {
      print(error);
    }
  }

  void showShortToast(String sessionId, String sessionIdHeader) {
    Fluttertoast.showToast(
      msg: 'Session ID : ' +
          sessionId +
          " & sessionIdHeader : " +
          sessionIdHeader,
      toastLength: Toast.LENGTH_SHORT,
    );
  }
}
