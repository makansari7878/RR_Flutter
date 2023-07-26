import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View.."),),
      body: Container(
      child: getLongListView(),
      )
    );
  }

 Widget getListView(){
    var listview = ListView(
      children: [
        ListTile(
          leading: Icon(Icons.accessibility),
          title: Text("INDIA"),
          subtitle: Text("Asian"),
          trailing: Icon(Icons.access_alarm),
          onTap: (){
            print("you clicked");
          },
        ),
        ListTile(
          leading: Icon(Icons.accessibility),
          title: Text("SOUTH AFRICA"),
          subtitle: Text("African"),
          trailing: Icon(Icons.access_alarm),
          onTap: (){
            print("you clicked");
          },
        ),
        ListTile(
          leading: Icon(Icons.accessibility),
          title: Text("Australia"),
          subtitle: Text("Australian"),
          trailing: Icon(Icons.access_alarm),
          onTap: (){
            print("you clicked");
          },
        ),
      ],
    );
    return listview;
  }

  List<String> getListItems(){
    var items = List<String>.generate(100, (counter) => "item is  $counter");
    return items;
  }

  Widget getLongListView(){
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
  }
}
