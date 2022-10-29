import 'package:flutter/material.dart';

class NavigationService{
  static GlobalKey<NavigatorState> navigationKey =  GlobalKey<NavigatorState>();

  static Future<dynamic> navigateToReplacement(String _rn){
    return navigationKey.currentState!.pushReplacementNamed(_rn);
  }
  static Future<dynamic> navigateTo(String _rn){
    return navigationKey.currentState!.pushNamed(_rn);
  }
  static Future<dynamic> navigateToRoute(Widget page){
    return navigationKey.currentState!.push(MaterialPageRoute(
      builder: (_) => page,
    ));
  }
  goback(){
    return navigationKey.currentState!.pop();
  }
}
