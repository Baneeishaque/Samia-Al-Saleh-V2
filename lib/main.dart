import 'package:flutter/material.dart';
import 'package:samia_al_saleh/launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Samia Alsaleh',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LauncherPage(title: 'Samia Alsaleh Launcher'),
      debugShowCheckedModeBanner: false,
    );
  }
}
