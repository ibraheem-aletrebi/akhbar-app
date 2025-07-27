
import 'package:akhbar_app/Features/home/presentation/components/news_item_widget.dart';
import 'package:akhbar_app/Features/home/presentation/manager/news/news_cubit.dart';
import 'package:akhbar_app/core/utils/widgets/custom_error_widget.dart';
import 'package:akhbar_app/core/utils/widgets/hight_space.dart';
import 'package:akhbar_app/core/utils/widgets/loading_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsSliverListWidget extends StatelessWidget {
  const NewsSliverListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state is NewsFailureState) {
          return SliverToBoxAdapter(child: CustomErrorWidget(error: state.errorMessage));
        }
        if (state is NewsLoadedSuccessState) {
          return SliverList.separated(
            itemCount: state.articles.length,
            itemBuilder: (context, index) =>
                NewsItemWidget(article: state.articles[index]),
            separatorBuilder: (context, index) => HightSpace(8),
          );
        }
        return SliverToBoxAdapter(child: LoadingWidget());
      },
    );
  }
}
