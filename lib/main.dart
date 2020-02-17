import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Returning Data",
      home: HomeScreen(),
    );
  }
}

// return data from a new screen.

// 1. Define the house screen
// 2. Add a button that launches the selection screen
// 3. Show the selection screen with two buttons
// 4. When a button is tapped, close the selection screen
// 5. Show a snackBar on the home screen with the selection

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Returning Data Demo"),
      ),
      body: Center(child: SelectionButton()),
    );
  }
}

class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigationAndDisplaySelection(context);
      },
      child: Text('pick an option, any option!'),
    );
  }

  _navigationAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SelectionScreen()),
    );

    Scaffold.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text("$result")));
  }
}

class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pick an option'),
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    // pop here with "Yep"...
                    Navigator.pop(context, "Yep!");
                  },
                  child: Text("Yep!"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    // pop here with "Nope"
                    Navigator.pop(context, "Nope.");
                  },
                  child: Text('Nope.'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


