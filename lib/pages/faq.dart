import 'package:flutter/material.dart';
import 'dart:async';

class Faq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text("FAQ"),
          ),
          body: Row(
            children: <Widget>[
              Expanded(
                child: Text("Something"),
              ),
            ],
          )),
    );
  }
}
