import 'package:e_commers/screen/home/model/home_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final ProductsModel product = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title ?? 'Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.network("${product.thumbnail}")),
              const SizedBox(height: 16.0),
              Text(
                "${product.title}",
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              Text(
                '\$ ${product.price}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8.0),
              Text(
                "${product.description}",
                style: const TextStyle(fontSize: 16),
              ),
              // Add more details as needed
            ],
          ),
        ),
      ),
    );
  }
}
