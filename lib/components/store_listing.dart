import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'store_data.dart';
import 'store_product_listing.dart';


class StoreListing extends StatelessWidget {
  final List<stores> storesList = [
    stores("images/pnplogo.png", "Pick n Pay", DateTime.now(), DateTime.now(), 200.00),
    stores("images/sparlogo.png", "Game", DateTime.now(), DateTime.now(), 200.00),
    stores("images/gamelogo.png", "Spar", DateTime.now(), DateTime.now(), 200.00),
    stores("images/woolworthslogo.jpg", "Woolworths", DateTime.now(), DateTime.now(), 200.00),
    stores("images/dionwiredlogo.jpg", "Dion Wired", DateTime.now(), DateTime.now(), 200.00),
    stores("images/incredibleconnectionlogo.png", "Incredible Connection", DateTime.now(), DateTime.now(), 200.00),
    stores("images/checkerslogo.png", "Checkers", DateTime.now(), DateTime.now(), 200.00),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: storesList.length,
        itemBuilder: (BuildContext context, int index) => buildStoreListCard(context, index)
      ),
    );
  }

  //Display of cards on main screen - Listing stores on main screen

  Widget buildStoreListCard(BuildContext context, int index){
    final stores = storesList[index];
    return new Container(
     // height: 150.0,
      child: Padding(
        padding: const EdgeInsets.all(3.0),

          child: Card(color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11.0),
                side: BorderSide(width: 0.2),
            ),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                  child: Column(
                    children: <Widget>[

                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => new storeproducts()));

                      },
                          child: Image.asset(stores.storeImage, fit: BoxFit.fill,),
                      ),
                    ],
                  ),
              ),
          ),
      ),
    );
  }
}



