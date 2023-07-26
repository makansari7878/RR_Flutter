import 'package:flutter/material.dart';

class AlignItems extends StatelessWidget {
  const AlignItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("alignments"),),
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                    color: Colors.lightGreenAccent,
                    margin: EdgeInsets.all((20)),
                    height: 100,
                    width: 100,
                  ),
              Container(
                color: Colors.red,
                margin: EdgeInsets.all((20)),
                height: 200,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.all((20)),
                height: 300,
                width: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
