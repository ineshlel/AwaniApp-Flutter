import 'package:flutter/material.dart';
import 'signup1.dart';



class Verify extends StatefulWidget {
  @override
  Verify();
  State<StatefulWidget> createState() {
   return _VerifyState();
  }
}

class _VerifyState extends State<Verify> {
  final Map<String, dynamic> _formData = {
    'country': null,
    'phone': null,
    
  };
  Widget _buildPasswordTextField() {
    return TextField(
    
      decoration: InputDecoration(
          labelText: '', filled: true, fillColor: Colors.grey[200],),
      obscureText: true,
      keyboardType: TextInputType.phone,
       onChanged: (String value) {
        setState(() {
          _formData['phone'] = value;
        });
      },
    );
  }

 

  
  @override
  Widget build(BuildContext context) {

 return Scaffold(
      
      body: Container(
        
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(bottom:270),
              child: Column(
                 children: <Widget>[
                  IconButton(icon: Image.asset('assets/arrow.png'),
                  padding: EdgeInsets.only(left: 290,top: 40),
                  
                   onPressed:(){}),
                   SizedBox(height: 30),
                   Container(
                     child:Text(" التحقق",
                     style: TextStyle(fontSize: 20,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),
                     padding: EdgeInsets.only(left: 250),
                   ),
                   
                   SizedBox(height: 30),
                   Container(
                     child:  Text("ادخل الرمز المكون من 4 ارقام المرسل اليك"
                     ,style: TextStyle(fontSize: 15),),
                     padding: EdgeInsets.only(left:50),
                   ),
                 SizedBox(height: 30),
                   Container(
                     padding: EdgeInsets.only(left:75),
                     child:Row(children: <Widget>[
                       Container(
                         child: _buildPasswordTextField(),
                         width: 40,
                         height: 40,
                       ),
                       SizedBox(width:26),
                       Container(
                         child: _buildPasswordTextField(),
                         width: 40,
                         height: 40,
                       ),
                       SizedBox(width:26),
                       Container(
                         child: _buildPasswordTextField(),
                         width: 40,
                         height: 40,
                       ),
                       SizedBox(width:26),
                        Container(
                         child: _buildPasswordTextField(),
                         width: 40,
                         height: 40,
                       ),
                       SizedBox(width:26),
                       ],) ),
                       SizedBox(height:26), 
                        Container(
                         child: Text("اعادة ارسال الرمز في 00:30"),
                         padding: EdgeInsets.only(left: 150),
                       ),
                        Container(
                          padding: EdgeInsets.only(top: 250),
                        width: 276,
                       child :RaisedButton(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18.0)),
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('التالي'),
                      onPressed:() {
                       Navigator.push( context, MaterialPageRoute(builder: (BuildContext context) => Signup1() ),);
                       }),
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
