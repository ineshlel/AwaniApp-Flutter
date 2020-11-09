import 'package:flutter/material.dart';
import 'nextPage.dart';



class HelloPage extends StatelessWidget{
  HelloPage();



  
 
   @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
           body: Container(
            //margin: EdgeInsets.all(8.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                
                Image.asset('assets/hellopage.png',
                 height: 400,
                width: 460,
                fit: BoxFit.fitWidth,
                
                 ), 
                 
                 IconButton(
                 icon: Image.asset('assets/icon1.png'),
                 iconSize: 55,
                
                padding: EdgeInsets.only(left: 285,top: 31,right: 35),
                 
                onPressed: () {
                  Navigator.push( context,MaterialPageRoute(builder: (BuildContext context) =>NextPage()),  );
                },
                ),
                Container(
                  padding: EdgeInsets.only(left: 23,top: 20,right: 35),

                child:Text("متخصصون في بيع الاواني المنزلية والاكسسوارات",
                textAlign: TextAlign.right,style:TextStyle(fontSize: 22.0)
                ),
                ),
                

              ],
            ),
           ),
     
        );



}
}