import 'package:flutter/material.dart';
import './productsMenu.dart';

class ProductAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Manage Products"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.create),
                text: "Create Product",
              ),
              Tab(icon: Icon(Icons.list), text: "My Products")
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Text("Something here"), ProductsMenu()
          ],
        )
      ),
    );
  }
}
