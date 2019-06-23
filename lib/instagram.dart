import 'package:flutter/material.dart';
import './xpage.dart';
import './search.dart';



class instagram extends StatefulWidget {
  @override
  _instagramState createState() => _instagramState();
}

class _instagramState extends State<instagram> {
  var index0 , index1;
  var currentTab=0 , currentPage , pages;
  @override
  void initState() {
    index0 = x();
    index1 = search();
    pages=[index0 , index1];
    currentPage = index0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: currentPage,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab
          ,onTap: (int index){
          setState(() {
            currentTab = index;
            currentPage = pages[index];
          });
      },
          items:<BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home , color: Colors.black, size: 32,) ,title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.search , color: Colors.black, size: 32,) ,title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.add_box , color: Colors.black, size: 32,) ,title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border , color: Colors.black, size: 32,) ,title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.person , color: Colors.black, size: 32,) ,title: Text('')),
          ]
      ),

    );
  }
}



