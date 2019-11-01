import 'package:flutter/material.dart';

class StoreListing extends StatefulWidget {
  @override
  _StoreListingState createState() => _StoreListingState();
}

class _StoreListingState extends State<StoreListing> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(32.0),
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Card(
              child: new Container(
                padding: new EdgeInsets.all(32.0),
                child: new Column(
                  children: <Widget>[
                    new Text('Hello World'),
                    new Text('How are you?')
                  ],
                ),
              ),
            ),
            new Card(
              child: new Container(
                padding: new EdgeInsets.all(32.0),
                child: new Column(
                  children: <Widget>[
                    new Text('Hello World'),
                    new Text('How are you?')
                  ],
                ),
              ),
            ),
            new Card(
              child: new Container(
                padding: new EdgeInsets.all(32.0),
                child: new Column(
                  children: <Widget>[
                    new Text('Hello World'),
                    new Text('How are you?'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


