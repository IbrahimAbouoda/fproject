import 'package:dartz/dartz.dart';
import '../../../../../../core/errors/failuer.dart';
import '../../../../../../core/use_case/use_case.dart';
import '../entitis/product_entity.dart';
import '../repo/home_repo.dart';

class FetchProductsUseCase extends UseCase<List<ProductEntity>, void> {
  final HomeRepo homeRepo;

  FetchProductsUseCase(this.homeRepo);

  @override
  Future<Either<Failuer, List<ProductEntity>>> call([void parameter]) async {
    return await homeRepo.fetchFeaturedProduct();
  }
}
