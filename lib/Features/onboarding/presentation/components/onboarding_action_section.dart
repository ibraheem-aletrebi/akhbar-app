import 'package:akhbar_app/Features/onboarding/presentation/manager/onboarding_cubit/onboarding_controller.dart';
import 'package:akhbar_app/Features/onboarding/presentation/manager/onboarding_cubit/onboarding_state.dart';
import 'package:akhbar_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OnboardingActionSection extends StatelessWidget {
  const OnboardingActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingController, OnboardingState>(
      builder: (context, state) {
        final controller = BlocProvider.of<OnboardingController>(context);
        return Row(
          children: [
            if (!state.isFirstIndex)
              ElevatedButton(
                onPressed: () {
                  controller.goToBack();
                },
                child: Text('Back'),
              ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                if (!state.isLastIndex) {
                  controller.goToNext();
                } else {
                  context.pushReplacement(Routes.kHomeView);
                }
              },
              child: Text(state.isLastIndex ? 'Let\'s Get Started' : 'Next'),
            ),
          ],
        );
      },
    );
  }
}
