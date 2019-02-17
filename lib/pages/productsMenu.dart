import 'package:flutter/material.dart';
import '../products_manager.dart';

class ProductsMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Row(
          children: <Widget>[
            Expanded(
              child: ProductManager(),
            ),
          ],
        ));
  }
}
