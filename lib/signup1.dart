import 'package:flutter/material.dart';
import 'profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awani_app/services/authentification_service.dart';
import 'package:provider/provider.dart';


class Signup1 extends StatefulWidget {
  @override
  Signup1();
  State<StatefulWidget> createState() {
   return _Signup1State();
  }
}

class _Signup1State extends State<Signup1> {
  final Map<String, dynamic> _formData = {
    '_email': null,
    '_password': null,
    
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obscureText=true;

  final TextEditingController emailController=TextEditingController();
  final TextEditingController passswordController=TextEditingController();

  

  Widget _buildEmailTextField() {
    return TextField(

     // scrollPadding: EdgeInsets.only(left: 50),
     controller:emailController,
      decoration: InputDecoration(
          labelText: '', filled: true, fillColor: Colors.grey[200]),
          keyboardType: TextInputType.emailAddress,
        onChanged: (String value) {
        setState(() {
          _formData['_email'] = value;
        });
      },
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      controller:passswordController,
    
      decoration: InputDecoration(
          labelText: '', filled: true, fillColor: Colors.grey[200],
          prefixIcon: IconButton(icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off),
             onPressed: (){
            setState(() {
              _obscureText=!_obscureText;
            });
          })),
      obscureText: _obscureText,
      keyboardType: TextInputType.text,

       onChanged: (String value) {
        setState(() {
          _formData['_password'] = value;
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
                  padding: EdgeInsets.only(left: 300,top: 45),
                  
                   onPressed:(){
               // Navigator.push( context,MaterialPageRoute(builder: (BuildContext context) =>Verify()),  );

                   }),
                   SizedBox(height: 15),
                   Container(
                     child:Text(" انشاء حساب",
                     style: TextStyle(fontSize: 20,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w200),),
                     padding: EdgeInsets.only(left: 218),
                   ),
                   SizedBox(height: 20),
                   Container(
                     child:  Text("  انشاء حساب باستخدام البريد الالكتروني"
                     ,style: TextStyle(fontSize: 15),),
                     padding: EdgeInsets.only(left: 100),
                   ),
                   
                  SizedBox(height: 15),
                   Container(
                     child:Text("   البريد الالكتروني",style: TextStyle(fontSize: 18),),
                   padding: EdgeInsets.only(left: 200)),
                   //SizedBox(height: 14),
                 Container(
                   width: 323,
                  child: _buildEmailTextField(),
                 ), 
                  SizedBox(height: 15),
                  Container(
                     child:Text("أدخل كلمة المرور",style: TextStyle(fontSize: 18),),
                   padding: EdgeInsets.only(left: 200)),
                      Container(
                   width: 323,
                  child: _buildPasswordTextField(),
                 ), 
                  SizedBox(height: 15),
                  Container(
                     child:Text("تأكيد كلمة المرور",style: TextStyle(fontSize: 18),),
                   padding: EdgeInsets.only(left: 200)),
                  
                  //SizedBox(height: 14),
                   Container(
                   width: 323,
                  child:_buildPasswordTextField(),
                 ), 
                 Container(
                          padding: EdgeInsets.only(top: 110),
                        width: 276,
                       child :RaisedButton(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18.0)),
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('انشاء حساب'),
                      onPressed:() {
                        context.read<AuthentificationService>().signUp( emailController.text.trim(), passswordController.text.trim(),);
                     Navigator.push( context,MaterialPageRoute(builder: (BuildContext context) =>Profile()),  );
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


