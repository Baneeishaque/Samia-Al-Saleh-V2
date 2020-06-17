import 'package:flutter/material.dart';
import 'package:samia_al_saleh/cart.dart';
import 'package:samia_al_saleh/categories.dart';
import 'package:samia_al_saleh/category_model.dart';
import 'package:samia_al_saleh/launcher.dart';
import 'package:samia_al_saleh/login.dart';
import 'package:samia_al_saleh/product.dart';
import 'package:samia_al_saleh/product_model.dart';
import 'package:samia_al_saleh/products.dart';

void main() {
  runApp(SamiaApp());
}

class SamiaApp extends StatelessWidget {
  static List<Category> categories;
  static List<Product> products;
  static String username, categoryName;
  static Product product;

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
        '/': (context) => LauncherPage(title: 'Samia Alsaleh Launcher'),
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
