import 'package:flutter/material.dart';
import 'signin.dart';



class Signin1 extends StatelessWidget{
  Signin1();



  
 DecorationImage _buildBackgroundImage(){

    return  DecorationImage(
              fit:BoxFit.cover,
              //colorFilter: ColorFilter.mode(
                //Colors.black.withOpacity(0.6),BlendMode.dstATop),
            image:AssetImage('assets/appstore.png'),
              );}
   @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
           body: Container(
             decoration: BoxDecoration(
            image:_buildBackgroundImage(),),
            padding: EdgeInsets.all(10.0),
            
            
          
           child: Container(
             
             margin: const EdgeInsets.only(top: 350.0),
             
              decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(25.0),
          topLeft: Radius.circular(25.0)),
          color: Colors.white,
    ),
               child:Center(
               child:Column(
                  children:<Widget> [
                    SizedBox(height: 50),
                    
                   SizedBox(
                     width: 210,
                     child:RaisedButton(
                       
                     child: Row(
                      children: < Widget > [
                        Text('تسجل الدخول عبر الايميل      '),
                        Icon(Icons.message_outlined),],),

                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18.0)),
                      textColor: Colors.white,
                      color: Colors.black,
                      onPressed:() {
                       Navigator.push( context, MaterialPageRoute(builder: (BuildContext context) => Signin() ),);
                       },
                       ),),
                      SizedBox(height: 16),
                      SizedBox(
                     width: 210,
                      child: RaisedButton(
                      child: Row(
                      children: < Widget > [
                         Text('   تسجل الدخول عبر الهاتف  '),
                          Icon(Icons.phone_android),],),
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18.0)),
                       color: Colors.white,
                      onPressed: (){}),),
                      SizedBox(height: 18),
                      SizedBox (
                        width: 210,
                        child :RaisedButton(
                          child: Row(
                      children: < Widget > [
                        Text('تسجل الدخول عبر التويتر    '),
                        Icon(Icons.text_fields),],),
                        shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18.0)),
                      textColor: Colors.black,
                      color: Colors.white,
                      
                      onPressed:() {
                       // Navigator.push( context, MaterialPageRoute(builder: (BuildContext context) => HomePage() ),);
                       }),
                      ),
                      ],
               )
             )
           ),
           ),);
}
}