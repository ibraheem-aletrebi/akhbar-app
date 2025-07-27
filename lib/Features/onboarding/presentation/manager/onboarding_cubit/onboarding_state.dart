import 'package:equatable/equatable.dart';

class OnboardingState extends Equatable {
  final bool isFirstIndex;
  final bool isLastIndex;
  final int currentIndex;
  const OnboardingState({
    required this.isFirstIndex,
    required this.isLastIndex,
    required this.currentIndex,
  });
  @override
  List<Object?> get props => [isFirstIndex, isLastIndex, currentIndex];
}

class OnboardingInitialState extends OnboardingState {
  const OnboardingInitialState({
    required super.isFirstIndex,
    required super.isLastIndex,
    required super.currentIndex,
  });
}

class OnboardingUpdateState extends OnboardingState {
  const OnboardingUpdateState({
    required super.isFirstIndex,
    required super.isLastIndex,
    required super.currentIndex,
  });
}
