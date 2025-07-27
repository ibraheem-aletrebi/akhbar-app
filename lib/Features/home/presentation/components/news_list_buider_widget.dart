import 'package:akhbar_app/Features/home/presentation/components/news_item_widget.dart';
import 'package:akhbar_app/Features/home/presentation/manager/category_news/category_news_cubit.dart';
import 'package:akhbar_app/core/utils/widgets/custom_error_widget.dart';
import 'package:akhbar_app/core/utils/widgets/hight_space.dart';
import 'package:akhbar_app/core/utils/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsListBuiderWidget extends StatelessWidget {
  const NewsListBuiderWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryNewsCubit, CategoryNewsState>(
      builder: (context, state) {
        if (state is CategoryNewsFailureState) {
          return CustomErrorWidget(error: state.errorMessage);
        }
        if (state is CategoryNewsLoadedSuccessState) {
          return ListView.separated(
            itemCount: state.articals.length,
            itemBuilder: (context, index) =>
                NewsItemWidget(article: state.articals[index]),
            separatorBuilder: (context, index) => HightSpace(8),
          );
        }
        return LoadingWidget();
      },
    );
  }
}
