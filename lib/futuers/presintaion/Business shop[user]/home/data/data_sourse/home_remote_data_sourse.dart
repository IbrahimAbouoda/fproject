import 'package:fproject/core/utils/api_sevice.dart';
import 'package:fproject/futuers/presintaion/Business%20shop%5Buser%5D/home/data/models/product_model/product_model.dart';

import '../../domin/entitis/product_entity.dart';

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
