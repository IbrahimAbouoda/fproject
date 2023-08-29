import 'package:hive/hive.dart';

import '../utils/constant.dart';


Future<void> saveProductsData(products, String boxName) async {
  assert(products != null);
  var box = Hive.box(ConstantStayles.kFeatuerdBox);
  box.addAll(products);
}
