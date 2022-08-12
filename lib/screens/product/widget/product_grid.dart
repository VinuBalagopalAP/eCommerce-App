import 'package:flutter/material.dart';

import '../../../models/product_model.dart';
import '../../../screens/product/widget/product_items.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    super.key,
    required this.loadedProducts,
  });

  final List<ProductModel> loadedProducts;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: loadedProducts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ProductItem(
        id: loadedProducts[i].id,
        title: loadedProducts[i].title,
        imageUrl: loadedProducts[i].imageUrl,
      ),
    );
  }
}
