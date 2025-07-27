import 'package:akhbar_app/core/utils/asset_helper.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.asset(AssetHelper.kLoadingLottie));
    
  }
}
