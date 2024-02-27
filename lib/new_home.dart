// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/util.dart';
import 'package:flutter/material.dart';

class NewHome extends StatefulWidget {
  const NewHome({super.key});

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart_rounded),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Select Category"),
              Text("Smartphone"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: product.map((e) {
                    return Product(
                      name: e["name"],
                      price: e["price"],
                    );
                  }).toList(),
                ),
              ),
              Text("Laptop"),
              Row(
                children: laptops.map((e) {
                  return Product(name: e["name"] ,price: e["price"],);
                }).toList(),
              )
            ],
          ),
        ));
  }
}

class Product extends StatelessWidget {
  String? name;
  double? price;

  Product({super.key, this.name, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 150,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 3),
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            child: Container(
              color: Colors.red,
              width: 50,
              child: Text("12.96%"),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black12,
              child: Text("Image"),
            ),
          ),
          Text(
            name ?? "",
            style: TextStyle(fontSize: 18),
          ),
          Text(
            "\$ $price",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ],
          )
        ],
      ),
    );
  }
}
