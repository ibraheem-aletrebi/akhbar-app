part of 'category_news_cubit.dart';

abstract class CategoryNewsState extends Equatable {
  const CategoryNewsState();

  @override
  List<Object> get props => [];
}

class CategoryNewsInitial extends CategoryNewsState {}

class CategoryNewsLoadingState extends CategoryNewsState {}

class CategoryNewsLoadedSuccessState extends CategoryNewsState {
  final List<Article> articals;
  const CategoryNewsLoadedSuccessState({required this.articals});
}

class CategoryNewsFailureState extends CategoryNewsState {
  final String errorMessage;
  const CategoryNewsFailureState({required this.errorMessage});
}
