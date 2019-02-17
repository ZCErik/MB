import 'package:flutter/material.dart';
import 'dart:async';

class ProductPage extends StatelessWidget {
  final String title;
  final String imgUrl;

  //Constructor to receive name, and imgUrl
  ProductPage(this.title, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    //Return scaffold to build a new page
    return WillPopScope(
      //Control when user goes back (false)
      //must return a future
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset(imgUrl),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  padding: EdgeInsets.all(10.00),
                  color: Theme.of(context).accentColor,
                  child: Text("Delete"),
                  onPressed: () => Navigator.pop(context, true),
                )),
          ],
        ),
      ),
    );
  }
}
