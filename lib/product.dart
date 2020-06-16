import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:samia_al_saleh/bottom_navigation_bar_helpers.dart';
import 'package:samia_al_saleh/drawer_helpers.dart';
import 'package:samia_al_saleh/main.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leading: IconButton(
          icon: Icon(
            Icons.gamepad,
            color: Colors.black54,
          ),
          onPressed: () => {_scaffoldKey.currentState.openDrawer()},
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(8),
            child: new Image.asset("assets/images/sharp_api_black_48dp.png"),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            new Padding(
              padding: EdgeInsets.only(left: 16),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Image.asset(
                    "assets/images/sharp_keyboard_backspace_black_48dp.png",
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            new Padding(
              padding: EdgeInsets.only(left: 16),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    SamiaApp.categoryName,
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              color: Colors.white,
              child: new Image.memory(
                base64Decode(SamiaApp.product.image_512),
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              SamiaApp.product.name,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Product Sub Category',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              SamiaApp.product.listPrice.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            Divider(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.shopping_cart),
                SizedBox(width: 48),
                Icon(Icons.arrow_upward),
                SizedBox(
                  width: 8,
                ),
                Text('5'),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.arrow_downward),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Product Description',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      bottomNavigationBar: getBottomNavigationBar(context),
      drawer: getDrawer(context),
    );
  }
}
