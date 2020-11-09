import 'package:flutter/material.dart';
import 'logorsignPage.dart';


class OtherPage extends StatelessWidget{
  OtherPage();



  
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
           body: Container(
            //margin: EdgeInsets.all(8.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                
                Image.asset('assets/otherpage.png',
                 height: 400,
                width: 460,
                fit: BoxFit.fitWidth,
                
                 ), 
                 
                 IconButton(
                 icon: Image.asset('assets/icon1.png'),
                 iconSize: 55,
                
                padding: EdgeInsets.only(left: 285,top: 31,right: 35),
                 
                onPressed: () {
                  Navigator.push( context,MaterialPageRoute(builder: (BuildContext context) =>LogOrSignPage()),  );
                },
                ),
                Container(
                  padding: EdgeInsets.only(left: 90,top: 20),

                child:Text("و يضفون الجمال على اطباقك",
                textAlign: TextAlign.right,style:TextStyle(fontSize: 22.0)
                ),
                ),
                

              ],
            ),
           ),
     
        );



}
}