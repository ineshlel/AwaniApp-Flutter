import 'package:flutter/material.dart';
import 'alertdialog3.dart';
import 'empty.dart';



 class CustomDialog extends StatelessWidget {
    // final String title, description ;
    
     CustomDialog();
     @override
  Widget build(BuildContext context) {
    
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),

    );
  }
    dialogContent(BuildContext context){
      return Stack(
        children: <Widget>[
       SingleChildScrollView(child: Container(
            
            padding: EdgeInsets.only(top:50,bottom: 100,left: 20,right: 20),
            //margin: EdgeInsets.only(top:16),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0.0,10.0),
                )
              ]
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
               /* Positioned(
                  bottom: 150,
                  left:130 ,
                  right: 124,
                 child: Image.asset("assets/tick.png")),*/
                  Container(
                     child:Text("تأكيد الطلب",
                     style: TextStyle(fontSize: 16,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),
                     padding: EdgeInsets.only(left: 200),
                   ),
                 SizedBox(height:20),
                 Container(
                   padding: EdgeInsets.only(left: 80),
                   child:Row(children: <Widget>[
                   Image.asset("assets/gal.png"),
                   SizedBox(width:7),
                   Image.asset("assets/tan.png"),
                  ],)),
                  SizedBox(height:30),
                  Container(
                     child:Text("ملخص الطلب",
                     style: TextStyle(fontSize: 16,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),
                     padding: EdgeInsets.only(left: 200),
                   ),
                   SizedBox(height:20),
                   Container(
                     color: Colors.grey[200],
                     height: 100,
                     width:300,
                     child:Center(child:Column(children: <Widget>[
                       Container(child: Row(children: <Widget>[
                         Text("200.دك"),
                         SizedBox(width:150),
                         Text("مجموع السلة"),
                       ],),),
                       Container(child: Row(children: <Widget>[
                         Text("+20د.ك"),
                         SizedBox(width:150),
                         Text("تكلفة الشحن"),
                       ],),),
                       Container(child: Row(children: <Widget>[
                         Text("200.دك"),
                         SizedBox(width:150),
                         Text("اجمالي الطلب"),
                       ],),),
                     ],),) 

                   ),
                    SizedBox(height:20),
                    Container(
                     child:Text("كود التخفيض",
                     style: TextStyle(fontSize: 16,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),
                     padding: EdgeInsets.only(left: 200),
                   ),
                   SizedBox(height:15),
                    Container(
                      color: Colors.grey[200],
                     height: 30,
                     width:300,
                      child: Row(children: <Widget>[
                         Text("10-د.ك"),
                         SizedBox(width:100),
                         Text("KH-6789A"),
                       ],),),
                       SizedBox(height:20),
                       Container(
                         color: Colors.grey[200],
                     height: 30,
                     width:300,
                         child: Row(children: <Widget>[
                         Text("190د.ك"),
                         SizedBox(width:100),
                         Text("اجمالي الطلب"),
                       ],),),
                       SizedBox(height:20),
                           Container(
                         padding: EdgeInsets.only(top: 15),
                        width: 300,
                        height: 60,
                       child :RaisedButton(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(12.0)),
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text("تأكيد"),
                      onPressed:() {
                      // Navigator.push( context, MaterialPageRoute(builder: (BuildContext context) => Empty() ),);
                        showDialog(
      context: context, builder: (context) =>CustomDialog3()  );
                       }),
                      )


                /*Text(title,style:TextStyle(fontSize: 24.0,fontWeight: FontWeight.w700,)),
                SizedBox(height:16),
                Text(description,style: TextStyle(fontSize: 16),textAlign: TextAlign.right,),
                SizedBox(height:24),
                Align(alignment: Alignment.bottomRight,
                child: FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("confirm")),),*/
                


              ],
            ),
          ))
      
         
      ,
         ] );
    }
  }