import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/features/on_boarding/presentation/views/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              color: AppColors.primaryColor.withOpacity(.5)),
        ),
      ],
    );
  }
}
