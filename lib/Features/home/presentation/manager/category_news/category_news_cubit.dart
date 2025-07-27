import 'package:akhbar_app/Features/home/artical_model/article.dart';
import 'package:akhbar_app/Features/home/data/repo/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'category_news_state.dart';

class CategoryNewsCubit extends Cubit<CategoryNewsState> {
  CategoryNewsCubit(this.homeRepo) : super(CategoryNewsInitial());

  final HomeRepo homeRepo;

  fetchCategoryNews({required String category}) async {
    emit(CategoryNewsLoadingState());
    var data = await homeRepo.fetchCategoryNews(category);

    data.fold(
      (failure) {
        emit(CategoryNewsFailureState(errorMessage: failure.errorMessage));
      },
      (articalModel) {
        emit(CategoryNewsLoadedSuccessState(articals: articalModel.articles!));
      },
    );
  }
}
