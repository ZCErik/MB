import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

//Products manager is the connecting widgets -> button and image
class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct;

  //Braces to target it by a name
  ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _ProductManager();
  }
}

//Add item title and imgUrl
class _ProductManager extends State<ProductManager> {
  List<Map<String, String>> _products = [];

  //Receive a product name/foto url and add it to products
  void _addProduct(Map<String, String> product) {
    //Must setState to show items
    setState(() {
      _products.add(product);
    });
  }

  //Delete a product
  void _deleteProduct(int index) {
    setState(() {
          _products.removeAt(index);
        });
  }

  //Will be executed when the statement is created
  @override
  void initState() {
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);  
    }
    super.initState();
    
  }

  //Build a widget to show button, margin 10, and Products
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          //Container must have margin, or height
          // margin: EdgeInsets.all(10.0),
          //Pass a reference to the function
          child: ProductControl(_addProduct)),
      //Expanded Container rolls until the end of the page
      Expanded(child: Products(_products, deleteProduct: _deleteProduct))
    ]);
  }
}
