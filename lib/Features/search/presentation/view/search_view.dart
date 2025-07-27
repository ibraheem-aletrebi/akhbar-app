import 'package:akhbar_app/Features/search/presentation/components/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search')),

      body: SearchViewBody(),
    );
  }
}
