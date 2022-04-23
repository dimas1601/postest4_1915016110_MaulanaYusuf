import 'package:flutter/material.dart';
import 'package:postest4_1915016110_maulana_yusuf/constant.dart';
import 'package:postest4_1915016110_maulana_yusuf/screens/product/components/body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: kPrimaryColor,
          appBar: buildAppBar(),
          body: TabBarView(children: [Body(), Body2(), Body3(), Body4()])),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text("Dashboard"),
      centerTitle: true,
      bottom: TabBar(tabs: [
        Tab(
          text: "All",
        ),
        Tab(
          text: "Chair",
        ),
        Tab(
          text: "Table",
        ),
        Tab(
          text: "Sofa",
        ),
      ]),
    );
  }
}
