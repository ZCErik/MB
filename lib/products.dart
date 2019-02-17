import 'package:flutter/material.dart';
import './pages/productPage.dart';

// Render a list of products
class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;
  //[] Optional arguments
  Products(this.products, {this.deleteProduct});

  //Widget to return a card -> card is an object
  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      //Use column when not scrolling
      child: Column(children: <Widget>[
        Image.asset(products[index]['image']),
        Text(products[index]['title']),
        //add multilpe buttons side by side
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("Details"),
              onPressed: () => Navigator.push<bool>(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductPage(
                          products[index]['title'], products[index]['image']),
                    ),
                  ).then((bool onValue) {
                    if (onValue) {
                      deleteProduct(index);
                    }
                  }),
            )
          ],
        )
      ]),
    );
  }

  //Render a card when you needed
  //-> Good when adding many elements
  //MUST have itemBuilder(BuildContext) and
  //AND itemCount
  Widget _buildProductList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        //pass by reference to be executed when called
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      //Returns empty container
      //productCard = Container();
      productCard = Center(child: Text("Magic Baker uses an unique Brasilian cuisine based on a Canadian love for cannabis. With amazing space cakes and sweets Magic Baker bakes magic!", textAlign: TextAlign.center,));
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}