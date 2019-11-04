import 'package:flutter/cupertino.dart';

class stores {
  final String storeImage;
  final String title;
  final DateTime startDate;
  final DateTime endDate;
  final double budget;


  stores(this.storeImage, this.title, this.startDate, this.endDate, this.budget,);
}

class storeproducts{
  final String productName;
  final double productPrice;

  storeproducts(this.productName, this.productPrice);
}