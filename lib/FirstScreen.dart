import 'package:flutter/material.dart';


class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Main Screen"), backgroundColor: Colors.limeAccent,),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple, Colors.lightGreenAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: Center(
          child: Text("Hello World", style: TextStyle(
            fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold,
          ),),
        ),
      ),
    );
  }

}
/*
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black26,
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(color: Colors.blue,
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 200,),
                Container(color: Colors.amberAccent,
                  margin: EdgeInsets.all(10),
                  width: 100,
                  height: 300,)

              ],
            )

        )
    );
  }
}*/
