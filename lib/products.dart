import 'package:flutter/material.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
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
                    'Category Name',
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
                      Container(
                        color: Colors.white,
                        child: new Image.asset(
                          "assets/images/sharp_local_bar_black_48dp.png",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Product Name',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Product Sub Category',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Product Price',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Icon(Icons.favorite_border)
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        child: new Image.asset(
                          "assets/images/sharp_local_bar_black_48dp.png",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Product Name',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Product Sub Category',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Product Price',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Icon(Icons.favorite_border)
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        child: new Image.asset(
                          "assets/images/sharp_local_bar_black_48dp.png",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Product Name',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Product Sub Category',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Product Price',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Icon(Icons.favorite_border)
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        child: new Image.asset(
                          "assets/images/sharp_local_bar_black_48dp.png",
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Product Name',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Product Sub Category',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Product Price',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16),
                          ),
                          Spacer(),
                          Icon(Icons.favorite_border)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8),
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
                      Text('User'),
                    ]),
                decoration: BoxDecoration(
                  color: Colors.deepOrange[300],
                ),
              ),
              new ExpansionTile(
                title: Text("Products"),
                children: <Widget>[
                  ListTile(
                    title: Text('Products1'.toUpperCase()),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Products2'.toUpperCase()),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Products3'.toUpperCase()),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Products4'.toUpperCase()),
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
}
