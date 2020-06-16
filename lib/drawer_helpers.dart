import 'package:flutter/material.dart';
import 'package:samia_al_saleh/main.dart';

Theme getDrawer(BuildContext context) {
  return Theme(
    data: Theme.of(context).copyWith(
      canvasColor:
          Colors.brown[100], //This will change the drawer background to blue.
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
              Navigator.pushNamed(context, '/cart');
//              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('WishList'.toUpperCase()),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('New Arrivals'.toUpperCase()),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Orders'.toUpperCase()),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Track Your Order'.toUpperCase()),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('About Us'.toUpperCase()),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Contact Us'.toUpperCase()),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Terms & Conditions'.toUpperCase()),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
  );
}
