import 'package:flutter/material.dart';
import './home.dart';





class x extends StatefulWidget {
  @override
  _xState createState() => _xState();
}

class _xState extends State<x> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Instagram' , style:
        TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        leading: Icon(Icons.camera_alt,color: Colors.black),
        actions: <Widget>[
          Icon(Icons.live_tv,color: Colors.black),
          Padding(padding:EdgeInsets.only(right: 23)),
          Icon(Icons.near_me,color: Colors.black),
        ],
        elevation: 1 ,
      ),
      body: posts_p2(),
    );
  }
}