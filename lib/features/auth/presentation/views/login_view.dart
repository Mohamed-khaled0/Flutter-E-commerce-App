import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:e_commerce/core/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context, title: 'تسجيل الدخول'),
    );
  }
}
