import 'package:coffbuy/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
//coffee for sale list
  final List<Coffee> _shop = [
    //black coffee
    Coffee(
      name: 'Long Black',
      price: "10 rupees",
      imagePath: "lib/images/coffee.png",
    ),
    //cold coffee
    Coffee(
      name: 'Cold Coffee',
      price: "60 rupees",
      imagePath: "lib/images/cold.png",
    ),
    //juice
    Coffee(
      name: 'juice',
      price: "50 rupees",
      imagePath: "lib/images/juice.png",
    ),
    //tea
    Coffee(
      name: 'tea',
      price: "10 rupees",
      imagePath: "lib/images/tea.png",
    ),
  ];
//user cart
  List<Coffee> _userCart = [];
//get coffee list
  List<Coffee> get coffeeShop => _shop;
//get user cart
  List<Coffee> get usercart => _userCart;
//add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

// remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
