import 'package:flutter/material.dart';

class StoreListing extends StatefulWidget {
  @override
  _StoreListingState createState() => _StoreListingState();
}

class _StoreListingState extends State<StoreListing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: InkWell(
          onTap: (){},
          highlightColor: Colors.blue,
          child: Image.asset('images/Pnp_logo.png'),
        ),
      ),
    );
  }
}


