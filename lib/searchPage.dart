import 'package:flutter/material.dart';
import 'buyPage.dart';
import 'homePage.dart';
import 'favoritePage.dart';
import 'tablePage.dart';
import 'listPage.dart';



class Search extends StatefulWidget {
  @override
  Search();
  State<StatefulWidget> createState() {
   return _SearchState();
  }
}

class _SearchState extends State<Search> {
  
  int _currentindex=0;
 final tabs=[
              new HomePage(),
              new FavoritePage(),
               new BuyPage(),
               new TablePage(),
               new ListPage(),
  ];
  
  
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      
      body: 
      
      tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
       

       currentIndex: _currentindex ,
       //currentIndex: 4,
        type: BottomNavigationBarType.fixed,
        
        backgroundColor: Colors.white,
        //fixedColor: Color.fromARGB(200, 153, 0, 94),
        fixedColor: Color.fromRGBO(153, 0, 94,1),
        
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("___"),
            backgroundColor: Colors.grey,
           ),
           BottomNavigationBarItem(
            icon: Icon(Icons.table_rows_outlined),
            title: Text("___"),
            backgroundColor: Colors.grey,
           ),
           BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            title: Text("___"),
            backgroundColor: Colors.grey,
           ),
           BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("___"),
            backgroundColor: Colors.grey,
           ),
           BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("___"),
            backgroundColor: Colors.grey,
           ),
           ],
          onTap: (index){
          setState(() {
            _currentindex=index;
          });
        },
        ),
        
    );
  }
 
}