  import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

AppBar buildAppbar(context, {required String title}) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios_new),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyles.bold19,
      ),
    );
  }
