  import 'package:hive/hive.dart';

import 'package:fproject/core/utils/constant.dart' show Constant;

Future<void> saveProductsData(products , String boxName) async {
  assert(products != null);
    var box = Hive.box(Constant.kFeatuerdBox);
    box.addAll(products);
  }
