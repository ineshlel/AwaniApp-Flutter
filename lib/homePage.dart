import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePage();
  State<StatefulWidget> createState() {
   return _HomePageState();
  }
}


class _HomePageState extends State<HomePage>  {
  Container MyArticles ( Image image, String heading,String subheading ){
    return Container(
                            width: 127,
                            height: 150,
                            child: Card(
                              margin: EdgeInsets.only(left:13,right: 13),
                            child:Wrap(
                              children: <Widget>[
                                image,
                                ListTile(
                                  title: Text(heading),
                                  subtitle: Text(subheading),
                                )

                              ],
                            )
                            ),
                          ) ; }
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
              padding: EdgeInsets.only(bottom:250,top: 30),
              child: Column(
                children:< Widget>[
                  Container(child:Text(" هنا ",
                     style: TextStyle(fontSize: 20,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),
                     padding: EdgeInsets.only(left: 280,),
                  ),
                  Container(child:Text(" تصنع تفاصيل مطبخك",
                     style: TextStyle(fontSize: 20,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),
                     padding: EdgeInsets.only(left: 155),
                  ),
                  SizedBox(height:10 ,),
                  Container(
                 
                    padding: EdgeInsets.only(left: 30),
                     child: Row( 
                       children:<Widget>[
                          IconButton(icon: Image.asset('assets/groupe.png'),
                          iconSize: 25,
                 // padding: EdgeInsets.only(left: 300,top: 35),
                  
                   onPressed:(){
               // Navigator.push( context,MaterialPageRoute(builder: (BuildContext context) =>Verify()),  );

                   }),
                  //SizedBox(width:70 ,),
             Container(
                 width: 270,
                 //height: 40,
                padding: EdgeInsets.only(left: 190),
                  
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                   //color: Color.fromRGBO(247, 249, 252,2),
                  color: Colors.grey[200],
                     child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "بحث",
                          hintStyle: TextStyle(color: Colors.grey),
                          suffixIcon: Icon(Icons.search,color: Colors.grey,)
                        ),
                      ), )  
                     ])
                      ),
                      SizedBox(height:10 ,),
                      Container(
                        padding: EdgeInsets.only(left: 35), 
                        child:Row(
                          children: <Widget>[
                     Text(" عرض الكل",
                     style: TextStyle(fontSize: 15,color:Colors.grey[400],
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),
                     SizedBox(width:200 ,),
                  
                     Text(" الاقسام",
                     style: TextStyle(fontSize: 20,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),
                    ]),),
                    SizedBox(height:20 ),
                    Container(
                      height: 170,
                    
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          MyArticles(Image.asset('assets/gal.png'), "أواني القلي", "   500 منتجا"),
                           MyArticles(Image.asset('assets/manger.png'), "أواني الطعام",
                          " 350 منتجا"),
                          MyArticles(Image.asset('assets/tan.png'), "أواني الطهي", "    منتجا 50"),
                           MyArticles(Image.asset('assets/verre.png'), "أواني زجاجية",
                           "100منتجا"),
                           ]),),
                           SizedBox(height:30 ),
                           Container(
                             padding: EdgeInsets.only(left: 250),
                             child:Text("اعلانات",
                     style: TextStyle(fontSize: 20,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),
                           ),
                           Container(
                             child:Image.asset('assets/pub.png'),
                            ),
                            SizedBox(height:30 ),
                            Container(
                        padding: EdgeInsets.only(left: 20), 
                        child:Row(
                          children: <Widget>[
                     Text(" عرض الكل",
                     style: TextStyle(fontSize: 15,color:Colors.grey[400],
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),
                     SizedBox(width:180 ,),
                  
                     Text("منتجات مختارة",
                     style: TextStyle(fontSize: 20,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),
                    ]),),
        Container(
      height:400,
   child:  GridView.count(
    // scrollDirection: Axis.vertical,
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
                  
    Container(
    padding: EdgeInsets.only(left: 250),
                             child:Text("اخر الاضافات",
                     style: TextStyle(fontSize: 20,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),
    )),
    Container(
 height:500,
 child:  GridView.count(
    // scrollDirection: Axis.vertical,
    primary: false,
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
      child: MyArticle("assets/black.png", "مقلاة عميقة مع غطاء", "IDENTISK", "50د.ك"),
      
    ),
    
    
    
  ],
),
 ),
     
                            
                  
                  
                ],
             ),
            ),
          ),
       ),
     ),
   
    );
  }
 
}