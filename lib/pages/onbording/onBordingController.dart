import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:quotedemo/gen/assets.gen.dart';

import '../../models/onbording_model.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      //go to home page
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  void onAddButtonTapped(int index) {
    // use this to animate to the page
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );

    // or this to jump to it without animating
    pageController.jumpToPage(index);
  }

  List<OnBordingScreenModel> onboardingPages = [
    OnBordingScreenModel(
        imageAsset: Assets.images.onBordingOne.path,
        title: "Enjoy the Journey",
        subTitle: "It’s not about the destination"),
    OnBordingScreenModel(
        imageAsset: Assets.images.onBordingTwo.path,
        title: "Guided Motivation",
        subTitle: "Inspire progress and excitement"),
    OnBordingScreenModel(
        imageAsset: Assets.images.onBordingThree.path,
        title: "Compound your efforts",
        subTitle: "Build yourself up 1% better every day"),
  ];
}
