import 'package:e_commerce/core/services/shared_preferences_singletone.dart';
import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/features/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.background,
    required this.title,
    required this.subTitle,
    required this.isVisable,
  });

  final String image, background, subTitle;
  final Widget title;
  final bool isVisable;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  background,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Prefs.setBool(KisOnBoardingSeen, true);
                  Navigator.pushReplacementNamed(context, LoginView.routeName);
                },
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Visibility(
                    visible: isVisable,
                    child: Text(
                      'تخط',
                      style: TextStyles.regular13.copyWith(
                        color: const Color.fromARGB(255, 129, 137, 138),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60,
        ),
        title,
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
