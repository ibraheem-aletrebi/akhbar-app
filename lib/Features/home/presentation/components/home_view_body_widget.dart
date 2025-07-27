import 'package:akhbar_app/Features/home/presentation/components/categories_list_view_builder.dart';
import 'package:akhbar_app/Features/home/presentation/components/news_sliver_list_widget.dart';
import 'package:akhbar_app/Features/home/presentation/components/trending_news_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBodyWidget extends StatefulWidget {
  const HomeViewBodyWidget({super.key});

  @override
  State<HomeViewBodyWidget> createState() => _HomeViewBodyWidgetState();
}

class _HomeViewBodyWidgetState extends State<HomeViewBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CategoriesListViewBuilder(),
        TrendingNewsWidget(),
        SliverPadding(
          padding: EdgeInsets.all(16),
          sliver: NewsSliverListWidget(),
        ),
      ],
    );
  }
}
