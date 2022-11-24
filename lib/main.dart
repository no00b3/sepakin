import 'package:flutter/material.dart';
import 'package:footballapp/table/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
   //initilization of Firebase app
  
  // other Firebase service initialization
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Splash(),
    );
  }
}
