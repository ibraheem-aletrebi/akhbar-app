import 'package:akhbar_app/Features/home/artical_model/article.dart';
import 'package:akhbar_app/Features/home/data/repo/home_repo_imp.dart';
import 'package:akhbar_app/Features/home/presentation/manager/category_news/category_news_cubit.dart';
import 'package:akhbar_app/Features/home/presentation/manager/news/news_cubit.dart';
import 'package:akhbar_app/Features/home/presentation/manager/trending_news/trending_news_cubit.dart';
import 'package:akhbar_app/Features/home/presentation/view/artical_details_view.dart';
import 'package:akhbar_app/Features/home/presentation/view/category_view.dart';
import 'package:akhbar_app/Features/home/presentation/view/home_view.dart';
import 'package:akhbar_app/Features/onboarding/presentation/manager/onboarding_cubit/onboarding_controller.dart';
import 'package:akhbar_app/Features/onboarding/presentation/views/onboarding_view.dart';
import 'package:akhbar_app/Features/search/data/repo/search_repo_impl.dart';
import 'package:akhbar_app/Features/search/presentation/manager/search_cubit.dart';
import 'package:akhbar_app/Features/search/presentation/view/search_view.dart';
import 'package:akhbar_app/Features/search/presentation/view/search_view_result.dart';
import 'package:akhbar_app/Features/splash/presentation/view/splash_view.dart';
import 'package:akhbar_app/core/routing/routes.dart';
import 'package:akhbar_app/core/utils/services/api/api_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RouteManager {
  static final router = GoRouter(
    initialLocation: Routes.kSplashView,
    routes: [
      GoRoute(
        path: Routes.kSplashView,
        name: Routes.kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: Routes.kOnboardingView,
        name: Routes.kOnboardingView,
        builder: (context, state) => BlocProvider(
          create: (context) => OnboardingController(),
          child: const OnboardingView(),
        ),
      ),

      GoRoute(
        path: Routes.kHomeView,
        name: Routes.kHomeView,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  TrendingNewsCubit(HomeRepoImp(ApiHelper(dio: Dio())))
                    ..fetchTrendingNews(),
            ),
            BlocProvider(
              create: (context) =>
                  NewsCubit(HomeRepoImp(ApiHelper(dio: Dio())))
                    ..fetchNews(null),
            ),
          ],
          child: const HomeView(),
        ),
      ),

      GoRoute(
        path: Routes.kCategoryView,
        name: Routes.kCategoryView,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              CategoryNewsCubit(HomeRepoImp(ApiHelper(dio: Dio())))
                ..fetchCategoryNews(category: state.extra as String),
          child: CategoryView(category: state.extra as String),
        ),
      ),

      GoRoute(
        path: Routes.kSearchView,
        name: Routes.kSearchView,
        builder: (context, state) => const SearchView(),
      ),

      GoRoute(
        path: Routes.kSearchResultView,
        name: Routes.kSearchResultView,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SearchCubit(SearchRepoImpl(apiHelper: ApiHelper(dio: Dio()))),
          child: SearchViewResult(query: state.extra as String),
        ),
      ),
      GoRoute(
        path: Routes.kArticaleDetailsView,
        name: Routes.kArticaleDetailsView,
        builder: (context, state) =>
            ArticalDetailsView(artical: state.extra as Article),
      ),
    ],
  );
}
