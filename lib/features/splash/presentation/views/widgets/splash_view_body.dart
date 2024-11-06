import 'package:e_commerce/core/services/shared_preferences_singletone.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(fit: BoxFit.fill, Assets.imagesSplashBottom),
      ],
    );
  }

  void executeNavigation() {
    bool isOnBoardingSeen = Prefs.getBool(KisOnBoardingSeen);

    Future.delayed(const Duration(seconds: 3), () {
      if (isOnBoardingSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }
}
