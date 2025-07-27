import 'package:akhbar_app/Features/home/artical_model/article.dart';
import 'package:akhbar_app/Features/home/data/repo/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.homeRepo) : super(NewsInitial());

  final HomeRepo homeRepo;

  fetchNews() async {
    emit(NewsLoadingState());
    var data = await homeRepo.fetchGeneralNews();

    data.fold(
      (failure) {
        emit(NewsFailureState(errorMessage: failure.errorMessage));
      },
      (articalModel) {
        emit(NewsLoadedSuccessState(articles: articalModel.articles!));
      },
    );
  }
}
