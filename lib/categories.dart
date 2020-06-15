import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  CategoriesPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          leading: IconButton(
            icon: Icon(
              Icons.gamepad,
              color: Colors.black54,
            ),
            onPressed: () {},
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
                        new Image.asset(
                          "assets/images/sharp_local_bar_black_48dp.png",
                        ),
                        Text(
                          'Category Name',
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
                        new Image.asset(
                          "assets/images/sharp_local_bar_black_48dp.png",
                        ),
                        Text(
                          'Category Name',
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
                        new Image.asset(
                          "assets/images/sharp_local_bar_black_48dp.png",
                        ),
                        Text(
                          'Category Name',
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
                        new Image.asset(
                          "assets/images/sharp_local_bar_black_48dp.png",
                        ),
                        Text(
                          'Category Name',
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
        ));
  }
}
