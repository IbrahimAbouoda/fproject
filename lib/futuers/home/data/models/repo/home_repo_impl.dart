import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
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
      var productsList = homeLocalDataSource.fetchProducts();
      if (productsList.isNotEmpty) {
        return right(productsList);
      }
      var products = await homeRemoteDataSource.fetchFeaturedProduct();

      return right(products.cast<ProductEntity>());
    } on Exception catch (e) {
      // ignore: deprecated_member_use
      if (e is DioError) {
        return left(ServerFailuer(e.toString()));
      }
    }
    return fetchFeaturedProduct();
    ///////////////////// مراجعة
  }
}
