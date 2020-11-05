import 'dart:io';

import 'package:your_flutter_project/app/view/home_view.dart';
import 'package:your_flutter_project/system/page.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return HomeController();
  }

  void mencobaSaja()
  {
    print("OKE TEST");
  }
}

class HomeController extends Controller<HomePage>
{
  final String judul = "Home Page";
  @override
  void initState() {
    widget.mencobaSaja();
    super.initState();
  }

  void mencoba()
  {
    print("ASIYAP");
  }

  @override
  Widget build(BuildContext context) {
    return HomeView(this);
  }
}