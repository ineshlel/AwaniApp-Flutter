import 'package:flutter/material.dart';
import './widgets/alertdialog.dart';



class Preparation extends StatefulWidget {
  @override
  Preparation();
  State<StatefulWidget> createState() {
   return _PreparationState();
  }
}


class _PreparationState extends State<Preparation> {

  Container MyArticle(String image ,String title1,String title2,String dk){
   return   Container(
    height:180,
            width: 200,
            color: Colors.grey[200],
     child: Column(
       children: <Widget>[
     
           Container(
             padding: EdgeInsets.only(right:150,top:10),
           child: Image.asset("assets/heart.png"),),
            Container( child: Align(
            alignment: Alignment.center,
            child: Image.asset(image),),),
            Text(title1),
            Text(title2),
            Container(child:Row(
              children: <Widget>[
                Text(dk),
               SizedBox(width:70),
                Row(children: <Widget>[
                  Image.asset("assets/etoile1.png"),
                  Image.asset("assets/etoile1.png"),
                  Image.asset("assets/etoile1.png"),
                  Image.asset("assets/etoile1.png"),
                  Image.asset(""),
                ],

                )
              ],
            ))
       ],
     ),
    );
 }
 
  
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      body:Container(
        
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(bottom:270),
              child: Column(
                 children: <Widget>[
                   Container(
                     padding: EdgeInsets.only(top:30,left: 150),
                     child:Row(
                     children:<Widget>[
                        Container(child:Text("أواني الطهي",
                     style: TextStyle(fontSize: 20,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),
                    // padding: EdgeInsets.only(left: 280,),
                  ),
                  SizedBox(width: 100),
                  SizedBox(
                  child: IconButton(icon: Image.asset('assets/close.png'),
                  //padding: EdgeInsets.only(left: 10,right: 50),
                    onPressed:(){
                       showDialog(
      context: context, builder: (context) =>CustomDialog(
         "تمت عملية التسجيل بنجاح",
       "           لقد سجلت بنجاح في التطبيق يمكنك البدء في العمل فيه",
      )
    );
                    }),
                    ), ],
                    )),
                     Container(
     // height:400,
      height: (MediaQuery.of(context).size.height),
   child:  GridView.count(
     scrollDirection: Axis.vertical,
    //primary: false,
  padding: const EdgeInsets.all(10),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  shrinkWrap: true,
  crossAxisCount: 2,
  children: <Widget>[
    Container(
      padding: const EdgeInsets.all(8),
      child:  MyArticle("assets/black.png", "مقلاة عميقة مع غطاء", "IDENTISK", "50د.ك"),
    ),
    Container(
    
      padding: const EdgeInsets.all(8),
       //child:Column(children:<Widget> [
        child:  MyArticle("assets/tanjr.png", "قدر مع غطاء", "IDENTISK", "50د.ك"),
             // GestureDetector(onTap: () { } ),

      // ],)
       
     
      
       ),
     
     
      
    
    Container(
      padding: const EdgeInsets.all(8),
      child: MyArticle("assets/black.png", "مقلاة عميقة مع غطاء", "IDENTISK", "50د.ك"),
      
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: MyArticle("assets/black.png", "مقلاة عميقة مع غطاء", "IDENTISK", "50د.ك"),
    ),
      Container(
      padding: const EdgeInsets.all(8),
      child: MyArticle("assets/black.png", "مقلاة عميقة مع غطاء", "IDENTISK", "50د.ك"),
    ),
      Container(
      padding: const EdgeInsets.all(8),
      child: MyArticle("assets/black.png", "مقلاة عميقة مع غطاء", "IDENTISK", "50د.ك"),
    ),
      Container(
      padding: const EdgeInsets.all(8),
      child: MyArticle("assets/black.png", "مقلاة عميقة مع غطاء", "IDENTISK", "50د.ك"),
    ),
      Container(
      padding: const EdgeInsets.all(8),
      child: MyArticle("assets/black.png", "مقلاة عميقة مع غطاء", "IDENTISK", "50د.ك"),
    ),
   
    
    
  ],
),
 ),
                  
   
               
              ],
             ),
            ),
      
       
          
       
          ),),),   
    );
  }
 
}
