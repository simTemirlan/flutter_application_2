import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/coffee_tile.dart';
import 'package:flutter_application_2/models/coffee_shop.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class CartPage extends StatefulWidget {
  const CartPage ({super.key});

  @override
  State<CartPage> createState() => _CartPagesState();
}

class _CartPagesState extends State<CartPage> {

void removeFromCart(BuildContext context, Coffee coffee) {
  Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
}

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text('Your Cart',
            style: TextStyle(fontSize: 20),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: value.userCart.length,
                itemBuilder: (context, index) {
             
             Coffee eachCoffee = value.userCart[index];

             return CoffeeTile(
              coffee: eachCoffee,
              onPressed: () => removeFromCart(context, eachCoffee),  
              icon: Icon(Icons.delete),
              );
            },),
            ),


          Container(
            padding: EdgeInsets.all(25),
            width: double.infinity,
             decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text(
                "Pay Now",
                 style: TextStyle(color: Colors.white),
                 ),
            ),
          )
          ],
        ),
      ),
    ),);
  }
}