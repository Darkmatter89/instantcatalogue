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

        elevation: 5.0,
        backgroundColor: Colors.blue,
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
                accountEmail: Text("user@somemail.com"),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                ),
              decoration: new BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: new DecorationImage(
                    image: ExactAssetImage('images/appDrawer_image.jpg'),
                    fit: BoxFit.fill)
              ),
            ),


            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: new Text("Shopping List"),
                leading: new Icon(Icons.line_style, color: Colors.orange),
              ),
            ),

            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: new Text("Favourites"),
                leading: new Icon(Icons.favorite, color: Colors.pink),
              ),
            ),

            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: new Text("Alerts"),
                leading: new Icon(Icons.add_alert, color: Colors.purpleAccent),
              ),
            ),

            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: new Text("Settings"),
                leading: new Icon(Icons.settings, color: Colors.blue),
              ),
            ),

            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: new Text("About"),
                leading: new Icon(Icons.help,color: Colors.green ,),
              ),
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
