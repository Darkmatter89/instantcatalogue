import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'store_data.dart';

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

  Widget buildStoreListCard(BuildContext context, int index){
    final stores = storesList[index];
    return new Container(
     // height: 150.0,
      child: Padding(
        padding: const EdgeInsets.all(3.0),

          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11.0),
            ),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                  child: Column(
                    children: <Widget>[

                      InkWell(onTap: (){},
                          child: Image.asset(stores.storeImage, fit: BoxFit.fill,),
                      ),

//                      Padding(
//                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//                          child: Row(
//                            children: <Widget>[
//                              Text(stores.title, style: new TextStyle(fontSize: 17.0),),
//                              Spacer(),
//                            ],
//                          ),
//                      ),
//                      Padding(
//                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//                        child: Row(
//                          children: <Widget>[
//                            Text("${DateFormat('dd/MM/yyyy').format(stores.startDate).toString()} - ${DateFormat('dd/MM/yyyy').format(stores.endDate).toString()}"),
//                            Spacer(),
//                          ],
//                        ),
//                      ),

//                      Padding(
//                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//                        child: Row(
//                          children: <Widget>[
//                            Text(stores.budget.toString(), textAlign: TextAlign.right,),
//                          ],
//                        ),
//                      )
                    ],
                  ),
              ),
          ),
      ),
    );
  }
}



