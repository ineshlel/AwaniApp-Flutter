import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  @override
  FavoritePage();
  State<StatefulWidget> createState() {
   return _FavoritePageState();
  }
}

class _FavoritePageState extends State<FavoritePage>  {
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
                  Center(child:Text("favorite")),
                ],
             ),
            ),
          ),
        ),
      ),
   
    );
  }
 
}