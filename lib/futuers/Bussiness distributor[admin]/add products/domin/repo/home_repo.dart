import 'package:dartz/dartz.dart';
import 'package:fproject/core/errors/failuer.dart';

import '../../../home/domin/entitis/product_entity.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<ProductEntity>>> fetchFeaturedProduct();
}
