import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_field.dart';
import 'package:e_commerce/core/widgets/dont_have_account.dart';
import 'package:e_commerce/core/widgets/or_divider.dart';
import 'package:e_commerce/core/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            hintText: 'البريد الالكتروني',
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'كلمة المرور ',
            textInputType: TextInputType.visiblePassword,
            suffixIcon: Icon(Icons.remove_red_eye),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            'نسيت كلمة المرور ؟ ',
            style: TextStyles.semiBold13
                .copyWith(color: AppColors.lightPrimaryColor),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
            child: CustomButton(onPressed: () {}, text: 'تسجيل الدخول'),
          ),
          SizedBox(
            height: 16,
          ),
          DontHaveAnAccountWidget(),
          SizedBox(
            height: 20,
          ),
          OrDivider(),
          SizedBox(
            height: 20,
          ),
          SocialLoginButton(
              icon: Assets.imagesGoogleIcon,
              title: 'تسجيل  بواسطة جوجل',
              onPressed: () {}),
          SizedBox(
            height: 10,
          ),
          SocialLoginButton(
            icon: Assets.imagesFacebookIcon,
            title: 'تسجيل  بواسطة فيسبوك',
            onPressed: () {},
          ),
          SizedBox(
            height: 10,
          ),
          SocialLoginButton(
            icon: Assets.imagesApplIcon,
            title: 'تسجيل  بواسطة أبل',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
