import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter layout demo'),
        ),
        body: Center(
          child: Text("Hello world"),
        ),
      ),
    );
  }
}
