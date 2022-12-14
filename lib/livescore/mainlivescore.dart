import 'package:flutter/material.dart';
import 'package:footballapp/livescore/api_manager.dart';
import 'package:footballapp/livescore/pagebody.dart';

class SoccerApp extends StatefulWidget {
  @override
  _SoccerAppState createState() => _SoccerAppState();
}

class _SoccerAppState extends State<SoccerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 11, 11),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        elevation: 0.0,
        title: Text(
          "SOCCERBOARD",
          
          style: TextStyle(color: Colors.black),
        ),
        
        centerTitle: true,
      ),
      
      //now we have finished the api service let's call it
      //Now befo re we create Our layout let's create our API service
      body: FutureBuilder(
        future: SoccerApi()
            .getAllMatches(), //Here we will call our getData() method,
        builder: (context, snapshot) {
          //the future builder is very intersting to use when you work with api
          if (snapshot.hasData) {
            print((snapshot.data).length);
            return PageBody(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }, // here we will buil the app layout
      ),
    );
  }
}
