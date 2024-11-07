import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

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
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'لا تمنلك حساب؟ ',
                  style: TextStyles.semiBold16
                      .copyWith(color: AppColors.primaryColor),
                ),
                TextSpan(
                  text: ' قم بإنشاء حساب',
                  style:
                      TextStyles.semiBold16.copyWith(color: Color(0XFF949D9E)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
