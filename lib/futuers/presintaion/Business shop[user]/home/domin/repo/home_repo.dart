import 'package:dartz/dartz.dart';
import 'package:fproject/core/errors/failuer.dart';
import 'package:fproject/futuers/presintaion/Business%20shop%5Buser%5D/home/domin/entitis/product_entity.dart';

abstract class HomeRepo {
  Future<Either<Failuer,List<ProductEntity>>> fetchFeaturedProduct();
}
