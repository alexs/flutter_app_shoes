import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_demo/models/product_model.dart';

class DetailPage extends StatelessWidget {
  DetailPage({@required this.product});

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepPurple[100],
        actions: [
          Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          SizedBox(width: 20.0)
          /*  Hero(
            tag: "Key_${product.id}",
            child: Image.asset(
              product.path,
              width: 60.0,
              height: 60.0,
            ),
          ), */
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.deepPurple[100],
            height: size.height * .40,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 90.0, left: 50.0, right: 50.0),
              child: Hero(
                tag: "Key_${product.id}",
                child: Image.asset(
                  product.path,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * .60,
              decoration: BoxDecoration(
                color: Color.fromRGBO(240, 241, 248, 1.0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
