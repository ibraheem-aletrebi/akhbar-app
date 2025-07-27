import 'package:akhbar_app/Features/onboarding/model/onboarding_model.dart';
import 'package:akhbar_app/Features/onboarding/presentation/manager/onboarding_cubit/onboarding_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

class OnboardingController extends Cubit<OnboardingState> {
  OnboardingController()
    : super(
        OnboardingInitialState(
          currentIndex: 0,
          isFirstIndex: true,
          isLastIndex: false,
        ),
      );
  int currentIndex = 0;
  PageController pageController = PageController();
  final List<OnboardingModel> onBoardingContentsList =
      OnboardingModel.onboardingContentList;

  onboardingUpdate(int value) {
    emit(
      OnboardingUpdateState(
        isLastIndex: (value == onBoardingContentsList.length - 1),
        isFirstIndex: (value == 0),
        currentIndex: currentIndex,
      ),
    );
  }

  goToNext() {
    pageController.nextPage(
      duration: Duration(milliseconds: 400),
      curve: Curves.ease,
    );
    onboardingUpdate(currentIndex + 1);
  }

  goToBack() {
    pageController.previousPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.ease,
    );
    onboardingUpdate(currentIndex - 1);
  }
}
