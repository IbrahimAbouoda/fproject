import 'package:dartz/dartz.dart';
import 'package:fproject/futuers/presintaion/Business%20shop%5Buser%5D/home/domin/repo/home_repo.dart';

import '../../../../../../core/errors/failuer.dart';
import '../entitis/product_entity.dart';

class FetchProductsUseCase {
  final HomeRepo homeRepo;

  FetchProductsUseCase(this.homeRepo);

  Future<Either<Failuer, List<ProductEntity>>> call() {
    //check permssion
    return homeRepo.fetchFeaturedProduct();
  }
}
