import 'package:flutter/material.dart';
import 'verifyPage.dart';


class Signup extends StatefulWidget {
  @override
  Signup();
  State<StatefulWidget> createState() {
   return _SignupState();
  }
}

class _SignupState extends State<Signup> {
  final Map<String, dynamic> _formData = {
    'country': null,
    'phone': null,
    
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  

  Widget _buildEmailTextField() {
    return TextField(

     // scrollPadding: EdgeInsets.only(left: 50),
     
      decoration: InputDecoration(
         // labelText: 'country',
           filled: true,
            fillColor: Colors.grey[200],),
        onChanged: (String value) {
        setState(() {
          _formData['country'] = value;
        });
      },
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
    
      decoration: InputDecoration(
          labelText: '', filled: true, fillColor: Colors.grey[200],),
     // obscureText: true,
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
    final double deviceWidth = MediaQuery.of(context).size.width;
    final targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.8;

    return Scaffold(
      
      body: Container(
        
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              
              //width: targetWidth,
              padding: EdgeInsets.only(bottom:270),
              child: Column(
                
                children: <Widget>[
                  IconButton(icon: Image.asset('assets/arrow.png'),
                  padding: EdgeInsets.only(left: 300,top: 60),
                  
                   onPressed:(){
                Navigator.push( context,MaterialPageRoute(builder: (BuildContext context) =>Verify()),  );

                   }),
                   SizedBox(height: 30),
                   Container(
                     child:Text(" انشاء حساب",
                     style: TextStyle(fontSize: 20,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w200),),
                     padding: EdgeInsets.only(left: 218),
                   ),
                   
                   SizedBox(height: 30),
                   Container(
                     child:  Text("ادخل رقم هاتفك المحمول ، وسوف نرسل لك كود للتحقق لاحقا"
                     ,style: TextStyle(fontSize: 15),),
                     padding: EdgeInsets.only(right: 10),
                   ),
                   
                  SizedBox(height: 30),
                   Container(
                     child:Text("   اختر بلدك",style: TextStyle(fontSize: 18),),
                   padding: EdgeInsets.only(left: 250)),
                   SizedBox(height: 14),
                 Container(
                   width: 323,
                  child: _buildEmailTextField(),
                 ), 
                  SizedBox(height: 30),
                  Container(
                     child:Text("ادخل رقم هاتفك",style: TextStyle(fontSize: 18),),
                   padding: EdgeInsets.only(left: 200)),
                  
                  SizedBox(height: 14),
                   Container(
                   width: 323,
                  child:_buildPasswordTextField(),
                 ), 
                 Container(
                          padding: EdgeInsets.only(top: 120),
                        width: 276,
                       child :RaisedButton(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18.0)),
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('التالي'),
                      onPressed:() {
                     Navigator.push( context,MaterialPageRoute(builder: (BuildContext context) =>Verify()),  );
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