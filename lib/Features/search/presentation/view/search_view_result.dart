import 'package:akhbar_app/Features/search/presentation/components/search_view_result_body.dart';
import 'package:flutter/material.dart';

class SearchViewResult extends StatelessWidget {
  const SearchViewResult({super.key, required this.query});
  final String query;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Result')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SearchViewResultBody(query: query),
      ),
    );
  }
}
