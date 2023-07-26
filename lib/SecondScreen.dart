import 'dart:math';

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(),
      body: Container(
        // padding: EdgeInsets.only(left: 15,top: 15),
        padding: EdgeInsets.all(20),
        color: Colors.lightGreenAccent,
        child: Column(
          children: [
            Row(
              
              children: [
                Expanded(child:
                Text("My Name is Ansari and welcome to flutter training", style: TextStyle(fontSize: 25),)
                )
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                Text("getting randome value ${myMathFunction()}",
                  style: TextStyle(fontSize: 25, color: Colors.red),)
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                Column(
                  children: [
                    MyText(),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                Image.asset("images/spiderman.png", height: 100, width: 150,)
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                ElevatedButton(
                    onPressed: (){
                      showDialog(
                        barrierDismissible: false,
                          context: context,
                          builder: (ctx){
                        return
                            AlertDialog(
                              title: Text("My Alert Box"),
                              content: Text("Are you fine with this ?"),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.of(ctx).pop();
                                },
                                    child: Text("OK"))
                              ],

                            );
                          });
                    },
                    child: Text("CLICK ME"),)
              ],
            ),
            
          ],
        ),
      ),

    );
  }
}

class MyText extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text("WELCOMe", style: TextStyle(fontSize: 20, color: Colors.cyan),),
    );
  }

}

int myMathFunction(){
  var random = Random();
  var rNumb = random.nextInt(100);
  return rNumb;
}


/*class MyAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Text("SecondScreen"),
    );
  }

}*/
