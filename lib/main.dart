import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Snackbar',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter SnackBar'),
        ),
        body: SnackbarPage(),
      ),
    );
  }
}

class SnackbarPage extends StatelessWidget {
  const SnackbarPage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text(
              'Hi, this is a SnackBar!',
              // style: TextStyle(color: Colors.black),
            ),
            action: SnackBarAction(
              label: 'Close',
              onPressed: () {
                // No code, only warning.
              },
            ),
            backgroundColor: Colors.grey,
            duration: Duration(seconds: 1),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 50),
            elevation: 5,
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}
