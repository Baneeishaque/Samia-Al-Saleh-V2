import 'package:flutter/material.dart';
import 'package:samia_al_saleh/bottom_navigation_bar_helpers.dart';
import 'package:samia_al_saleh/drawer_helpers.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.gamepad,
                  color: Colors.black54,
                ),
                onPressed: () => {_scaffoldKey.currentState.openDrawer()},
              ),
//              Text(
//                'Samia Alsaleh',
//                textAlign: TextAlign.center,
////                style: TextStyle(fontSize: 16),
//              ),
            ]),
        actions: [
          Container(
            margin: const EdgeInsets.all(8),
            child: new Image.asset("assets/images/sharp_api_black_48dp.png"),
          ),
        ],
      ),
      backgroundColor: Colors.red[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      bottomNavigationBar: getBottomNavigationBar(context),
      drawer: getDrawer(context),
    );
  }
}
