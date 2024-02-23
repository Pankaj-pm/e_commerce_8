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
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Product(),
            SizedBox(width: 10,),
            Product(),
            Product(),
            Product(),
          ],
        ),
      ),
    );
  }
}


class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 250,
      width: 150,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), boxShadow: [
        BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 3),
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.red,
            child: Text("12.96%"),
          ),
          Text("Image"),
          Text(
            "Iphone 9",
            style: TextStyle(fontSize: 18),
          ),
          Text(
            "\$ 559",
            style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Icon(Icons.star,color: Colors.amber,),
              Icon(Icons.star,color: Colors.amber,),
              Icon(Icons.star,color: Colors.amber,),
              Icon(Icons.star,color: Colors.amber,),
              Icon(Icons.star,color: Colors.amber,),
            ],
          )
        ],
      ),
    );
  }
}

