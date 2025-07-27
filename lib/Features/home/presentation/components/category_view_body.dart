import 'package:akhbar_app/Features/home/presentation/components/news_list_buider_widget.dart';
import 'package:flutter/material.dart';


class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(16),
    child: NewsListBuiderWidget(),);
  }
}
