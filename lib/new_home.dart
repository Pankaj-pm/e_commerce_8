// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/product_detail.dart';
import 'package:e_commerce/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: Text("A"),
                backgroundColor: Colors.black,
                radius: MediaQuery.of(context).size.width * 0.10,
                foregroundColor: Colors.black,
                // backgroundImage: NetworkImage("https://as2.ftcdn.net/v2/jpg/02/44/42/79/1000_F_244427911_aoHHulebtYy4wLpncBBuWqCTNFKolcCB.jpg"),
                backgroundImage: AssetImage("assets/image_1.png"),
              ),
              Text("Select Category"),
              Text("Smartphone"),
              Text("width = ${MediaQuery.of(context).size.width}"),
              Text("height = ${MediaQuery.of(context).size.height}"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: product.map((e) {
                    return InkWell(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //   builder: (context) {
                        //     return ProductDetail(name:e["name"] ,);
                        //   },
                        // ));

                        Navigator.pushNamed(context, "product_detail", arguments: e["name"]);
                      },
                      child: Product(
                        name: e["name"],
                        price: e["price"],
                        img: e["img"],
                      ),
                    );
                  }).toList(),
                ),
              ),
              Text("Laptop"),
              Row(
                children: laptops.map((e) {
                  return Product(
                    name: e["name"],
                    price: e["price"],
                    img: e["img"],
                  );
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
  String? img;

  Product({super.key, this.name, this.price, this.img});

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
          // Expanded(
          //   child: Image.network(
          //     img ?? "",
          //     fit: BoxFit.contain,
          //     height: 50,
          //   ),
          // ),
          Expanded(
            child: Image.asset(
              "assets/image_2.png",
              fit: BoxFit.cover,
              height: 50,
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
          RatingBarIndicator(
            rating: 2.75,
            itemBuilder: (context, index) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 28.0,
            direction: Axis.horizontal,
          ),
        ],
      ),
    );
  }
}
