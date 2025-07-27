import 'package:akhbar_app/Features/home/artical_model/artical_model.dart';
import 'package:akhbar_app/Features/search/data/repo/search_repo.dart';
import 'package:akhbar_app/core/error/failure.dart';
import 'package:akhbar_app/core/utils/services/api/api_helper.dart';
import 'package:dartz/dartz.dart';

class SearchRepoImpl implements SearchRepo {
  SearchRepoImpl({required this.apiHelper});
  final ApiHelper apiHelper;

  @override
  Future<Either<Failure, ArticalModel>> fetchSearchResult({
    required String query,
  }) async {
    try {
      Map<String, dynamic> data = (await apiHelper.get(
        endPoint: '/top-headlines?q=$query',
      ));

      return right(ArticalModel.fromJson(data));
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
