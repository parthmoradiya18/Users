import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:users/Model/Model_Users.dart';

void main() {
  runApp(MaterialApp(
    home: Api_ui_Users(),
    debugShowCheckedModeBanner: false,
  ));
}

class Api_ui_Users extends StatefulWidget {
  const Api_ui_Users({Key? key}) : super(key: key);

  @override
  State<Api_ui_Users> createState() => _Api_ui_UsersState();
}

class _Api_ui_UsersState extends State<Api_ui_Users> {
  List l = [];

  get_Api() async {
    var url = Uri.parse('https://dummyjson.com/users');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    Map m = jsonDecode(response.body);
    l = m['users'];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get_Api();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(backgroundColor: Colors.indigo.shade300,centerTitle: true,
              title: Text(
            "Users",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 30,
                color: Colors.purple.shade900),
          )),
          preferredSize: Size(0, 50)),
      backgroundColor: Colors.grey,
      body: ListView.separated(
        itemCount: l.length,
        itemBuilder: (context, index) {
          Users a = Users.fromJson(l[index]);
          return Card(
            color: Colors.indigo[300],
            child: ListTile(
              title: Text(
                "${a.username}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
              subtitle: Text("${a.maidenName}\n${a.phone}"),
              leading: Text(
                "${a.id}",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              trailing: CircleAvatar(
                backgroundImage: NetworkImage("${a.image}"),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.black,
            thickness: 3,
            height: 2,
          );
        },
      ),
    );
  }
}
