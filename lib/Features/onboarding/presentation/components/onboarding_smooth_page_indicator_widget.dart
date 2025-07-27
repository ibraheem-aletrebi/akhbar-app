import 'package:akhbar_app/Features/onboarding/presentation/manager/onboarding_cubit/onboarding_controller.dart';
import 'package:akhbar_app/core/style/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingSmoothPageIndicatorWidget extends StatelessWidget {
  const OnboardingSmoothPageIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<OnboardingController>(context);
    return SmoothPageIndicator(
      controller: controller.pageController,
      count: controller.onBoardingContentsList.length,
      effect: WormEffect(
        spacing: 8.0,
        radius: 4.0,
        dotWidth: 24.0,
        dotHeight: 10.0,
        paintStyle: PaintingStyle.stroke,
        strokeWidth: 1.5,
        dotColor: AppColors.kBorderColor,
        activeDotColor: AppColors.kPrimaryColor,
      ),
    );
  }
}
