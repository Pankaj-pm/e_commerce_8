import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Cart Page")),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 50,
                left: 50,
                child: Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Positioned(
                top: 60,
                left: 60,
                child: Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(color: Colors.yellow, borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Positioned(
                top: 70,
                left: 70,
                child: Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(color: Colors.yellow, borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          ),
        ));
  }
}
