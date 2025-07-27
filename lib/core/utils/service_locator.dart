import 'package:akhbar_app/Features/home/data/repo/home_repo_imp.dart';
import 'package:akhbar_app/Features/search/data/repo/search_repo_impl.dart';
import 'package:akhbar_app/core/utils/services/api/api_helper.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiHelper>(ApiHelper(dio: getIt.get<Dio>()));
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(getIt.get<ApiHelper>()));
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(apiHelper: getIt.get<ApiHelper>()),
  );
}
