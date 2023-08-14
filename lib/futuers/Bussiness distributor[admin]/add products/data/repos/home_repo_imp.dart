import 'package:dartz/dartz.dart';
import 'package:fproject/core/errors/failuer.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/add%20products/data/data_sourse/home_local_data_source.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/add%20products/data/data_sourse/home_remote_data_sourse.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/add%20products/domin/repo/home_repo.dart';
import 'package:fproject/futuers/Bussiness%20distributor%5Badmin%5D/home/domin/entitis/product_entity.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;
  HomeRepoImpl(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});

  @override
  Future<Either<Failuer, List<ProductEntity>>> fetchFeaturedProduct() async {
    try {
      var productList = await homeRemoteDataSource.fetchFeaturedProduct();
      if (productList.isNotEmpty) {
        return right(productList.cast<ProductEntity>());
      }
      var products = await homeLocalDataSource.fetchProducts();
      return right(products);
    } on Exception catch (e) {
      return left(CachFailuer());
    }
  }
}
