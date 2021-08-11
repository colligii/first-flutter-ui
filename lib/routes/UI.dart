import 'package:flutter/material.dart';
import '../widgets/ShopHeader.dart';
import '../widgets/ShopInfo.dart';

class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            print("ENTER");
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Search");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("Cart");
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ColoredBox(
          color: Colors.blue,
          child: Stack(
            children: [
              ShopInfo(),
              ShopHeader(),
            ],
          ),
        ),
      ),
    );
  }
}
