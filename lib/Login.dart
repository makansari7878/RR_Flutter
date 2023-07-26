import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }

}
class LoginState extends State<Login>{
  String username = "";
  String password = "";
  TextEditingController passwordTextField = TextEditingController();
  processText(){
    setState(() {
      password = passwordTextField.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Login Screen"),),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: TextField(
                  onChanged: (String inputText){
                    setState(() {
                      username = inputText;
                    });
                  },
                ),)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                    child: TextField(controller: passwordTextField,),
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                ElevatedButton(onPressed:processText, child: Text("CLICK ME")),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Text("password is $password", style: TextStyle(fontSize: 20),)
              ],
            ),
          ],
        ),
      ),
    );
  }

}