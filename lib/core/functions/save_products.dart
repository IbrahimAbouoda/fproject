  import 'package:hive/hive.dart';

import '../../futuers/home/domin/entitis/product_entity.dart';
import '../utils/constant.dart';

void saveProductsData(List<ProductEntity> products , String boxName) {
    var box = Hive.box(Constant.kFeatuerdBox);
    box.addAll(products);
  }
