import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class posts_p2 extends StatefulWidget {
  @override
  _posts_p2State createState() => _posts_p2State();
}

class _posts_p2State extends State<posts_p2> {
  Map data;
  List userdata;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  void getdata() async {
    http.Response response =
        await http.get("https://reqres.in/api/users?page=2");
    data = jsonDecode(response.body);
    setState(() {
      userdata = data["data"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userdata == null ? 0 : userdata.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(
                          Icons.person_outline,
                        ),
                        radius: 21.5,
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7),
                      ),
                      Text(
                          userdata[index]["first_name"] +
                              '_' +
                              userdata[index]["last_name"],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))
                    ],
                  ),
                  Row(
                    children: <Widget>[Icon(Icons.menu, color: Colors.black)],
                  ),
                ],
              ),
              elevation: 0,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(userdata[index]["avatar"]),
                    fit: BoxFit.fill),
                //color: Colors.grey
              ),
            ),
            Divider(
              color: Colors.white,
            )
          ],
        );
      },
    );
  }
}
