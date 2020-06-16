import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:samia_al_saleh/bottom_navigation_bar_helpers.dart';
import 'package:samia_al_saleh/drawer_helpers.dart';
import 'package:samia_al_saleh/json_rpc_helpers.dart';
import 'package:samia_al_saleh/main.dart';
import 'package:samia_al_saleh/product_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CategoriesPage extends StatefulWidget {
  CategoriesPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.grey[200],
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            SizedBox(
//              height: 24,
//            ),
//            new Padding(
//              padding: EdgeInsets.only(left: 16),
//              child: new Row(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: <Widget>[
//                  new Image.asset(
//                    "assets/images/sharp_keyboard_backspace_black_48dp.png",
//                    height: 50,
//                    width: 50,
//                  ),
//                ],
//              ),
//            ),
            SizedBox(
              height: 24,
            ),
            new Padding(
              padding: EdgeInsets.only(left: 16),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Category',
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
              crossAxisCount: 2,
              children: <Widget>[
                new GestureDetector(
                  onTap: () =>
                      {_navigateToProducts(0, SamiaApp.categories[0].name)},
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
//                      new Image.asset(
//                        "assets/images/sharp_local_bar_black_48dp.png",
//                      ),
                        new Image.memory(
                          base64Decode(SamiaApp.categories[0].image_512),
                          fit: BoxFit.scaleDown,
                        ),
                        Text(
                          SamiaApp.categories[0].name,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    color: Colors.orange[200],
                  ),
                ),
                new GestureDetector(
                  onTap: () =>
                      {_navigateToProducts(1, SamiaApp.categories[1].name)},
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Image.memory(
                          base64Decode(SamiaApp.categories[1].image_512),
                          width: 100,
                          height: 100,
                        ),
                        Text(
                          SamiaApp.categories[1].name,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    color: Colors.orange[200],
                  ),
                ),
                new GestureDetector(
                  onTap: () =>
                      {_navigateToProducts(2, SamiaApp.categories[2].name)},
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Image.memory(
                          base64Decode(SamiaApp.categories[2].image_512),
                          fit: BoxFit.scaleDown,
                        ),
                        Text(
                          SamiaApp.categories[2].name,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    color: Colors.orange[200],
                  ),
                ),
                new GestureDetector(
                  onTap: () =>
                      {_navigateToProducts(3, SamiaApp.categories[3].name)},
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Image.memory(
                          base64Decode(SamiaApp.categories[3].image_512),
                          fit: BoxFit.scaleDown,
                        ),
                        Text(
                          SamiaApp.categories[3].name,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    color: Colors.orange[200],
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: getBottomNavigationBar(context),
      drawer: getDrawer(context),
    );
  }

  _makePostRequestForProducts(int categoryId) async {
    try {
      String url = 'http://135.181.28.29:8062/apiv1/products/';
      final SharedPreferences prefs = await _prefs;
      Map<String, String> headers = {
        "Content-type": "application/json",
        "Cookie": prefs.getString('sessionIdHeader') ?? '',
      };
      print('Headers : ' + headers.toString());
      String json = generateJsonRpcRequestRowData('{ "category_id": ' +
          categoryId.toString() +
          ', "offset": 0, "limit": 10 }');
      print("JSON : " + json);
      Response response = await post(url, headers: headers, body: json);
      int statusCode = response.statusCode;
      print('Status Code : ' + statusCode.toString());
      String body = response.body;
      print('Response Body : ' + body);

      var productsJson = jsonDecode(body)['result'] as List;
      SamiaApp.products = productsJson
          .map((productJson) => Product.fromJson(productJson))
          .toList();
      SamiaApp.products
          .forEach((element) => print('Category Item : ' + element.toString()));
      Navigator.pushNamed(context, '/products');
    } on Exception catch (exception) {
      print(exception);
    } catch (error) {
      print(error);
    }
  }

  _navigateToProducts(int categoryId, String categoryName) async {
    SamiaApp.categoryName = categoryName;
    _makePostRequestForProducts(categoryId);
  }
}
