import 'package:flutter/material.dart';
import 'package:rr_one_flutter/FirstScreen.dart';
import 'package:rr_one_flutter/HttpDemo.dart';
import 'package:rr_one_flutter/ListScreen.dart';
import 'package:rr_one_flutter/SecondScreen.dart';


class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Tab View'),

        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.blue,
                    indicatorColor: Colors.red,
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arial',
                        fontSize: 20.0),
                    tabs: [
                      Tab(text: "Network"),
                      Tab(text: "First"),
                      Tab(text: "Second"),
                    ]),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: [
                      Container(
                        child: HomePage(),),
                      Container(
                        child: FirstScreen(),),
                      Container(
                        child: SecondScreen(),),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}