import 'package:flutter/material.dart';
import 'otherPage.dart';



class Empty extends StatelessWidget{
  Empty();



  
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
           body: Container(
        
           )
     
        );



}
}
class CustomDialog extends StatelessWidget {
   
    
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
          Container(
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
                Positioned(
                  bottom: 150,
                  left:130 ,
                  right: 124,
                  child: Image.asset("assets/good.png")),
                  SizedBox(height:50),
                Text("هنيئا لك",style:TextStyle(fontSize: 24.0,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700,)),
                SizedBox(height:16),
                Text("تمت عملية الشراء بنجاح",style: TextStyle(fontSize: 24,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),textAlign: TextAlign.right,),
                SizedBox(height:24),
               /* Align(alignment: Alignment.bottomRight,
                child: FlatButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("confirm")),),*/
                


              ],
            ),
          )
        ],
      );
    }
  }