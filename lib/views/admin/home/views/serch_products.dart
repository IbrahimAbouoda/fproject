import '../../../../models/product_model.dart';
import 'package:flutter/material.dart';

class ProductSearchDelegate extends SearchDelegate<ProductModel> {
  final List<ProductModel> products;

  ProductSearchDelegate(this.products);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context,products.first);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final filteredProducts = products
        .where((product) =>
            product.name.toLowerCase().contains(query.toLowerCase()) ||
            product.tags.any(
                (tag) => tag.name.toLowerCase().contains(query.toLowerCase())))
        .toList();

    return ListView.builder(
      itemCount: filteredProducts.length,
      itemBuilder: (context, index) {
        final product = filteredProducts[index];
        // Build your UI for each product here
        return ListTile(
          title: Text(product.name),
          // Other details of the product
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final tagSuggestions = products
        .expand((product) => product.tags)
        .where((tag) => tag.name.toLowerCase().contains(query.toLowerCase()))
        .toSet()
        .toList();

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4,
        crossAxisSpacing: 20,
        mainAxisExtent: 20,
        mainAxisSpacing: 10,
      ),
      itemCount: tagSuggestions.length,
      itemBuilder: (context, index) {
        final tag = tagSuggestions[index];
        return ListTile(
          leading: const Icon(
            Icons.tag_sharp,
            size: 20,
          ),
          title: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.grey),
              child: Text(tag.name)),
          onTap: () {
            // Perform search by tag
            query = tag.name; // Set the query to the selected tag
            showResults(context);
          },
        );
      },
    );
  }
}
