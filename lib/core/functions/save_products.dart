import 'package:hive/hive.dart';

import 'package:fproject/core/utils/constant.dart' show  ConstantStayles;

Future<void> saveProductsData(products, String boxName) async {
  assert(products != null);
  var box = Hive.box(ConstantStayles.kFeatuerdBox);
  box.addAll(products);
}
