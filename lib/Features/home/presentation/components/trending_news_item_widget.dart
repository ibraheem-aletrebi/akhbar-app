import 'package:akhbar_app/Features/home/artical_model/article.dart';
import 'package:akhbar_app/core/routing/routes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TrendingNewsItemWidget extends StatelessWidget {
  const TrendingNewsItemWidget({super.key, required this.article});
  final Article article;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Routes.kArticaleDetailsView, extra: article);
      },
      child: Container(
        width: 360,
        height: 200,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl:
                  article.urlToImage ??
                  'https://i.pinimg.com/736x/17/a5/15/17a51563a6429a35f197ecb851b8a59a.jpg',
              fit: BoxFit.cover,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                color: Colors.black.withValues(alpha: 0.5, red: .1),
                child: Text(
                  article.title ?? 'Apple Unveils Revolutionary AI Features ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextTheme.of(
                    context,
                  ).titleMedium?.copyWith(color: Color(0xFFFFFFFF)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
