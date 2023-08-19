class ProductEntity {
  final String productId;
  final String? image;
  final String name;
  final String type;
  final num? price;
  final num? volume;

  ProductEntity(
      {required this.productId,
      required this.image,
      required this.name,
      required this.type,
      required this.price,
      required this.volume});
}
