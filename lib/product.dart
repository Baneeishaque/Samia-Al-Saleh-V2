import 'package:flutter/material.dart';

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
                    'Category Name',
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
              child: new Image.asset(
                  'assets/images/sharp_local_bar_black_48dp.png'),
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
            Text(
              'Product Price',
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
