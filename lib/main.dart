import 'package:flutter/material.dart';
import 'package:instantcatalogue/components/store_listing.dart';

//==========================================================================================================
//==========================================================================================================
// MAIN MENU SCREEN
//==========================================================================================================
//==========================================================================================================

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


// HEADER - APPBAR
//==========================================================================================================
      backgroundColor: Colors.white,
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.lightGreenAccent,
        title: Text("Instant Catalogue",
          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.assignment),color: Colors.black, onPressed: (){}),
        ],
      ),


// Slide-in Drawer: Containing options and features of app, account, notifications, settings etc.
//==========================================================================================================

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

// ------------- Drawer Header: User account details -------------

            new UserAccountsDrawerHeader(
                accountName: Text("Username"),
                accountEmail: Text("User@somemail.com"),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                ),
              decoration: new BoxDecoration(color: Colors.red),
            ),
          ],
        ),
      ),


// Body of Home Page - Containing cards listing all stores
//==========================================================================================================
      body:
        StoreListing(),

    );
  }
}
