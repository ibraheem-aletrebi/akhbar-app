import 'package:akhbar_app/Features/home/artical_model/artical_model.dart';

import 'package:akhbar_app/Features/home/data/repo/home_repo.dart';
import 'package:akhbar_app/core/error/failure.dart';
import 'package:akhbar_app/core/utils/services/api/api_helper.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo {
  final ApiHelper _apiHelper;

  const HomeRepoImp(this._apiHelper);
  @override
  Future<Either<Failure, ArticalModel>> fetchGeneralNews(
 
  ) async {
    try {
      var data = await _apiHelper.get(
        endPoint: '/top-headlines?category=general',
      );
      return right(ArticalModel.fromJson(data));
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ArticalModel>> fetchTrendingNews() async {
    try {
      var data = await _apiHelper.get(endPoint: '/everything?q=trending');
      return right(ArticalModel.fromJson(data));
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, ArticalModel>> fetchCategoryNews(String category)async {
try {
      var data = await _apiHelper.get(
        endPoint: '/top-headlines?category=$category',
      );
      return right(ArticalModel.fromJson(data));
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
