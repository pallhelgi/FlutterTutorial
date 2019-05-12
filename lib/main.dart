import 'package:flutter/material.dart';

void main() {
  //flutter reads from main function in main.dart to start the app
  // runApp is imported from material.dart, it takes widget as an argument
  // We create MyApp class widget which then draws the app to the screen
  runApp(MyApp());
}

// void main () => runApp(MyApp()); Is also allowed if the statement is short

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // This is the top most base widget
  // MyApp extends StatelessWidget from the flutter package
  // Because of that build function needs to be implemented
  // It tells you how the base should appear
  // Stateless widget requires us to overrrite the build method
  @override // added later
  Widget build(BuildContext context) {
    // Widget and BuildContex added so they are no longer infered, it's better
    // Build return MaterialApp which is the start for all apps
    // build must always return a widget
    // We can use it to create something on the screen.
    // is a wrapper for the entire app
    // we can tell it what to draw on the screen
    // MaterialApp takes an argument, for example home who requires another widget, scaffold creates an empty page
    // Scaffold takes an argument, AppBar which is the top most bar placement in an app. There we put in the widget Appbar
    // AppBar has the argument option for title (hover over AppBar to see argument options)
    // Title can take Text as argument and Text takes string as argument
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Column(children: [
          Container(
              margin: EdgeInsets.all(10.0), //10.0 pixel edge
              child:
                  RaisedButton(onPressed: () {}, child: Text('Add Product'))),
          Card(
            child: Column(
              children: <Widget>[
                Image.asset('assets/food.jpg'),
                Text('Food Paradise')
              ],
            ),
          )
        ]),
      ),
    );
  }
}
