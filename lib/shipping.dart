import 'package:flutter/material.dart';
import 'pay.dart';

class Shipping extends StatefulWidget {
  @override
  Shipping();
  State<StatefulWidget> createState() {
   return _ShippingState();
  }
}

class _ShippingState extends State<Shipping>  {


  Container _builMyTextField(String text){
    return  Container(
                 width: 350,
               
                padding: EdgeInsets.only(left: 190),
                  
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                   //color: Color.fromRGBO(247, 249, 252,2),
                  color: Colors.grey[50],
                     child: TextFormField(
                       textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:text,
                          hintStyle: TextStyle(fontSize: 16,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w200)),
                        
                        ),
                       )   ;
  }
  Container _buildMySmallTextField(String mytext){
    return Container(
                 width: 150,
               
                padding: EdgeInsets.only(left: 190),
                  
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                   //color: Color.fromRGBO(247, 249, 252,2),
                  color: Colors.grey[50],
                     child: TextFormField(
                       textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: mytext,
                          hintStyle: TextStyle(fontSize: 16,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w200)),
                        
                        ),
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
      title: Text('حفظ العنوان',style: TextStyle(fontSize: 16,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w200,),textAlign: TextAlign.right,),
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
                   child:Row(children: <Widget>[
                     Container(
                       margin: EdgeInsets.only(left:40),
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
                   width: (MediaQuery.of(context).size.width),
                   color: Colors.grey[100],
                   child: Column(children: <Widget>[
                     SizedBox(height: 20,),
                     _builMyTextField("اسم العنوان"),
                     _builMyTextField("الكويت"),
                     _builMyTextField("المنطقة"),
                     _builMyTextField("نوع السكن"),
                     _builMyTextField("البلوك"),
                     _builMyTextField("الجادة(اختياري)"),
                    Container(
                      padding: EdgeInsets.only(left:16),
                      child:Row(children: <Widget>[
                       _buildMySmallTextField("رقم الشقة"),
                       SizedBox(width: 30,),
                       _buildMySmallTextField("الطابق"),
                     ],),
                    ),
                    Container(
                 width: 350,
                 height: 80,
               
                padding: EdgeInsets.only(left: 190),
                  
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                   //color: Color.fromRGBO(247, 249, 252,2),
                  color: Colors.grey[50],
                     child: TextFormField(
                       textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:"ارشادات إضافية",
                          hintStyle: TextStyle(fontSize: 16,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w200)),
                        
                        ),
                      

                       ) ,
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
                       Navigator.push( context, MaterialPageRoute(builder: (BuildContext context) => Pay() ),);
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