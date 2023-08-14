import 'package:fproject/core/utils/api_sevice.dart';
import 'package:fproject/core/utils/constant.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/add%20products/domin/entitis/product_entity.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/add%20products/models/product_model/product_model.dart';
import 'package:hive/hive.dart';

import '../../../../../core/functions/save_products.dart';

abstract class HomeRemoteDataSource {
  Future<List<ProductEntity>> fetchFeaturedProduct();
  Future<List<ProductEntity>> fetchFeaturedNewProduct();
}

class HmoeRemoteDataSourceImpl extends HomeRemoteDataSource {
  ApiServise apiServise;

  HmoeRemoteDataSourceImpl(this.apiServise);

  @override
  Future<List<ProductEntity>> fetchFeaturedProduct() async {
    var data = await apiServise.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=computer science');
    List<ProductEntity> products = getPorductsList(data);

    saveProductsData(products,ConstantStayles.kFeatuerdBox);

    return products;
  }

  @override
  Future<List<ProductEntity>> fetchFeaturedNewProduct() async {
    var data = await apiServise.get(
        endPoint:
            'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
    List<ProductEntity> products = getPorductsList(data);
    saveProductsData(products,ConstantStayles.kNewBox);
    return products;
  }

  List<ProductEntity> getPorductsList(Map<String, dynamic> data) {
    List<ProductEntity> products = [];

    for (var productsMap in data['items']) {
      products.add(ProductModel.fromJson(productsMap) as ProductEntity);
    }
    return products;
  }
}
