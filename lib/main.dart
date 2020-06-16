import 'package:flutter/material.dart';
import 'package:samia_al_saleh/cart.dart';
import 'package:samia_al_saleh/categories.dart';
import 'package:samia_al_saleh/category_model.dart';
import 'package:samia_al_saleh/launcher.dart';
import 'package:samia_al_saleh/login.dart';
import 'package:samia_al_saleh/product.dart';
import 'package:samia_al_saleh/products.dart';

void main() {
  runApp(SamiaApp());
}

class SamiaApp extends StatelessWidget {
  static List<Category> categories;
  static String username;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Samia Alsaleh',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
