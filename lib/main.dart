import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import  'package:awani_app/services/authentification_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'helloPage.dart';

Future <void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider<AuthentificationService>(
        create: (_)=>AuthentificationService(FirebaseAuth.instance),
         ),
         StreamProvider(create: (context)=> context.read<AuthentificationService>().authStateChanges)
    ],
    
    
   child: MaterialApp(
      title: 'Awani',
      theme: ThemeData(
        
      ),
      home: HelloPage(),
    )
    )
    ;
  }

  }

