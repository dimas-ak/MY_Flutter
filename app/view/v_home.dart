import 'package:your_flutter_project/app/controller/home_controller.dart';
import 'package:your_flutter_project/system/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends View<HomePage> {

  HomeView(HomePage prop) : super(prop);

  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text(prop.judul),
          ),
          body: FlatButton(onPressed: () {
            // refresh method is equal with setState
            prop.refresh( () {
              prop.mencoba();
            });
          }
          , child: Text('OKE'))
      );
  }
}