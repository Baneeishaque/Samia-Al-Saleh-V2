import 'package:flutter/material.dart';
import 'package:samia_al_saleh/categories.dart';

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
//      home: LauncherPage(title: 'Samia Alsaleh Launcher'),
//      home: LoginPage(title: 'Samia Alsaleh Product Login'),
      home: CategoriesPage(title: 'Samia Alsaleh Product Categories'),
      debugShowCheckedModeBanner: false,
    );
  }
}
