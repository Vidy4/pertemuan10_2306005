import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:pertemuan10_2306005/models/product_model.dart';

class ProductDetailPages extends StatelessWidget {
  final ProductModel product;

  const ProductDetailPages({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Produk"),),
      body: Padding(
        padding: .all(20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            product.image.isNotEmpty
              ? Image.memory(
                base64Decode(product.image),
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              )
              : const Icon(Icons.image, size: 120),
            Text(
              product.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              )
            ),
            const SizedBox(height: 10),
            Text("Rp ${product.price}"),
            const SizedBox(height: 10),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}