import 'package:fproject/core/utils/api_sevice.dart';
import 'package:fproject/core/utils/constant.dart';
import 'package:hive/hive.dart';
import '../../../../core/functions/save_products.dart';
import '../../domin/entitis/product_entity.dart';
import '../models/product_model/product_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<ProductEntity>> fetchFeaturedProduct();
}

class HmoeRemoteDataSourceImpl extends HomeRemoteDataSource {
  ApiServise apiServise;
  HmoeRemoteDataSourceImpl(this.apiServise);
  @override
  Future<List<ProductEntity>> fetchFeaturedProduct() async {
    var data = await apiServise.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=computer science');
    List<ProductEntity> products = getPorductsList(data);

    saveProductsData(products,Constant.kFeatuerdBox);
    return products;
  }


  List<ProductEntity> getPorductsList(Map<String, dynamic> data) {
    List<ProductEntity> products = [];

    for (var productsMap in data['items']) {
      products.add(ProductModel.fromJson(productsMap));
    }
    return products;
  }
}
