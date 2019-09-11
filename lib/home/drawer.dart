import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image(
              fit: BoxFit.cover,
              height: 210,
              image: AssetImage('assets/images/drawer-header.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 20),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://avatars2.githubusercontent.com/u/2400215?s=120&v=4'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 20),
              child: Text('Muhammad Furqan', style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 155, left: 20),
              child: Text('furqan.khanzada@gmail.com', style: TextStyle(
                  fontSize: 14,
                  color: Colors.white
              )),
            )
          ],
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.home, color: Theme.of(context).accentColor),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket, color: Theme.of(context).accentColor),
                title: Text('Shop'),
                trailing: Text('New', style: TextStyle(
                    color: Theme.of(context).primaryColor
                )),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/products');
                },
              ),
              ListTile(
                leading: Icon(Icons.category, color: Theme.of(context).accentColor),
                title: Text('Categorise'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/products');
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite, color: Theme.of(context).accentColor),
                title: Text('My Wishlist'),
                trailing: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Text('4',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0
                      )
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/products');
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart, color: Theme.of(context).accentColor),
                title: Text('My Cart'),
                trailing: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Text('2',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0
                      )
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/products');
                },
              ),
              ListTile(
                leading: Icon(Icons.lock, color: Theme.of(context).accentColor),
                title: Text('Login'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/auth');
                },
              )
            ],
          ),
        )
        
      ],
    );
  }
}