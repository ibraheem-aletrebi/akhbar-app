import 'package:akhbar_app/core/utils/asset_helper.dart';

class OnboardingModel {
  final String title;
  final String description;
  final String mainImage;

  const OnboardingModel({
    required this.title,
    required this.description,
    required this.mainImage,
  });

  static const List<OnboardingModel> onboardingContentList = [
    OnboardingModel(
      title: 'Discover Top Stories',
      description:
          'Get the latest news from trusted sources, all in one place and always up to date.',
      mainImage: AssetHelper.kOnboarding1MainImage,
    ),
    OnboardingModel(
      title: 'Watch Engaging News Videos',
      description:
          'Go beyond headlines with video coverage that captures the full story in motion.',
      mainImage: AssetHelper.kOnboarding2MainImage,
    ),
    OnboardingModel(
      title: 'Share Stories with Others',
      description:
          'Spread the word—share important stories and updates directly with friends and family.',
      mainImage: AssetHelper.kOnboarding3MainImage,
    ),
    OnboardingModel(
      title: 'Jump Right In',
      description:
          'Your personalized news experience is ready. Swipe through the latest headlines and enjoy!',
      mainImage: AssetHelper.kOnboarding4MainImage,
    ),
  ];
}
