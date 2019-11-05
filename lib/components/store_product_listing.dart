import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class storeproducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 5.0,
        backgroundColor: Colors.blue,
        title: Text('PnP',style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold)),),

    );
  }
}
