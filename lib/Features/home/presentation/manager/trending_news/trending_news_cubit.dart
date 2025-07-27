import 'package:akhbar_app/Features/home/artical_model/article.dart';
import 'package:akhbar_app/Features/home/data/repo/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'trending_news_state.dart';

class TrendingNewsCubit extends Cubit<TrendingNewsState> {
  TrendingNewsCubit(this.homeRepo) : super(TrendingNewsInitial());
  final HomeRepo homeRepo;

  fetchTrendingNews() async {
    emit(TrendingNewsLoading());
    var result = await homeRepo.fetchTrendingNews();
    result.fold(
      (failure) {
        emit(TrendingNewsFailure(errorMessage: failure.errorMessage));
      },
      (model) {
        emit(TrendingNewsLoadedSucces(articles: model.articles!));
      },
    );
  }
}
