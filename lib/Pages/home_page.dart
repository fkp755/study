import 'package:flutter/material.dart';
import '../drawer.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Change me";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
  TextEditingController _nameController = TextEditingController();
  @override
  void initState() {
    super.initState();
     getdata(); //Called to load data directly
  }
  getdata() async{
     var res = await http.get(Uri.parse(url));
     data = jsonDecode(res.body);
     print(data);
     setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("School"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      subtitle: Text("ID: ${data[index]["id"]}"),
                      leading: Image.network(data[index]["url"]),
                    ),
                  );
                },
              itemCount: data.length,
            )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          //getdata(); //called to load data on on click of floating button
          setState(() {});
        },
        child: Icon(Icons.refresh_outlined),
      ),
    );
  }
}
