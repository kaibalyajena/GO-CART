import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  ProductItem({required this.id, required this.title, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GridTile(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          leading: IconButton(
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).accentColor.withOpacity(0.8),
            ),
            onPressed: () {},
          ),
          backgroundColor: Colors.teal.withOpacity(0.7),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).accentColor.withOpacity(0.8),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
  // Widget build(BuildContext context) {
  //   double w = MediaQuery.of(context).size.width;
  //   return Container(
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(20),
  //     ),
  //     child: Stack(
  //       children: [
  //         Image.network(
  //           imageUrl,
  //           fit: BoxFit.cover,
  //         ),
  //         Padding(
  //           padding: EdgeInsets.only(left: 30, top: 100),
  //           child: Text(
  //             title,
  //             style: TextStyle(color: Colors.black),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
}
