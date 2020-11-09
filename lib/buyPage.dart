import 'dart:collection';

import 'package:flutter/material.dart';
import 'shipping.dart';

class BuyPage extends StatefulWidget {
  @override
  BuyPage();
  State<StatefulWidget> createState() {
   return _BuyPageState();
  }
}

class _BuyPageState extends State<BuyPage>  {


   static Padding MyProduct(){
    return Padding(
                       padding: const EdgeInsets.only(top:40,left: 10,right: 10),
                       child: FittedBox(
                         
                         child: Material(
                          
                         elevation:14,
                         borderRadius: BorderRadius.circular(15),
                         color: Colors.white,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                           Container(
                     child: Padding(padding:const EdgeInsets.all(8.0),
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                      Container(child:Text("IKEA 365+",style: TextStyle(fontSize:15,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),)),
                     Container(
                      // height: 30,
                       child:Text("     قدر مع غطاء ،ستينلس ستيل،زجاج،3ل",style: TextStyle(fontSize: 10,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w500),)),
                     SizedBox(height: 12,),
                     Row(children: <Widget>[
                     Image.asset('assets/delete.png'),
                   SizedBox(width: 100,),
                     Container(
                       height:25,
                       width:60,
                       color:Colors.grey[300],
                       child: Row(children: <Widget>[
                        Container(
                         margin: EdgeInsets.only(left:3),
                          height: 17,
                          width: 17,
                          color: Colors.white,
                          child:Image.asset('assets/smallarrowleft.png'),) ,
                          SizedBox(width: 6,),
                         Text("2"),
                          SizedBox(width: 6,),
                           Container(
                        
                          height: 17,
                          width: 17,
                          color: Colors.white,
                          child:Image.asset('assets/smallarrow.png'),) ,
                        


                       ],),
                       )
                   ],
                     )
                     ],
                     ),
                    ),
                    ),
                Container( 
                  width: 120,
                  height: 140,
                  child:ClipRRect(
                     borderRadius: BorderRadius.circular(15),
                     child:  Image.asset('assets/tan.png',
                    fit:BoxFit.cover)    ,

                    )
                    )
                   
                                 ],) ,),),
                     );
  }
  List<Widget> MylistView = <Widget>[
  
 MyProduct(),
 MyProduct(),
 MyProduct(),
 


];
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
                     Image.asset('assets/number3.png'),
                     SizedBox(height:10),
                     Text("الدفع"),
                     ],),),
                    SizedBox(width: 100,
                      child :Divider( color: Colors.black,thickness: 2,) ,), 
              
                     Container(
                       padding: EdgeInsets.only(top:25),
                       child: Column(children: <Widget>[
                     Image.asset('assets/number2.png'),
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
                  
                    //height:(MediaQuery.of(context).size.height),
                 height: 400,
                   width: (MediaQuery.of(context).size.width),
                   color: Colors.grey[100],
                   //child:Column(children: <Widget>[
     child:  ListView.builder
                 ( //scrollDirection: Axis.vertical,
    itemCount: MylistView.length,
    itemBuilder: (BuildContext ctxt, int index) {
     return (MylistView[index]);
    }
                ), ) ,
                 
        
                Divider( color: Colors.grey,thickness: 1,) ,
                SizedBox(height:15,),
              //  color: Colors.grey[200],),
              Container(
                  height: 600,
                   width: (MediaQuery.of(context).size.width),
                   color: Colors.grey[100],
                   child: Column(children: <Widget>[
                     Container(
    padding: EdgeInsets.only(left: 250),
                             child:Text("كود التخفيض",
                           
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
                          hintText: "اضف كود التخفيض",
                          hintStyle: TextStyle(color: Colors.grey),
                        
                        ),
                      ), ) ,
                            Container(
                        padding: EdgeInsets.only(left: 20), 
                        child:Row(
                          children: <Widget>[
                     Text("200 د.ك",
                     style: TextStyle(fontSize: 15,color:Colors.grey[400],
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),
                     SizedBox(width:180 ,),
                  
                     Text("مجموع السلة",
                     style: TextStyle(fontSize: 15,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),
                    ]),), 
                    SizedBox(height:20,),
                       RaisedButton(
                       shape: RoundedRectangleBorder(
                        
                       borderRadius: BorderRadius.circular(12.0)
                       ),
                      textColor: Colors.white,
                      color: Colors.black,
                      
                      child: Text('الشحن'),
                      onPressed:() {
                       Navigator.push( context, MaterialPageRoute(builder: (BuildContext context) => Shipping() ),);
                       }),
                       
                      
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