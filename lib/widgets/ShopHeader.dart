import 'package:flutter/material.dart';

class ShopHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Container(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  "Oficial Item",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 0),
                child: Text(
                  "Wallet",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.33,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Positioned(
                      left: 30,
                      bottom: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "R\$ 200,00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 0,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: Container(
                          child: Image.network(
                            'https://cdn.pixabay.com/photo/2016/05/03/07/21/wallet-1368646_1280.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
