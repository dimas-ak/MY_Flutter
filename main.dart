import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:unity_flutter/system/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  ServiceRoute.initialRouteSettings((route) async {
    
    // SharedPreferences shared = await SharedPreferences.getInstance();
    // route.baseRoute = shared.containsKey("isLogin") ? "home" : "login";
    
  });
}
