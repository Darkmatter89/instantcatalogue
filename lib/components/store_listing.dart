import 'package:flutter/material.dart';

class StoreListing extends StatelessWidget {
  final List<String> storesList = [
    "PicknPay", "Game", "Checkers", "Spar"];

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
    return new Container(
        child: Card(
            child: Column(
              children: <Widget>[
                Text(index.toString()),
                Text(storesList[index]),
              ],
            )
        )
    );
  }
}



