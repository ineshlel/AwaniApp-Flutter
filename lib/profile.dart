import 'package:flutter/material.dart';
import 'searchPage.dart';
import 'preparation.dart';

class Profile extends StatefulWidget {
  @override
  Profile();
  State<StatefulWidget> createState() {
   return _ProfileState();
  }
}

class _ProfileState extends State<Profile> {
  final Map<String, dynamic> _formData = {
    'country': null,
    'phone': null,
    
  };
  bool _obscureText=true;
  

  

  Widget _buildEmailTextField() {
    return TextField(

     // scrollPadding: EdgeInsets.only(left: 50),
     
      decoration: InputDecoration(
          labelText: '', filled: true, fillColor: Colors.grey[200]),
          keyboardType: TextInputType.emailAddress,
        onChanged: (String value) {
        setState(() {
          _formData['country'] = value;
        });
      },
    );
  }
  Widget _buildNameTextField() {
    return TextField(

     // scrollPadding: EdgeInsets.only(left: 50),
     
      decoration: InputDecoration(
          labelText: '', filled: true, fillColor: Colors.grey[200]),
          keyboardType: TextInputType.text,
        onChanged: (String value) {
        setState(() {
          _formData['name'] = value;
        });
      },
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
    
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
                  padding: EdgeInsets.only(left: 300,top: 35),
                  
                   onPressed:(){
               // Navigator.push( context,MaterialPageRoute(builder: (BuildContext context) =>Verify()),  );

                   }),
                   SizedBox(height: 10),
                   Container(
                     child:Row(
                       children:<Widget> [
                          SizedBox(
                       width: 60,
                       height: 60,
                  child: IconButton(icon: Image.asset('assets/RoundImage.png'),
                  //padding: EdgeInsets.only(left: 10,right: 50),
                    onPressed:(){}),
                    ),
                    SizedBox(width: 150),
                    Flexible(child:Text(" الملف الشخصي",
                     style: TextStyle(fontSize: 20,color:Color.fromRGBO(59, 79 ,98,3) ,
                     fontFamily:'FFAlamaO',
                     fontWeight: FontWeight.w700),),),
                    // padding: EdgeInsets.only(left: 200,right: 15),) ,)
                     
                    

                       ],
                     ),),
                     
                   SizedBox(height: 20),
                   Container(
                     child:  Text(" اضف معلوماتك"
                     ,style: TextStyle(fontSize: 15),),
                     padding: EdgeInsets.only(left: 220,right: 10),
                   ),
                   
                  SizedBox(height: 15),
                   Container(
                     child:Text("أدخل بريدك الالكتروني",style: TextStyle(fontSize: 18),),
                   padding: EdgeInsets.only(left: 170)),
                   //SizedBox(height: 14),
                 Container(
                   width: 323,
                  child: _buildEmailTextField(),
                 ), 
                  //SizedBox(height: 15),
                  Container(
                     child:Text(" أدخل اسمك و لقبك",style: TextStyle(fontSize: 18),),
                   padding: EdgeInsets.only(left: 200,right: 10)),
                      Container(
                   width: 323,
                  child: _buildNameTextField(),
                 ), 
                  //SizedBox(height: 15),
                  Container(
                     child:Text("المدينة",style: TextStyle(fontSize: 18),),
                   padding: EdgeInsets.only(left: 270)),
                      Container(
                   width: 323,
                  child: _buildNameTextField(),
                 ), 
                 Container(
                     child:Text("كلمة المرور",style: TextStyle(fontSize: 18),),
                   padding: EdgeInsets.only(left: 250)),
                  
                  //SizedBox(height: 14),
                   Container(
                   width: 323,
                  child:_buildPasswordTextField(),
                 ),
                 Container(
                          padding: EdgeInsets.only(top: 60),
                        width: 276,
                       child :RaisedButton(
                      shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18.0)),
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Text('ابدأ الاستخدام'),
                      onPressed:() {
      Navigator.push( context,MaterialPageRoute(builder: (BuildContext context) =>Search()),  );
      showDialog(
      context: context, builder: (context) =>CustomDialog(
         "تمت عملية التسجيل بنجاح",
       "           لقد سجلت بنجاح في التطبيق يمكنك البدء في العمل فيه",
      )
    );
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
                Text(description,style: TextStyle(fontSize: 16),),
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