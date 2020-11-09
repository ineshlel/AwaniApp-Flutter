

import 'package:flutter/material.dart';
import 'alertdialog2.dart';

class Pay extends StatefulWidget {
  @override
  Pay();
  State<StatefulWidget> createState() {
   return _PayState();
  }
}

class _PayState extends State<Pay>  {


  Container _builMyTextField(String text1){
    return  Container(child:Column(children: <Widget>[
         Container(
   padding: EdgeInsets.only(left: 250),
  // padding: EdgeInsets.only(right: 10),
                             child:Text(text1,
                             textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 15,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),
    )),
      Container(
                 width: 350,
                 //height: 40,
                padding: EdgeInsets.only(left: 190),
                  
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                   //color: Color.fromRGBO(247, 249, 252,2),
                  color: Colors.grey[50],
                     child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          //filled: true,
                          
                        
                        ),
                      ), ) ,
    ],)
             
                       )   ;
  }
  Container _buildMySmallTextField(String mytext){
    return Container(child:Column(children: <Widget>[
         Container(
    padding: EdgeInsets.only(left: 80),
                             child:Text(mytext,
                           
                     style: TextStyle(fontSize: 15,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),
    )),
      Container(
                 width: 150,
                 //height: 40,
              
               padding: EdgeInsets.only(right: 20),
                  
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                   //color: Color.fromRGBO(247, 249, 252,2),
                  color: Colors.grey[50],
                     child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          //filled: true,
                          
                        
                        ),
                      ), ) ,
    ],)
             
                       )   
    ;
  }
 
  Widget _buildAcceptSwitch() {
    return SwitchListTile(
      value: true,
      //Color activeColor,
      activeColor: Colors.grey[300],
      
      onChanged: (bool value) {
        setState(() {
         // _formData['acceptTerms'] = value;
        });
      },
      title: Text('حفظ طريقة الدفع',style: TextStyle(fontSize: 15,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700,),textAlign: TextAlign.right,),
    );
  }


   
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
                   IconButton(icon: Image.asset('assets/close.png'),
                 padding: EdgeInsets.only(left:300,top: 10),
                 onPressed:(){}),
                 Container(
                   margin: EdgeInsets.only(left:40),
                   child:Row(children: <Widget>[
                     Container(
                       padding: EdgeInsets.only(top:25),
                       child: Column(children: <Widget>[
                     Image.asset('assets/smalltick.png'),
                     SizedBox(height:10),
                     Text("الدفع"),
                     ],),),
                SizedBox(width: 100,
                      child :Divider( color: Colors.black,thickness: 2,) ,),
              
                     Container(
                       padding: EdgeInsets.only(top:25),
                       child: Column(children: <Widget>[
                     Image.asset('assets/smalltick.png'),
                     SizedBox(height:10),
                     Text("الشحن"),
                     
                     ],),),
                     SizedBox(width: 100,
                      child :Divider( color: Colors.black,thickness: 2,) ,),
                     Container(
                       padding: EdgeInsets.only(top:25),
                       child: Column(children: <Widget>[
                     Image.asset('assets/smalltick.png'),
                     SizedBox(height:10),
                     Text("السلة"),
                     
                     ],),),
                     
                   ],),
                   ),
                   SizedBox(height:30),
           
             
                 
        Container(
                  height: 900,
                 // padding: EdgeInsets.all( 10),
                   width: (MediaQuery.of(context).size.width),
                   color: Colors.grey[100],
                   child: Column(children: <Widget>[
                     SizedBox(height: 20,),
                     _builMyTextField("طرق الدفع"),
                     _builMyTextField("اسم صاحب البطاقة"),
                     _builMyTextField("رقم البطاقة"),
                    
                    Container(
                    //  padding: EdgeInsets.all( 10),
                      child:Row(children: <Widget>[
                       _buildMySmallTextField("الرمز"),
                       SizedBox(width: 37,),
                       _buildMySmallTextField("انتهاء الصلاحية"),
                     ],),
                    ),
                 
                         _buildAcceptSwitch(), 
                        
                       SizedBox(height:20,),
                       Container(
                         padding: EdgeInsets.only(top: 15),
                        width: 300,
                        height: 60,
                       child :RaisedButton(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(12.0)),
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('التالي'),
                      onPressed:() {
                       //Navigator.push( context, MaterialPageRoute(builder: (BuildContext context) => Signup1() ),);
                        showDialog(
      context: context, builder: (context) =>CustomDialog()  );
                       }),
                      )
                   ],),
                 ),
                
               
                     ])
                      ),
                      
                

                  // ],)
                 
               
             
        
              
             ),
            ),
          ),
        );
   
  }
 
}