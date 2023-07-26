import 'package:flutter/material.dart';

import 'AlignItems.dart';
import 'FirstScreen.dart';
import 'ListScreen.dart';
import 'SecondScreen.dart';
import 'ThemeScreen.dart';

void main() {
  runApp(  MyApp()  );
}

// main() => runApp(  MyApp()  );
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: "appName",
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.green,
          fontFamily: 'Georgia',
          scaffoldBackgroundColor: Colors.lime,
          appBarTheme: AppBarTheme(backgroundColor: Colors.brown),
          //text styling
          textTheme: TextTheme(
            displayLarge: TextStyle(fontSize: 62.0, fontWeight: FontWeight.bold, color: Colors.cyan),
            titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyMedium: TextStyle(fontSize: 14.0, ),
          ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.deepOrangeAccent),
        ),
      home: ThemeScreen()
    );

  }
  
}

