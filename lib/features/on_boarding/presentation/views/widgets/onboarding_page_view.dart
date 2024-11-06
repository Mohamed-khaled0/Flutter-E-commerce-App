import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
          image: Assets.imagesPageViewItem1Image,
          background: Assets.imagesPageViewItem1BackgroundImage,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبًا بك في',
              ),
              Text(
                '  HUB',
                // style: TextStyles.bold23.copyWith(
                //   color: AppColors.secondaryColor,
                // ),
              ),
              Text(
                'Fruit',
                // style: TextStyles.bold23.copyWith(
                //   color: AppColors.primaryColor,
                // ),
              ),
            ],
          ),
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        )
      ],
    );
  }
}
