import 'package:flutter/material.dart';

Container getBottomNavigationBar(BuildContext context) {
  return Container(
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
      onTap: (index) => {
        if (index == 2) {Navigator.pushNamed(context, '/cart')}
      },
    ),
  );
}
