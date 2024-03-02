// ignore_for_file: prefer_const_constructors

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
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 220,
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 180,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    left: 10,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                              "Classic " * 8,
                              style: TextStyle(fontSize: 20),
                              maxLines: 2,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.chair,
                          size: 150,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 220,
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 180,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    left: 10,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                              "Classic " * 8,
                              style: TextStyle(fontSize: 20),
                              maxLines: 2,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.chair,
                          size: 150,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 220,
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 180,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    left: 10,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                              "Classic " * 8,
                              style: TextStyle(fontSize: 20),
                              maxLines: 2,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.chair,
                          size: 150,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 220,
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 180,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    left: 10,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                              "Classic " * 8,
                              style: TextStyle(fontSize: 20),
                              maxLines: 2,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.chair,
                          size: 150,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 220,
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 180,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    left: 10,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Text(
                              "Classic " * 8,
                              style: TextStyle(fontSize: 20),
                              maxLines: 2,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.chair,
                          size: 150,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
