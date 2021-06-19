import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../models/product_model.dart';

class CartPage extends StatefulWidget {
  CartPage({@required this.selectedProducts});

  final List<ProductModel> selectedProducts;

  @override
  _CartPage createState() => _CartPage();
}

class _CartPage extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              "Shopping cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 30),
            Column(
              children: getItemsWidgets(widget.selectedProducts),
            )
          ],
        ),
      ),
    );
  }

  getItemsWidgets(List<ProductModel> products) {
    List<Widget> widgetsArray = [];
    for (var i = 0; i < products.length; i++) {
      widgetsArray.add(getItemsSelectedList(products[i]));
      widgetsArray.add(
        SizedBox(height: 30),
      );
    }
    return widgetsArray;
  }

  getItemsSelectedList(ProductModel product) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 100,
          width: 100,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black12,
          ),
          child: Image.asset(product.path, fit: BoxFit.fitWidth),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product.type),
            Text(product.description),
            Row(
              children: [
                ButtonTheme(
                  minWidth: 5.0,
                  height: 30.0,
                  child: RaisedButton(
                    color: Colors.black12,
                    onPressed: () {},
                    child: Text("-"),
                  ),
                ),
                Text("1"),
                ButtonTheme(
                  minWidth: 5.0,
                  height: 30.0,
                  child: RaisedButton(
                    color: Colors.green,
                    onPressed: () {},
                    child: Text("+"),
                  ),
                ),
              ],
            )
          ],
        ),
        Text("\$" + product.price.toString()),
      ],
    );
  }
}
