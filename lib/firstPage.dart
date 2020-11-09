import 'package:flutter/material.dart';



class FirstPage extends StatelessWidget{
  FirstPage();



  
 DecorationImage _buildBackgroundImage(){

    return  DecorationImage(
              fit:BoxFit.cover,
              //colorFilter: ColorFilter.mode(
                //Colors.black.withOpacity(0.6),BlendMode.dstATop),
            image:AssetImage('assets/firstPage.png'),
              );}
   @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
           body: Container(
             decoration: BoxDecoration(
            image:_buildBackgroundImage(),
              ),
           ),
     
        );



}
}