import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

Container getBottomNavigationBar(BuildContext context) {
  return Container(
    child: BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
//          icon: Icon(OMIcons.home),
          icon: Icon(Icons.home),
//          activeIcon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
//          icon: Icon(OMIcons.search),
          icon: Icon(Icons.search),
//          activeIcon: Icon(Icons.search),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
//          icon: Icon(OMIcons.shoppingCart),
          icon: Icon(Icons.shopping_cart),
//          activeIcon: Icon(Icons.shopping_cart),
          title: Text('Cart'),
        ),
        BottomNavigationBarItem(
//          icon: Icon(OMIcons.favorite),
          icon: Icon(Icons.favorite),
//          activeIcon: Icon(Icons.favorite),
          title: Text('Favourite'),
        ),
        BottomNavigationBarItem(
//          icon: Icon(OMIcons.person),
          icon: Icon(Icons.person),
//          activeIcon: Icon(Icons.person),
          title: Text('Person'),
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
