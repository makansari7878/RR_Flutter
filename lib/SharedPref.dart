/*
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SharedPref extends StatefulWidget {
  @override
  _SharedPrefState createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  TextEditingController _controller = TextEditingController();
  String _savedText = '';

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  _loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedText = prefs.getString('saved_text') ?? '';
    });
  }

  _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('saved_text', _controller.text);
    _loadSavedData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter text'),
            ),
            ElevatedButton(
              onPressed: _saveData,
              child: Text('Save'),
            ),
            SizedBox(height: 20),
            Text(
              'Saved Text: $_savedText',
              style: TextStyle(fontSize: 20 , color: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}*/
