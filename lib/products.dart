import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:samia_al_saleh/bottom_navigation_bar_helpers.dart';
import 'package:samia_al_saleh/drawer_helpers.dart';
import 'package:samia_al_saleh/main.dart';

class ProductsPage extends StatefulWidget {
  ProductsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
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
              new Expanded(
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: MediaQuery.of(context).size.height / 1000,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new GestureDetector(
                              onTap: () => {_navigateToProductPage(0)},
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      color: Colors.white,
                                      child: new Image.memory(
                                        base64Decode(
                                            SamiaApp.products[0].image_512),
                                        height: 100,
                                        width: 100,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      SamiaApp.products[0].name,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 14),
                                    ),
//                                    Text(
//                                      'Product Sub Category',
//                                      textAlign: TextAlign.center,
//                                      style: TextStyle(fontSize: 16),
//                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          SamiaApp.products[0].listPrice
                                              .toString(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        Spacer(),
                                        Icon(Icons.favorite_border)
                                      ],
                                    ),
                                  ],
                                ),
                                color: Colors.orange[200],
                              ),
                            ),

//                Container(
//                  padding: const EdgeInsets.all(8),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      Container(
//                        color: Colors.white,
//                        child: new Image.asset(
//                          "assets/images/sharp_local_bar_black_48dp.png",
//                        ),
//                      ),
//                      SizedBox(
//                        height: 16,
//                      ),
//                      Text(
//                        SamiaApp.products[1].name,
//                        textAlign: TextAlign.center,
//                        style: TextStyle(fontSize: 16),
//                      ),
//                      Text(
//                        'Product Sub Category',
//                        textAlign: TextAlign.center,
//                        style: TextStyle(fontSize: 16),
//                      ),
//                      Row(
//                        mainAxisSize: MainAxisSize.min,
//                        children: <Widget>[
//                          Text(
//                            SamiaApp.products[1].listPrice.toString(),
//                            textAlign: TextAlign.center,
//                            style: TextStyle(fontSize: 16),
//                          ),
//                          Spacer(),
//                          Icon(Icons.favorite_border)
//                        ],
//                      ),
//                    ],
//                  ),
//                ),
//                Container(
//                  padding: const EdgeInsets.all(8),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      Container(
//                        color: Colors.white,
//                        child: new Image.asset(
//                          "assets/images/sharp_local_bar_black_48dp.png",
//                        ),
//                      ),
//                      SizedBox(
//                        height: 16,
//                      ),
//                      Text(
//                        SamiaApp.products[2].name,
//                        textAlign: TextAlign.center,
//                        style: TextStyle(fontSize: 16),
//                      ),
//                      Text(
//                        'Product Sub Category',
//                        textAlign: TextAlign.center,
//                        style: TextStyle(fontSize: 16),
//                      ),
//                      Row(
//                        mainAxisSize: MainAxisSize.min,
//                        children: <Widget>[
//                          Text(
//                            SamiaApp.products[2].listPrice.toString(),
//                            textAlign: TextAlign.center,
//                            style: TextStyle(fontSize: 16),
//                          ),
//                          Spacer(),
//                          Icon(Icons.favorite_border)
//                        ],
//                      ),
//                    ],
//                  ),
//                ),
//                Container(
//                  padding: const EdgeInsets.all(8),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      Container(
//                        color: Colors.white,
//                        child: new Image.asset(
//                          "assets/images/sharp_local_bar_black_48dp.png",
//                        ),
//                      ),
//                      SizedBox(
//                        height: 16,
//                      ),
//                      Text(
//                        SamiaApp.products[3].name,
//                        textAlign: TextAlign.center,
//                        style: TextStyle(fontSize: 16),
//                      ),
//                      Text(
//                        'Product Sub Category',
//                        textAlign: TextAlign.center,
//                        style: TextStyle(fontSize: 16),
//                      ),
//                      Row(
//                        mainAxisSize: MainAxisSize.min,
//                        children: <Widget>[
//                          Text(
//                            SamiaApp.products[3].listPrice.toString(),
//                            textAlign: TextAlign.center,
//                            style: TextStyle(fontSize: 16),
//                          ),
//                          Spacer(),
//                          Icon(Icons.favorite_border)
//                        ],
//                      ),
//                    ],
//                  ),
//                ),
                          ],
                        )),
                  ],
                ),
              ),
            ]),
      ),
      bottomNavigationBar: getBottomNavigationBar(context),
      drawer: getDrawer(context),
    );
  }

  _navigateToProductPage(int productPosition) {
    SamiaApp.product = SamiaApp.products[productPosition];
    Navigator.pushNamed(context, '/product');
  }
}
