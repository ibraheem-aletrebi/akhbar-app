import 'package:akhbar_app/core/routing/routes.dart';
import 'package:akhbar_app/core/style/app_colors.dart';
import 'package:akhbar_app/core/style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  final TextEditingController _searchController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: _searchController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'this field is required';
                  }
                  return null;
                },
                style: AppStyles.textStyle16.copyWith(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: AppStyles.textStyle16.copyWith(color: Colors.grey),
                  filled: true,
                  fillColor: AppColors.kBorderColor,
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppColors.kBorderColor,
                      width: 1.2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppColors.kBorderColor,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppColors.kBorderColor,
                      width: 1.5,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: AppColors.kBorderColor,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  context.pushReplacement(
                    Routes.kSearchResultView,
                    extra: _searchController.text,
                  );
                }
              },
              child: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
