import 'package:akhbar_app/Features/home/artical_model/article.dart';
import 'package:akhbar_app/Features/search/data/repo/search_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  fetchSearchResult({required String query}) async {
    emit(SearchLoadingState());
    var result = await searchRepo.fetchSearchResult(query: query);
    result.fold(
      (failure) {
        emit(SearchFailureState(errorMessage: failure.errorMessage));
      },
      (articalModel) {
        emit(SearchLoadedSuccesState(articales: articalModel.articles!));
      },
    );
  }
}
