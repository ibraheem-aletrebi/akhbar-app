import 'package:akhbar_app/Features/onboarding/model/onboarding_model.dart';
import 'package:akhbar_app/Features/onboarding/presentation/components/onboarding_description_widget.dart';
import 'package:akhbar_app/Features/onboarding/presentation/components/onboarding_smooth_page_indicator_widget.dart';
import 'package:akhbar_app/core/utils/widgets/hight_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPageViewItemWidget extends StatelessWidget {
  const OnboardingPageViewItemWidget({super.key, required this.model});
  final OnboardingModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(model.mainImage, width: 300, height: 300),
        HightSpace(24),
        OnboardingSmoothPageIndicatorWidget(),
        HightSpace(24),
        OnboardingDescriptionWidget(model: model),
      ],
    );
  }
}
