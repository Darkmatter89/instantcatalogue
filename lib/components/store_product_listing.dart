import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'store_data.dart';
import 'store_listing.dart';


class storeproducts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(elevation: 5.0,
        backgroundColor: Colors.blue,
        title: Text('PnP',style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold)),),


      body: GridView.count(crossAxisCount: 2,

        children: <Widget>[

          new Container(
            child: new Card(
              elevation: 10.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                  child: new Column(
                    children: <Widget>[

                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => new StoreListing()));},
                        child: Image.asset("images/storeproducts/jameson.jpg", fit: BoxFit.fill,),
                      )
                    ],
                  ),
              ),

            ),
          ),

        ],
      ),





    );
  }
}
