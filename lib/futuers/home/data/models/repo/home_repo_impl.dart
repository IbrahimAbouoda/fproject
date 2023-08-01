import 'package:dartz/dartz.dart';
import 'package:fproject/core/errors/failuer.dart';
import 'package:fproject/futuers/home/domin/entitis/product_entity.dart';
import 'package:fproject/futuers/home/domin/repo/home_repo.dart';

class HomeRpoImpl extends HomeRepo {
  @override
  Future<Either<Failuer, List<ProductEntity>>> fetchFeaturedProduct() {
    
    throw UnimplementedError();
  }
  
}
