import 'package:flutter/material.dart';

import '../../../../components/general_widgets_user.dart/app_bar_user.dart';
import '../../../../components/widgets/general_widgets/buttonApp.dart';
import '../../../../core/utils/constant.dart';
import '../../../../models/product_model.dart';
import '../../../../service/backend/product_service.dart';

class HomeAdmin extends StatelessWidget {
  final ProductService productService = ProductService();
  final Future<List<ProductModel>> products = ProductService().getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBarUserPages(
          onPressed: () => Navigator.pushNamed(context, "/menuAdmin"),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<ProductModel>>(
              future: products,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text('No products available.'));
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final product = snapshot.data![index];
                      return Container(
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(
                            color: ConstantStayles.kPrimColor,
                          ),
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(product.name),
                            const SizedBox(width: 5),
                            Text("${product.price}"),
                            const SizedBox(width: 5),
                            Text("${product.quantity}"),
                            const SizedBox(width: 5),
                            CircleAvatar(
                              backgroundImage: NetworkImage(product.imageUrl!),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ButtonAppBar1(
              onTapHome: () => Navigator.pushNamed(context, "/homeAdmin"),
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: ConstantStayles.kPrimColor,
            onPressed: () {
              Navigator.pushNamed(context, "/AddProduct1");
            },
            child: const Icon(
              Icons.plus_one_outlined,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
