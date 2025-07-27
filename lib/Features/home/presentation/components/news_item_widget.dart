import 'package:akhbar_app/Features/home/artical_model/article.dart';
import 'package:akhbar_app/core/routing/routes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class NewsItemWidget extends StatelessWidget {
  const NewsItemWidget({super.key, required this.article});
  final Article article;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(Routes.kArticaleDetailsView ,extra: article),
      child: Row(
        spacing: 8,
        children: [
          Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: CachedNetworkImage(
              imageUrl:
                  article.urlToImage ??
                  'https://i.pinimg.com/736x/17/a5/15/17a51563a6429a35f197ecb851b8a59a.jpg',
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  article.title ?? 'Apple Unveils Revolutionary AI Features ',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextTheme.of(context).titleMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        article.author ?? 'ibraheem_al-etrebi',
                        overflow: TextOverflow.ellipsis,

                        style: TextTheme.of(context).bodySmall,
                      ),
                    ),
                    Text(
                      formatedDate(article.publishedAt!),
                      overflow: TextOverflow.ellipsis,
                      style: TextTheme.of(context).bodySmall,
                    ),
                  ],
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
