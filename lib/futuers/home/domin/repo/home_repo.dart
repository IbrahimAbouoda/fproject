import 'package:dartz/dartz.dart';
import 'package:fproject/core/errors/failuer.dart';

import '../entitis/product_entity.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<ProductEntity>>> fetchFeaturedProduct();
}
