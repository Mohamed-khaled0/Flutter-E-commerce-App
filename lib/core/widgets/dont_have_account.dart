import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/signup_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'لا تمتلك حساب؟ ',
            style:
                TextStyles.semiBold16.copyWith(color: AppColors.primaryColor),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushReplacementNamed(context, SignupView.routeName);
              },
            text: ' قم بإنشاء حساب',
            style: TextStyles.semiBold16.copyWith(color: Color(0XFF949D9E)),
          ),
        ],
      ),
    );
  }
}
