import 'package:flutter/material.dart';


class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nav Screen"),),
      body: Container(
        color: Colors.lightGreenAccent,
      ),
    );
  }
}
