import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.orangeAccent[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[],
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
          currentIndex: 2,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.black38,
          onTap: (index) {
            if (index == 2) {
              _scaffoldKey.currentState.showBottomSheet((context) => Container(
                    color: Colors.deepOrangeAccent[100],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 48,
                        ),
                        new Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'My Cart',
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
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                child: new Image.asset(
                                    'assets/images/sharp_local_bar_black_48dp.png'),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Product Name'),
                                      Text('Product Sub Category'),
                                    ]),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 16),
                                child: Text('Product Price'),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                color: Colors.white,
                                child: new Image.asset(
                                    'assets/images/sharp_local_bar_black_48dp.png'),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Product Name'),
                                      Text('Product Sub Category'),
                                    ]),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 16),
                                child: Text('Product Price'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Divider(),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text('Total Price'),
                            Text('QAR 100'),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 32, right: 32),
                          child: ConstrainedBox(
                            constraints:
                                const BoxConstraints(minWidth: double.infinity),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.red)),
                              onPressed: () {},
                              color: Colors.red,
                              textColor: Colors.white,
                              child: Text("Checkout",
                                  style: TextStyle(fontSize: 14)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ));
            }
          },
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
