import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  ListPage();
  State<StatefulWidget> createState() {
   return _ListPageState();
  }
}

class _ListPageState extends State<ListPage>  {
 @override
  Widget build(BuildContext context) {
      return Scaffold(
       body: 
     
      Container(
        
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(bottom:270),
              child: Column(
                children:< Widget>[
                  Center(child:Text("list")),
                ],
             ),
            ),
          ),
        ),
      ),
   
    );
  }
 
}