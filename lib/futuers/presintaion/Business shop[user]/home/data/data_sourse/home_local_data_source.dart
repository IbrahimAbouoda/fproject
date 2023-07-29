import 'package:fproject/futuers/presintaion/Business%20shop%5Buser%5D/home/domin/entitis/product_entity.dart';

abstract class HomeLocalDataSource {
  List<ProductEntity> fetchProducts();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<ProductEntity> fetchProducts() {
    // TODO: implement fetchProducts
    throw UnimplementedError();
  }

}
