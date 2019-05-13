import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  // final so the value of products will never change after initialization
  // when and updates list gets sent in again, the whole thing builds anew
  final List<String> products;

  Products(
      [this.products =
          const []]); // By using this.products then incoming products list will equal this products list

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: products
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
