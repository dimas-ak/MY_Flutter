
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unity_flutter/system/router.dart';

class App extends StatelessWidget {
  final String baseRoute;

  const App({Key key, this.baseRoute}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    print("Base Route : $baseRoute");
    return new MaterialApp(
        //onGenerateRoute: ServiceRoute.onGenerateRoute,
        //initialRoute: '/home',
        initialRoute: baseRoute,
        routes: ServiceRoute.routes()
    );
  }
}