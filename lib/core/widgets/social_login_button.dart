import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.onPressed});

  final String icon;
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: SizedBox(
          width: double.infinity,
          height: 55,
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: Color(0xffdcdede),
                  width: 1,
                ),
              ),
            ),
            onPressed: onPressed,
            child: ListTile(
              visualDensity: const VisualDensity(
                vertical: VisualDensity.minimumDensity,
              ),
              leading: SvgPicture.asset(icon),
              title: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyles.semiBold16,
              ),
            ),
          )),
    );
  }
}
