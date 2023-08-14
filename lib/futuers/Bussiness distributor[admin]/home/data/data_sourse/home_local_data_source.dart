import 'package:fproject/core/utils/constant.dart';
import 'package:hive/hive.dart';

import '../../domin/entitis/product_entity.dart';

abstract class HomeLocalDataSource {
  List<ProductEntity> fetchProducts();
  List<ProductEntity> fetchNewProducts();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<ProductEntity> fetchProducts() {
    var box = Hive.box<ProductEntity>(ConstantStayles.kFeatuerdBox);
    return box.values.toList();
  }
  
  @override
  List<ProductEntity> fetchNewProducts() {
    // TODO: implement fetchNewProducts
    throw UnimplementedError();
  }
}
