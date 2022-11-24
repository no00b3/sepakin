import 'package:flutter/material.dart';
import 'package:footballapp/livescore/api_manager.dart';
import 'package:footballapp/livescore/mainlivescore.dart';

class ProfileScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      ),
        backgroundColor: Colors.black26,
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          CircleAvatar(
            radius: 50.0,
          backgroundImage: AssetImage('assets/spiderman.jpg'),
        
          ),
          Text('Hafizh Anjar',
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 40.0,
            color: Colors.white,
          ),),
          Text('Student',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Source Sans Pro',
            color: Colors.white,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(
            height: 20,
            width: 300,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Card(color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child:ListTile(
              leading: Icon(Icons.contact_phone_sharp,
                color: Colors.black26,
              ),
              title: Text('+62816257240',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade900,
                ),
        
              ),
            ) ),
          Card(color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading:Icon(Icons.contact_mail_sharp,
                color: Colors.black26
              ) ,
              title: Text('hafizhanjar@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.teal.shade900,
                  ),
            ),),)
            ])
    ),),);
  }
}
