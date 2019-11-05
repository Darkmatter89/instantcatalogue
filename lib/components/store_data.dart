//All store related constructors to be placed here.

//Constructor for store details.

class stores {
  final String storeImage;
  final String title;
  final DateTime startDate;
  final DateTime endDate;
  final double budget;


  stores(this.storeImage, this.title, this.startDate, this.endDate, this.budget,);
}

// Constructor for product details

class storeproductdetails{
  final String productImage;
  final String productName;
  final double productPrice;

  storeproductdetails(this.productImage, this.productName, this.productPrice);
}