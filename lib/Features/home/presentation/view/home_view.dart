import 'package:akhbar_app/Features/home/presentation/components/home_view_body_widget.dart';
import 'package:akhbar_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
        actions: [
          IconButton(
            onPressed: () {
              context.push(Routes.kSearchView);
            },
            icon: Icon(Icons.search, color: Color(0xFFFFFFFF)),
          ),
        ],
      ),
      body: HomeViewBodyWidget(),
    );
  }
}
