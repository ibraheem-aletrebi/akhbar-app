import 'package:akhbar_app/Features/home/artical_model/article.dart';
import 'package:akhbar_app/Features/home/presentation/components/artical_details_view_body.dart';
import 'package:flutter/material.dart';

class ArticalDetailsView extends StatelessWidget {
  const ArticalDetailsView({super.key, required this.artical});
  final Article artical;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ArticalDetailsViewBody(artical: artical)),
    );
  }
}
