//import 'dart:js';

import 'package:flutter/material.dart';
import 'preparation.dart';

class TablePage extends StatefulWidget {
  @override
  TablePage();
  State<StatefulWidget> createState() {
   return _TablePageState();
  }
}

class _TablePageState extends State<TablePage>  {

  static Container MyListView(){
    return Container(
                      height: 170,
                    
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          MyArticles(Image.asset('assets/gal.png'), "أواني القلي", "   500 منتجا"),
                           MyArticles(Image.asset('assets/manger.png'), "أواني الطعام",
                          " 350 منتجا"),
                          MyArticles(Image.asset('assets/tan.png'), "أواني الطهي", "    منتجا 50"),
                          
                           ]));
  }
  static Container MyArticles ( Image image, String heading,String subheading ){
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
 
 List<Widget> Mylistsview = <Widget>[
  
 MyListView(),
 MyListView(),
 MyListView(),
  MyListView(),


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
                   Container(
                     padding: EdgeInsets.only(top:30,left: 180),
                     child:Row(
                     children:<Widget>[
                        Container(child:Text(" الاصناف ",
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
                      Navigator.push( context, MaterialPageRoute(builder: (BuildContext context) => Preparation() ),);

                    }),
                    ), ],
                    )),
                   
                  Container (
                   //height: 400,
                   
                    height: (MediaQuery.of(context).size.height),
                    child:ListView.separated(
                      primary: false,
  padding: const EdgeInsets.all(8),
  itemCount: Mylistsview.length,
  //itemCount: 3,
  itemBuilder: (BuildContext context, int index) {
    return 
  Mylistsview[index];
 // Container (child :Text(entries[index]));
  
  },
  separatorBuilder: (BuildContext context, int index) => const Divider(height: 50,thickness: 2),) ) 
                ],
             ),
            ),
          ),
        ),
      ),
   
    );
  }
 
}