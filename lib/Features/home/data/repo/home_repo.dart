import 'package:akhbar_app/Features/home/artical_model/artical_model.dart';

import 'package:akhbar_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, ArticalModel>> fetchTrendingNews();
  Future<Either<Failure, ArticalModel>> fetchGeneralNews();
  Future<Either<Failure, ArticalModel>> fetchCategoryNews(String category);
}
