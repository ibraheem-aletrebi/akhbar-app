import 'package:akhbar_app/Features/home/artical_model/artical_model.dart';
import 'package:akhbar_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure,ArticalModel>> fetchSearchResult({required String query});
}
