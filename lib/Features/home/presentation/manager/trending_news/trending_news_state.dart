part of 'trending_news_cubit.dart';

abstract class TrendingNewsState extends Equatable {
  const TrendingNewsState();

  @override
  List<Object> get props => [];
}

class TrendingNewsInitial extends TrendingNewsState {}

class TrendingNewsLoading extends TrendingNewsState {}

class TrendingNewsLoadedSucces extends TrendingNewsState {
  final List<Article> articles;
  const TrendingNewsLoadedSucces({required this.articles});
}

class TrendingNewsFailure extends TrendingNewsState {
  final String errorMessage;
  const TrendingNewsFailure({required this.errorMessage});
}
