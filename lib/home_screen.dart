import 'package:flutter/material.dart';
import 'package:untitled/navigation_service.dart';
import 'package:untitled/note_provider.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late NoteProvider cartItemNotifier;
  @override
  void initState() {
    cartItemNotifier = NoteProvider(bool);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          icon: Icon(Icons.logout),
          onPressed: () {
            cartItemNotifier.logout();
          },
        ),
      ]),
      key: scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                onPressed: () {},
                child: const Text('HOME SCREEN',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    NavigationService.navigateTo('/details');
                  },
                  child: Text(
                    'Home Screen',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        scaffoldKey.currentState?.showBottomSheet(
          (_) => const Text('No items left'),
        );
        //                   IconButton(onPressed: (){
        //                // GlobalNavigator.showAlertDialog('ncncn');
        //  cartItemNotifier.login();
        //               }, icon: Icon(Icons.logout)),
      }),
    );
  }
}
  // ElevatedButton(
          //     child: Text('Show Snackbar using a GlobalKey'),
          //     onPressed: () {
          //     scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
          //         content: Text('Assign a GlobalKey to the Scaffold'),
          //         duration: Duration(seconds: 3),
          //       ));
          //     }),