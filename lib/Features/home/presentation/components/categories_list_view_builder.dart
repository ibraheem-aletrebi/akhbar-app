import 'package:akhbar_app/Features/home/presentation/components/category_item_widget.dart';
import 'package:flutter/material.dart';

class CategoriesListViewBuilder extends StatelessWidget {
  const CategoriesListViewBuilder({super.key});

  final List<String> categories = const [
    'technology',
    'science',
    'health',
    'business',
    'sports',
    'entertainment',
  ];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 80,
        child: ListView.separated(
          padding: EdgeInsets.all(16),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              CategoryItemWidget(category: categories[index]),
          separatorBuilder: (context, index) => SizedBox(width: 8),
          itemCount: categories.length,
        ),
      ),
    );
  }
}
