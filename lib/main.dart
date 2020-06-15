import 'package:flutter/material.dart';
import 'package:samia_al_saleh/cart.dart';
import 'package:samia_al_saleh/categories.dart';
import 'package:samia_al_saleh/launcher.dart';
import 'package:samia_al_saleh/login.dart';
import 'package:samia_al_saleh/product.dart';
import 'package:samia_al_saleh/products.dart';

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
//      home: CategoriesPage(title: 'Samia Alsaleh Product Categories'),
//      home: ProductsPage(title: 'Samia Alsaleh Products'),
//      home: ProductPage(title: 'Samia Alsaleh Product'),
//      home: CartPage(title: 'Samia Alsaleh Cart'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => LauncherPage(title: 'Samia Alsaleh Launcher'),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) => LoginPage(title: 'Samia Alsaleh Product Login'),
        '/categories': (context) =>
            CategoriesPage(title: 'Samia Alsaleh Product Categories'),
        '/products': (context) => ProductsPage(title: 'Samia Alsaleh Products'),
        '/product': (context) => ProductPage(title: 'Samia Alsaleh Product'),
        '/cart': (context) => CartPage(title: 'Samia Alsaleh Cart'),
      },
    );
  }
}
