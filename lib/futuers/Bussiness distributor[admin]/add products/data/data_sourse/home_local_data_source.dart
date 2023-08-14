import 'package:fproject/core/utils/constant.dart';
import 'package:hive/hive.dart';

import '../../../home/domin/entitis/product_entity.dart';

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
       var box = Hive.box<ProductEntity>(ConstantStayles.kNewBox);
      return box.values.toList();
  }
}
