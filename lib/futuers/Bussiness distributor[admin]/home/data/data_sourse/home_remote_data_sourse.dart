import '../../../../../core/functions/save_products.dart';
import '../../../../../core/utils/api_sevice.dart';
import '../../../../../core/utils/constant.dart';
import '../../../../home/data/models/product_model/product_model.dart';
import '../../../../home/domin/entitis/product_entity.dart';

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

    saveProductsData(products, ConstantStayles.kFeatuerdBox);
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
