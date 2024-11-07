import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_field.dart';
import 'package:e_commerce/core/widgets/dont_have_account.dart';
import 'package:e_commerce/core/widgets/have_an_account.dart';
import 'package:e_commerce/core/widgets/terms_and_conditions.dart';
import 'package:e_commerce/core/widgets/or_divider.dart';
import 'package:e_commerce/core/widgets/social_login_button.dart';
import 'package:flutter/material.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextFormField(
                hintText: 'الاسم كامل', textInputType: TextInputType.name),
            SizedBox(
              height: 16,
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
              height: 16,
            ),
            TermsAndConditions(),
            SizedBox(
              height: 16,
            ),
            CustomButton(text: '  إنشاء حساب جديد', onPressed: () {}),
            SizedBox(
              height: 16,
            ),
            HaveAnAccount(),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
