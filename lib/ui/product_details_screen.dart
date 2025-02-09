

import 'package:flutter/material.dart';
import 'package:product_app/data/response/ProductResponse.dart';


class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductResponse product = ModalRoute.of(context)!.settings.arguments as ProductResponse;

    return Scaffold(
      appBar: AppBar(title: Text(product.title!)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.image!, height: 200),
            SizedBox(height: 16),
            Text(
              product.title!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              '\$${product.price}',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            SizedBox(height: 16),
            Text(product.description!),
          ],
        ),
      ),
    );
  }
}
