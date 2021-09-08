import 'package:flutter/material.dart';

import 'package:new_me_jhay/ShoppingProject/Models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'New Shirt',
        description: 'Our new shirt just arrived from the UK',
        price: 29.90,
        imageUrl:
            'https://cdn.pixabay.com/photo/2018/02/16/16/07/youtube-3157978_960_720.jpg',
        isFavourite: false),
    Product(
        id: 'p2',
        title: 'Red Shirt',
        description: 'Get the latest new shirt just arrived from the UK',
        price: 29.90,
        imageUrl:
            'https://cdn.pixabay.com/photo/2018/05/25/08/35/beauty-3428550_960_720.jpg',
        isFavourite: false),
  ];
  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addValue() {
    notifyListeners();
  }
}
