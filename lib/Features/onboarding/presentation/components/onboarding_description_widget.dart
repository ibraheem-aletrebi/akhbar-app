import 'package:akhbar_app/Features/onboarding/model/onboarding_model.dart';
import 'package:akhbar_app/core/style/app_colors.dart';
import 'package:akhbar_app/core/utils/widgets/hight_space.dart';
import 'package:flutter/material.dart';

class OnboardingDescriptionWidget extends StatelessWidget {
  const OnboardingDescriptionWidget({super.key, required this.model});
  final OnboardingModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          model.title,
          style: TextTheme.of(
            context,
          ).headlineLarge?.copyWith(color: AppColors.kPrimaryColor),
        ),
        HightSpace(8),
        Text(
          model.description,
          style: TextTheme.of(
            context,
          ).headlineMedium?.copyWith(color: AppColors.kSecondaryColor),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
