import 'package:akhbar_app/Features/onboarding/presentation/components/onboarding_page_view_item_widget.dart';
import 'package:akhbar_app/Features/onboarding/presentation/manager/onboarding_cubit/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingContentSection extends StatelessWidget {
  const OnboardingContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = BlocProvider.of<OnboardingController>(context);
    return Expanded(
      child: PageView.builder(
        onPageChanged: (value) {
          controller.onboardingUpdate(value);
        },
        controller: controller.pageController,
        itemBuilder: (context, index) {
          return OnboardingPageViewItemWidget(
            model: controller.onBoardingContentsList[index],
          );
        },
        itemCount: controller.onBoardingContentsList.length,
      ),
    );
  }
}
