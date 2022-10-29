import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled/details_screen.dart';
import 'package:untitled/login_screen.dart';
import 'package:untitled/navigation_service.dart';

class NoteProvider extends ValueNotifier{
  bool success = true;
  NoteProvider(super.value);
  logout(){
    if (!success) {
      //NavigationService.navigateToRoute(const DetailsScreen());
      GlobalNavigator.showAlertDialog('Error has occured during sign out');
    } else {
      NavigationService.navigateToRoute(const LoginScreen());
    }
  }


  login(){
      ScaffoldMessenger.of(navigatorKey.currentState!.context)
                    .showSnackBar(
                  const SnackBar(
                    content: Text('jm'),
                    backgroundColor: Colors.green,
                    //  duration: duration,
                  ),
                 );
    //  scaffoldKey.currentState?.showBottomSheet(
    //         (_) =>  Text('No items left'),
    //       );
  }
}
