import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeShop extends  ChangeNotifier{

  //coffee for sale
  final List<Coffee>_shop = [
    //black coffee
    Coffee(
      name: 'Long Black',
      price: "4.10",
      imagePath: "lib/images/coffee.png"),
    //latte
    Coffee(
      name: 'Latte',
      price: "4.20",
      imagePath: "lib/images/coffee-cup.png"),
    //expresso
    Coffee(
      name: 'tea',
      price: "2.10",
      imagePath: "lib/images/tea.png"),
    //iced coffee
    Coffee(
      name: 'Coffee-beans',
      price: "3",
      imagePath: "lib/images/coffee-beans.png"),
  ];

  //user cart
  List<Coffee> _userCart = [];

  //get coffee list 
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }
  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}