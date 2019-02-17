import 'package:flutter/material.dart';
import './pages/faq.dart';

//Creates a Button to Add Products
class ProductControl extends StatelessWidget {
  //final Function must hold a reference to a funcion. CANNOT CHANGE IT
  final Function addProduct;
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    //RaisedButton to show up a button.
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            addProduct(
                {'title': 'Magic Brownie', 'image': 'assets/mBrownie.jpg'});
            addProduct({
              'title': 'Magic Cheese Balls',
              'image': 'assets/MagicCheeseBalls.jpeg'
            });
            addProduct(
                {'title': 'Magic Bacon Tart', 'image': 'assets/mTart.jpg'});
            addProduct({
              'title': 'Mini Honey Cake',
              'image': 'assets/mCheeseBalls.jpg'
            });
            addProduct({
              'title': 'Almond Butter Cup',
              'image': 'assets/butterCup.jpg'
            });
          },
          child: Text('Show Products'),
        ),
        FlatButton(
          child: Text("More Information..."),
          onPressed: ()  {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Faq(),
              )
            );
          },
        )
      ],
    );
  }
}
