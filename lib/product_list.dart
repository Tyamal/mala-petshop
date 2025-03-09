import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;

  Product(this.name, this.description, this.price);
}

class ProductList extends StatelessWidget {
  final List<Product> products = [
    Product('Dog Food', 'High-quality dog food', 25.99),
    Product('Cat Food', 'Nutritious cat food', 22.99),
    Product('Dog Toy', 'Durable dog toy', 15.99),
    Product('Cat Toy', 'Interactive cat toy', 12.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text(products[index].description),
            trailing: Text('\$${products[index].price}'),
            onTap: () {
              // Handle product tap
            },
          );
        },
      ),
    );
  }
}
