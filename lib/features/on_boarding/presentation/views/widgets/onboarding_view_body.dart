import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce/features/on_boarding/presentation/views/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    // Listen on current page
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      print("Current page: $currentPage"); // Debugging line
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              color: currentPage == 1
                  ? AppColors.primaryColor
                  : AppColors.primaryColor.withOpacity(.5)),
        ),
        SizedBox(
          height: 23,
        ),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.all(kHorizintalPadding),
            child: CustomButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, LoginView.routeName);
                },
                text: 'ابدأ الان'),
          ),
        ),
        SizedBox(
          height: 43,
        )
      ],
    );
  }
}
