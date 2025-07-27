import 'package:akhbar_app/Features/home/presentation/components/category_view_body.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$category News'),
        titleSpacing: 0,
      ),
      body: CategoryViewBody(),
    );
  }
}
