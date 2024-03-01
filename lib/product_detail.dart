// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/util.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  String? name;
  IconData? iconData;

  List icons = [
    Icons.add,
    Icons.ac_unit,
    Icons.accessible_forward_outlined,
  ];

  ProductDetail({
    super.key,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    name = "${ModalRoute.of(context)?.settings.arguments}";

    return Scaffold(
      appBar: AppBar(
        // leading: InkWell(
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        //   child: Icon(Icons.chevron_left),
        // ),
        title: Text("Detail page"),
        centerTitle: true,
        actions: icons.map((e) {
          return Icon(e ?? Icons.add);
        }).toList(),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.network(
                "https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/m/o/y/g34-5g-pb1v0000in-motorola-original-imagwu4s8naevwyq.jpeg?q=70&crop=false"),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey, spreadRadius: 3, blurRadius: 10, offset: Offset(0, -10)),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      name ?? "",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    )),
                    Text("\$ 124", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red)),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: Text("Smartphone")),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text("4.4"),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "IPhone X",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                    Text("\$ 124", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54)),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "IPhone X",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                    Text("\$ 124", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54)),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "IPhone X",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                    Text("\$ 124", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "cart_page");

        },
        child: Icon(Icons.shopping_cart_checkout),
        foregroundColor: Colors.black,
        splashColor: Colors.blue,
        backgroundColor: Colors.red,
      ),
    );
  }
}
