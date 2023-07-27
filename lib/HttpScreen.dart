/*import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpScreen extends StatefulWidget {
  const HttpScreen({Key? key}) : super(key: key);

  @override
  State<HttpScreen> createState() => _HttpScreenState();
}

class _HttpScreenState extends State<HttpScreen> {

  void getData() async{

    var response = await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var jsonData = jsonDecode(response.body);
    print(jsonData);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HttpScreen"),),
      body: Container(
        color: Colors.cyanAccent,
      ),
    );
  }
}*/

//another way of doing it
/*
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpScreen extends StatelessWidget {

  Future<void> fetchData() async {
    final String apiUrl = 'https://jsonplaceholder.typicode.com/users'; // Replace with your API endpoint

    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        // Handle the data - data is typically a list of JSON objects
        print('Data fetched successfully: $data');
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (error) {
      print('Error during HTTP request: $error');
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HTTP Call Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () => fetchData(),
            child: Text('Fetch Data'),
          ),
        ),
      ),
    );
  }
}*/

//Http call with parsing data
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'UserData.dart';

class HttpScreen extends StatefulWidget {
  const HttpScreen({Key? key}) : super(key: key);

  @override
  State<HttpScreen> createState() => _HttpScreenState();
}

class _HttpScreenState extends State<HttpScreen> {

  Future getData() async{
    var response = await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var jsonData = jsonDecode(response.body);
   // print(jsonData);

    List<UserData> users = [];
    for (var i in jsonData){
      UserData ud = UserData(i["id"], i['name'], i['username']);
      users.add(ud);
    }
    print("Number of records are ${users.length}");


    return users;
  }

  @override
  void initState() {
    super.initState();
    getData();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HttpScreen"),),
      body: Container(
        color: Colors.cyanAccent,
      ),
    );
  }


  /*Widget getLongListView(){
    var listItems = getListItems();
    var listView = ListView.builder(itemBuilder: (context, index){
      return ListTile(
        title: Text(listItems[index]),
        onTap: (){
          print(" selected ${listItems[index]}");
        },
      );
    });
    return listView;
  }*/
}
