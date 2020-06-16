import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:samia_al_saleh/category_model.dart';
import 'package:samia_al_saleh/main.dart';
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
                    Container(
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
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Image.memory(
                            base64Decode(SamiaApp.categories[1].image_512),
                            fit: BoxFit.scaleDown,
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
                    Container(
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
                    Container(
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
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Home'),
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.black38,
          onTap: (index) {},
        ),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors
              .brown[100], //This will change the drawer background to blue.
          //other styles
        ),
        child: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Image.asset('assets/images/sharp_api_black_48dp.png'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(SamiaApp.username),
                    ]),
                decoration: BoxDecoration(
                  color: Colors.deepOrange[300],
                ),
              ),
              new ExpansionTile(
                title: Text("Products".toUpperCase()),
                children: <Widget>[
                  ListTile(
                    title: Text(SamiaApp.categories[0].name.toUpperCase()),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(SamiaApp.categories[1].name.toUpperCase()),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(SamiaApp.categories[2].name.toUpperCase()),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(SamiaApp.categories[3].name.toUpperCase()),
                    onTap: () {},
                  ),
                ],
              ),
              Divider(),
              ListTile(
                title: Text('Cart'.toUpperCase()),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('WishList'.toUpperCase()),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('New Arrivals'.toUpperCase()),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('Orders'.toUpperCase()),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('Track Your Order'.toUpperCase()),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('About Us'.toUpperCase()),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('Contact Us'.toUpperCase()),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              Divider(),
              ListTile(
                title: Text('Terms & Conditions'.toUpperCase()),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _makePostRequestForCategory() async {
    try {
      String url = 'http://135.181.28.29:8062/apiv1/category';
      final SharedPreferences prefs = await _prefs;
      Map<String, String> headers = {
        "Content-type": "application/json",
        "Cookie": prefs.getString('sessionIdHeader') ?? '',
      };
      print('Headers : ' + headers.toString());
      String json = '{}';
      print("JSON : " + json);
      Response response = await post(url, headers: headers, body: json);
      int statusCode = response.statusCode;
      print('Status Code : ' + statusCode.toString());
      String body = response.body;
      print('Response Body : ' + body);

      var categoriesJson = jsonDecode(body)['result'] as List;
      SamiaApp.categories =
          categoriesJson.map((tagJson) => Category.fromJson(tagJson)).toList();
      SamiaApp.categories
          .forEach((element) => print('Category Item : ' + element.toString()));
//      Navigator.pushNamed(context, '/categories');
    } on Exception catch (exception) {
      print(exception);
    } catch (error) {
      print(error);
    }
  }
}
