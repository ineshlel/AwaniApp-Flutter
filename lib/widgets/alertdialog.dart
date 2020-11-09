import 'package:flutter/material.dart';


 class CustomDialog extends StatelessWidget {
     final String title, description ;
    
     CustomDialog(this.title,this.description);
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
                  child: Image.asset("assets/tick.png")),
                  SizedBox(height:50),
                Text(title,style:TextStyle(fontSize: 24.0,fontWeight: FontWeight.w700,)),
                SizedBox(height:16),
                Text(description,style: TextStyle(fontSize: 16),textAlign: TextAlign.right,),
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