import 'package:flutter/material.dart';
import 'package:go_cart/screens/product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.teal,
            accentColor: Colors.orange,
            fontFamily: 'Combo'),
        debugShowCheckedModeBanner: false,
        home: ProductScreen());
  }
}
