part of 'news_cubit.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

class NewsInitial extends NewsState {}

class NewsLoadingState extends NewsState {}

class NewsLoadedSuccessState extends NewsState {
  final List<Article> articles;

  const NewsLoadedSuccessState({required this.articles});
}

class NewsFailureState extends NewsState {
  final String errorMessage;
  const NewsFailureState({required this.errorMessage});
}
