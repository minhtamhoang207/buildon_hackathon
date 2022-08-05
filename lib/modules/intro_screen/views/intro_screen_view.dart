import 'package:buildon_hackathon/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import '../../../gen/assets.gen.dart';
import '../controllers/intro_screen_controller.dart';

class IntroScreenView extends GetView<IntroScreenController> {
  const IntroScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter([
      PageViewModel(
        pageColor: AppColor.white,
        iconImageAssetPath: Assets.images.imgIntro1.path,
        body: Column(
          children: [
            Text('Ứng dụng hỗ trợ những thông tin cần thiết liên quan tới dịch bệnh', style: TextStyle(
                fontSize: 20,
                color: AppColor.lightSeaGreen,
                fontWeight: FontWeight.bold
            )),
            const Gap(10),
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColor.lightSeaGreen,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text('Bắt đầu', style: TextStyle(
                    fontSize: 20,
                    color: AppColor.white,
                    fontWeight: FontWeight.bold
                )),
              ),
            )
          ],
        ),
        title: Column(
          children: [
            Image.asset(
              Assets.images.imgMask.path,
            ),
            Text('COVID-19 Detection', style: TextStyle(
              fontSize: 30,
              color: AppColor.black,
              fontWeight: FontWeight.bold
            ))
          ],
        ),
        mainImage: Image.asset(
          Assets.images.imgIntro1.path,
          alignment: Alignment.center,
        ),
        titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      ),
      PageViewModel(
        pageColor: AppColor.white,
        iconImageAssetPath: Assets.images.imgIntro2.path,
        body: Text('Ứng dụng hỗ trợ những thông tin cần thiết liên quan tới dịch bệnh', style: TextStyle(
            fontSize: 30,
            color: AppColor.lightSeaGreen,
            fontWeight: FontWeight.bold
        )),
        title: Column(
          children: [
            Image.asset(
              Assets.images.imgMask.path,
            ),
            Text('COVID-19 Detection', style: TextStyle(
                fontSize: 30,
                color: AppColor.black,
                fontWeight: FontWeight.bold
            ))
          ],
        ),
        mainImage: Image.asset(
          Assets.images.imgIntro2.path,
          alignment: Alignment.center,
        ),
        titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      )
    ]);
  }
}
