import 'package:hive/hive.dart';

Future<void> saveProductsData(products, String boxName) async {
  assert(products != null);
  var box = Hive.box(boxName);
  box.addAll(products);
}
