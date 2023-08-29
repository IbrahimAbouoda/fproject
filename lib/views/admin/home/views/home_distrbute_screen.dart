import 'package:flutter/material.dart';
import 'package:fproject/core/utils/app_images.dart';

import '../../../../components/general_widgets_user.dart/app_bar_user.dart';
import '../../../../components/widgets/general_widgets/buttonApp.dart';
import '../../../../core/utils/constant.dart';
import '../../../../models/product_model.dart';
import '../../../../service/backend/product_service.dart';
import 'serch_products.dart';

class HomeAdmin extends StatelessWidget {
  final ProductService productService = ProductService();
  final Future<List<ProductModel>> products = ProductService().getProducts();

  HomeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      Assets.children,
      Assets.harim,
      Assets.man1,
      Assets.man2,
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBarUserPages(
          onPressed_serch: ()async {
            final products = await ProductService().getProducts();
            showSearch(
              context: context,
              delegate: ProductSearchDelegate(products),
            );
          },
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
                      return CardListProducts(product: product);
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

class CardListProducts extends StatelessWidget {
  const CardListProducts({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
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
          // CircleAvatar(
          //   backgroundImage: AssetImage("${product.imageUrl}"),
          // ),
        ],
      ),
    );
  }
}
