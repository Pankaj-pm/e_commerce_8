import 'package:e_commerce/cart_page.dart';
import 'package:e_commerce/home_page.dart';
import 'package:e_commerce/new_home.dart';
import 'package:e_commerce/product_detail.dart';
import 'package:e_commerce/util.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: NewHome(),
      initialRoute: "/",
      routes: {
        "/":(context) => NewHome(),
        "product_detail": (context)=> ProductDetail(),
        "cart_page":(context) => CartPage(),
      },
      // onGenerateRoute: (settings) {
      //   if(settings.name=="product_detail"){
      //     return MaterialPageRoute(builder: (context) => ProductDetail(),);
      //   }else{
      //     return MaterialPageRoute(builder: (context) => CartPage(),);
      //   }
      // },
    ),
  );
}
