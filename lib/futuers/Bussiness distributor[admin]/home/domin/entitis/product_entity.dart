import 'package:hive/hive.dart' show BinaryReader, BinaryWriter, HiveField, HiveType, TypeAdapter;
part 'product_entity.g.dart';
@HiveType(typeId: 0)
class ProductEntity {
  @HiveField(0)
  final String productId;
@HiveField(1)
  final String? image;
@HiveField(2)
  final String name;
@HiveField(3)
  final String type;
@HiveField(4)
  final num? price;
@HiveField(5)
  final num? volume;

  ProductEntity(
      {required this.productId,
      required this.image,
      required this.name,
      required this.type,
      required this.price,
      required this.volume});
}
