// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/util.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double totalPrice=0;

  @override
  void initState() {
    super.initState();
    findTotal();
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   findTotal();
  //   setState(() {
  //
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart Page")),
      bottomNavigationBar: Container(
        color: Colors.red,
        padding: EdgeInsets.all(20),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text("Total Price",style: TextStyle(color: Colors.white,fontSize: 20),)),
            // Spacer(),
            // Text("\$${findTotal()}",style: TextStyle(color: Colors.white,fontSize: 20)),
            Text("\$${totalPrice}",style: TextStyle(color: Colors.white,fontSize: 20)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: cartList.map((e) {
            return SizedBox(
              width: double.infinity,
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 160,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.grey,blurRadius: 10,spreadRadius: 5)
                          ]

                      ),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    left: 10,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30,left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 70,),
                                Text(
                                  e["name"],
                                  style: TextStyle(fontSize: 20),
                                  maxLines: 2,
                                ),
                                Text(
                                  "${e["price"]}",
                                  style: TextStyle(fontSize: 20),
                                  maxLines: 2,
                                ),
                                SizedBox(height: 40,),
                                InkWell(
                                  onTap: () {
                                    cartList.remove(e);
                                    findTotal();
                                    setState(() {

                                    });
                                    print("Delete");
                                  },
                                  child: Text(
                                    "Delete",
                                    style: TextStyle(fontSize: 20,decoration: TextDecoration.underline,color: Colors.red),
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Image.network(e?["img"]??"",height: 130),
                      ],
                    ),
                  )
                ],
              ),
            );

          }).toList(),
        ),
      ),
    );
  }

  void findTotal(){
    double sum=0;

    cartList.forEach((element) {
      double p=element["price"];
      sum=sum+p;
    });
    totalPrice=sum;

    print("sum $sum");
  }
}

//Stack(
//             children: [
//               CircleAvatar(
//                 backgroundColor: Colors.redAccent,
//                 child: Icon(Icons.person),
//               ),
//               Positioned(
//                 left: 30,
//                 child: CircleAvatar(
//                   backgroundColor: Colors.blue,
//                   child: Icon(Icons.person),
//                 ),
//               ),
//               Positioned(
//                 left: 60,
//                 child: CircleAvatar(
//                   backgroundColor: Colors.green,
//                   child: Icon(Icons.person),
//                 ),
//               ),
//             ],
//           ),
