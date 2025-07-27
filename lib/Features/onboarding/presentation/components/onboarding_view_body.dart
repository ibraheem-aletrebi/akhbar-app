import 'package:akhbar_app/Features/onboarding/presentation/components/onboarding_action_section.dart';
import 'package:akhbar_app/Features/onboarding/presentation/components/onboarding_content_section.dart';
import 'package:akhbar_app/Features/onboarding/presentation/manager/onboarding_cubit/onboarding_controller.dart';
import 'package:akhbar_app/Features/onboarding/presentation/manager/onboarding_cubit/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocBuilder<OnboardingController, OnboardingState>(
        builder: (context, state) {
          return Column(
            children: [OnboardingContentSection(), OnboardingActionSection()],
          );
        },
      ),
    );
  }
}
