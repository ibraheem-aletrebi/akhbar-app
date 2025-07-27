import 'package:akhbar_app/core/routing/routes.dart';
import 'package:akhbar_app/core/utils/asset_helper.dart';
import 'package:akhbar_app/core/utils/services/preference/perference_manager.dart';
import 'package:akhbar_app/core/utils/services/preference/storage_key.dart';
import 'package:akhbar_app/core/utils/widgets/hight_space.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SplashViewBodyWidget extends StatefulWidget {
  const SplashViewBodyWidget({super.key});

  @override
  State<SplashViewBodyWidget> createState() => _SplashViewBodyWidgetState();
}

class _SplashViewBodyWidgetState extends State<SplashViewBodyWidget> {
  @override
  void initState() {
    super.initState();
    navigateTo();
  }

  void navigateTo() {
    Future.delayed(const Duration(seconds: 2), () async {
      final showOnboarding = PreferenceManager().getBool(
        StorageKey.kShowOnboarding,
      );
      if (showOnboarding == false) {
        await PreferenceManager().setBool(StorageKey.kShowOnboarding, true);
        context.pushReplacement(Routes.kOnboardingView);
      } else {
        context.pushReplacement(Routes.kHomeView);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(AssetHelper.kSplashLottie, width: 200),
          HightSpace(48),
          Text('INFORMED TODAY', style: TextTheme.of(context).bodyLarge),
          Text('Every Story Matters.', style: TextTheme.of(context).bodyMedium),
        ],
      ),
    );
  }
}
