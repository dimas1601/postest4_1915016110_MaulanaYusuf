import 'package:flutter/material.dart';
import 'package:postest4_1915016110_maulana_yusuf/components/search_box.dart';
import 'package:postest4_1915016110_maulana_yusuf/constant.dart';
import 'package:postest4_1915016110_maulana_yusuf/models/product.dart';
import 'package:postest4_1915016110_maulana_yusuf/screens/product/components/product_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SearchBox(
            onChanged: (value) {},
          ),
          SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) => ProductCard(
                          itemIndex: index,
                          product: products[index],
                          press: () {},
                        )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Body2 extends StatelessWidget {
  const Body2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "Coming Soon",
          style: TextStyle(
              color: Colors.white, fontFamily: "Lobster", fontSize: 24),
        ),
      ),
    );
  }
}

class Body3 extends StatelessWidget {
  const Body3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "Coming Soon",
          style: TextStyle(
              color: Colors.white, fontFamily: "Lobster", fontSize: 24),
        ),
      ),
    );
  }
}

class Body4 extends StatelessWidget {
  const Body4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "Coming Soon",
          style: TextStyle(
              color: Colors.white, fontFamily: "Lobster", fontSize: 24),
        ),
      ),
    );
  }
}
