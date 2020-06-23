import 'package:flutter/material.dart';
import 'package:samia_al_saleh/category_model.dart';
import 'package:samia_al_saleh/login.dart';
import 'package:samia_al_saleh/product_model.dart';

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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
//        '/': (context) => LauncherPage(title: 'Samia Alsaleh Launcher'),
        '/login': (context) => LoginPage(title: 'Samia Alsaleh Product Login'),
//        '/categories': (context) =>
//            CategoriesPage(title: 'Samia Alsaleh Product Categories'),
//        '/products': (context) => ProductsPage(title: 'Samia Alsaleh Products'),
//        '/product': (context) => ProductPage(title: 'Samia Alsaleh Product'),
//        '/cart': (context) => CartPage(title: 'Samia Alsaleh Cart'),
      },
    );
  }
}
