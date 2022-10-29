import 'package:flutter/material.dart';
import 'package:untitled/details_screen.dart';
import 'package:untitled/login_screen.dart';
import 'package:untitled/navigation_service.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     navigatorKey: NavigationService.navigationKey,
     //navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const LoginScreen(),
       // '/signup': (BuildContext context) => const SignUpScreen(),
        '/home': (BuildContext context) => const HomeScreen(),
        '/details':(BuildContext context) => DetailsScreen()

      },

    );
  }
}
  final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

//  class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(onPressed: () {
//           scaffoldKey.currentState?.showBottomSheet(
//             (_) => const Text('No items left'),
//           );
//         }),
//       body: Column(mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//       Center(child: ElevatedButton(onPressed: (){
//          NavigationService.navigateTo('/details');
//         // NavigationService.navigateTo('/details');
        
//             //  ScaffoldMessenger.of(navigatorKey.currentState!.context)
//             //         .showSnackBar(
//             //       SnackBar(
//             //         content: Text('jm'),
//             //         backgroundColor: Colors.green,
//             //         //  duration: duration,
//             //       ),
//             //     );
         
//       }, child: Text('Home Screen')))
//     ],),);
//   }
// }

// class NoteProvider extends ChangeNotifier{
//   bool success = true;
//   if(!success){
//   setErrorMessage('Error has occured during sign out');
//   } else {
//   _navigationService.goBack();
//   }
//   }
// }