import 'package:akhbar_app/Features/home/artical_model/article.dart';
import 'package:akhbar_app/core/utils/widgets/hight_space.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ArticalDetailsViewBody extends StatelessWidget {
  const ArticalDetailsViewBody({super.key, required this.artical});
  final Article artical;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  CachedNetworkImage(
                    imageUrl: artical.urlToImage ?? ' ',
                    placeholder: (context, url) => Center(
                      child: CircularProgressIndicator(color: Colors.blue),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),

                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      shape: CircleBorder(),
                      side: BorderSide(color: Colors.white),
                    ),
                    onPressed: () {
                      context.pop();
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                ],
              ),
              HightSpace(16),
              Padding(
                padding: const EdgeInsets.all(8.0),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      artical.title ?? ' ',
                      style: TextTheme.of(context).titleMedium,
                    ),
                    HightSpace(8),
                    Text(
                      artical.description ?? ' ',
                      style: TextTheme.of(context).titleSmall,
                    ),
                    HightSpace(16),

                    Text(
                      artical.author ?? 'ibraheem_al-etrebi',
                      overflow: TextOverflow.ellipsis,

                      style: TextTheme.of(context).bodySmall,
                    ),
                    HightSpace(8),
                    Text(
                      formatedDate(artical.publishedAt!),
                      overflow: TextOverflow.ellipsis,
                      style: TextTheme.of(context).bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }

  String formatedDate(String date) {
    return DateFormat('MMM d, y').format(DateTime.parse(date));
  }
}
