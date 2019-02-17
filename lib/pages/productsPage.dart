import 'package:flutter/material.dart';
import '../products_manager.dart';
import './productAdmin.dart';

//StatelessWidget to load page. No need to manage states
class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text("Choose"),
            ),
            ListTile(
              title: Text("Manage Products"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ProductAdmin(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("My Profile"),
              onTap: () {},
            ),
            ListTile(
              title: Text("FAQ"),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: new Image.asset('assets/logo.png', fit: BoxFit.cover),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            child: new Image.asset('assets/mb_tagLine.png'),
          ),
          Expanded(
            child: ProductManager(),
          )
        ],
      ),
    );
  }
}
