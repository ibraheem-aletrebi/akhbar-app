import 'package:akhbar_app/core/routing/routes.dart';
import 'package:akhbar_app/core/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Routes.kCategoryView, extra: category);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.kBorderColor),
        ),
        child: Text(category, style: TextTheme.of(context).titleMedium),
      ),
    );
  }
}
