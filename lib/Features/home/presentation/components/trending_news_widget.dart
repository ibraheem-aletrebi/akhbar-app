import 'package:akhbar_app/Features/home/presentation/components/trending_news_item_widget.dart';
import 'package:akhbar_app/Features/home/presentation/manager/trending_news/trending_news_cubit.dart';
import 'package:akhbar_app/core/utils/widgets/custom_error_widget.dart';
import 'package:akhbar_app/core/utils/widgets/loading_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingNewsWidget extends StatelessWidget {
  const TrendingNewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<TrendingNewsCubit, TrendingNewsState>(
        builder: (context, state) {
          if (state is TrendingNewsFailure) {
            return CustomErrorWidget(error: state.errorMessage);
          }
          if (state is TrendingNewsLoadedSucces) {
            return CarouselSlider.builder(
              options: CarouselOptions(autoPlay: true, enlargeCenterPage: true),
              itemCount: 10,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      TrendingNewsItemWidget(
                        article: state.articles[itemIndex],
                      ),
            );
          }
          return LoadingWidget();
        },
      ),
    );
  }
}
