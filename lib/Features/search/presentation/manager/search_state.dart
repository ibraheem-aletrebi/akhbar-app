part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoadingState extends SearchState {}

class SearchLoadedSuccesState extends SearchState {
  final List<Article> articales;

  const SearchLoadedSuccesState({required this.articales});
}

class SearchFailureState extends SearchState {
  final String errorMessage;

  const SearchFailureState({required this.errorMessage});
}
