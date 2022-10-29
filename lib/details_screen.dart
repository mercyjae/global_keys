import 'package:flutter/material.dart';
import 'package:untitled/navigation_service.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
      Center(child: ElevatedButton(onPressed: (){
         ScaffoldMessenger.of(navigatorKey.currentState!.context)
                    .showSnackBar(
                  SnackBar(
                    content: Text('jm'),
                    backgroundColor: Colors.green,
                    //  duration: duration,
                  ),
                 );
      }, child: Text('Details screen',
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))))
    ],),);
  }
}


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
class GlobalNavigator {
  static showAlertDialog(String text){
    showDialog(
      barrierDismissible: false,
      context: NavigationService.navigationKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(text),
          actions: <Widget>[
            TextButton(
              onPressed: () { 
                Navigator.pop(context, true);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );}}