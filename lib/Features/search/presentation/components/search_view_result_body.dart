import 'package:akhbar_app/Features/home/presentation/components/news_item_widget.dart';
import 'package:akhbar_app/Features/search/presentation/manager/search_cubit.dart';
import 'package:akhbar_app/core/utils/asset_helper.dart';
import 'package:akhbar_app/core/utils/widgets/custom_error_widget.dart';
import 'package:akhbar_app/core/utils/widgets/hight_space.dart';
import 'package:akhbar_app/core/utils/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewResultBody extends StatefulWidget {
  const SearchViewResultBody({super.key, required this.query});
  final String query;
  @override
  State<SearchViewResultBody> createState() => _SearchViewResultBodyState();
}

class _SearchViewResultBodyState extends State<SearchViewResultBody> {
  @override
  void initState() {
    BlocProvider.of<SearchCubit>(
      context,
    ).fetchSearchResult(query: widget.query);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchFailureState) {
          return CustomErrorWidget(error: state.errorMessage);
        }
        if (state is SearchLoadedSuccesState) {
          if (state.articales.isEmpty) {
            return Center(child: Image.asset(AssetHelper.knoResult));
          } else {
            return ListView.separated(
              itemCount: state.articales.length,
              itemBuilder: (context, index) =>
                  NewsItemWidget(article: state.articales[index]),
              separatorBuilder: (context, index) => HightSpace(8),
            );
          }
        }
        return LoadingWidget();
      },
    );
  }
}
