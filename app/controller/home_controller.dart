import 'dart:io';

import 'package:your_flutter_project/app/view/home_view.dart';
import 'package:your_flutter_project/system/page.dart';
import 'package:flutter/cupertino.dart';

class HomeController extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }

  void mencobaSaja()
  {
    print("OKE TEST");
  }
}

class HomePage extends Controller<HomeController>
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