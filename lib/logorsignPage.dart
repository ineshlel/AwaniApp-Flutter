import 'package:flutter/material.dart';
import 'signin1.dart';
import 'signupPage.dart';



class LogOrSignPage extends StatelessWidget{
  LogOrSignPage();



  
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
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18.0)),
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('سجل الدخول'),
                      onPressed:() {
                       Navigator.push( context, MaterialPageRoute(builder: (BuildContext context) => Signin1() ),);
                       },
                 ),),
                      
                       SizedBox(height: 16),
                    FlatButton (
                      child: Text('ليس لديك حساب؟ انشاء حساب جديد'),
                      onPressed: (){
                         Navigator.push( context, MaterialPageRoute(builder: (BuildContext context) => Signup() ),);

                      }),
                      SizedBox(height: 18),
                      SizedBox (
                        width: 210,
                        
                        child :RaisedButton(
                        shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18.0)),
                      textColor: Colors.black,
                      color: Colors.white,
                      child: Text('الدخول كزائر'),
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