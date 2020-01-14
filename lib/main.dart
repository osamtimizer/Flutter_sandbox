import 'package:flutter/material.dart';

// Terminology: In Flutter, screens and pages are called routes.
// The remainder of this recipe refers to routes.

// In Android, a route is equivalent to an Activity.
// In iOS, a route is equivalent to a ViewController.
// In Flutter, a route is just a widget.
void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open Route'),
          onPressed: () {
            // Navigate to Second Route when tapped.
            // Navigator.push method adds a Route to the stack of routes managed by Navigator.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      )
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Route'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              // Navigate to First Route when tapped.
              // Navigator.pop method removes current route from the stack of routes.
              Navigator.pop(context);
            },
            child: Text('Go Back!'),
          ),
        )
    );
  }
}
