import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:samia_al_saleh/json_rpc_helpers.dart';
import 'package:samia_al_saleh/server_end_point.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_color_models/flutter_color_models.dart';

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
      backgroundColor: CmykColor(0.62, 10.98, 14.1, 0.0).toColor(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo_with_name.png'),
//            SizedBox(
//              height: 4,
//            ),
//            Text(
//              'Samia Alsaleh',
//              textAlign: TextAlign.center,
//              style: TextStyle(fontSize: 16),
//            ),
            SizedBox(
              height: 53,
            ),
            Stack(children: <Widget>[
              Image.asset('assets/images/launcher_brush.png'),
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
              )),
            ]),
            SizedBox(
              height: 53,
            ),
            Container(
              margin: const EdgeInsets.only(left: 48, right: 48),
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: double.infinity),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                          color: CmykColor(4.58, 23.58, 18.54, 0.0).toColor())),
                  onPressed: () => {_makePostRequest()},
                  color: CmykColor(4.58, 23.58, 18.54, 0.0).toColor(),
                  textColor: Colors.white,
                  child: Text("Log In",
                      style: TextStyle(fontSize: 14, fontFamily: 'Arial')),
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
      String url = serverAddress + '/web/session/authenticate';
      Map<String, String> headers = {"Content-type": "application/json"};
      String json = generateJsonRpcRequestRowData(
          '{ "db": "samia", "login": "admin", "password": "admin" }');
      Response response = await post(url, headers: headers, body: json);
      int statusCode = response.statusCode;
      print('Status Code : ' + statusCode.toString());
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
