import 'package:buildon_hackathon/routes/app_pages.dart';
import 'package:buildon_hackathon/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import '../../../gen/assets.gen.dart';
import '../controllers/intro_screen_controller.dart';

class IntroScreenView extends GetView<IntroScreenController> {
  const IntroScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      [
        _buildPageView(Assets.images.imgIntro1.path,
            'Ứng dụng hỗ trợ những thông tin\ncần thiết liên quan tới dịch bệnh'),
        _buildPageView(Assets.images.imgIntro2.path,
            'Dự đoán khả năng nhiệm bệnh Covid - 19\nvà các bệnh liên quan tới phổi dựa trên âm\nthanh tiếng ho và ảnh chụp X - quang\nngười dùng cung cấp.'),
        _buildPageView(Assets.images.imgIntro3.path,
            'Sử dụng chatbot như một người bạn\nđồng hành và hỗ trợ trong dịch bệnh'),
        _buildPageView(Assets.images.imgIntro4.path,
            'Gửi đến người dùng những tin tức về tình hình\ndịch bệnh nhanh chóng và chính xác  '),
        _buildPageView(Assets.images.imgIntro5.path,
            'Tìm kiếm người cần hỗ trợ\ntrong khó khăn dịch bệnh và người có thể\ntrợ giúp thông qua ứng dụng'),
      ],
      showNextButton: true,
      showBackButton: true,
      nextText: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Text('Tiếp theo',
            style: TextStyle(
                fontSize: 15,
                color: AppColor.lightSeaGreen,
                fontWeight: FontWeight.bold)),
      ),
      backText: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text('Trở lại',
            style: TextStyle(
                fontSize: 15,
                color: AppColor.lightSeaGreen,
                fontWeight: FontWeight.bold)),
      ),
      doneText: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Text('Đăng nhập',
            style: TextStyle(
                fontSize: 15,
                color: AppColor.lightSeaGreen,
                fontWeight: FontWeight.bold)),
      ),
      onTapDoneButton: (){
        Get.offAllNamed(Routes.LOGIN_SCREEN);
      },
    );
  }

  _buildPageView(String imgPath, String content) {
    return PageViewModel(
      pageColor: AppColor.white,
      iconImageAssetPath: Assets.images.imgMask.path,
      body: FittedBox(
        child: Text(content,
            style: TextStyle(
                fontSize: 20,
                color: AppColor.black,
                fontWeight: FontWeight.bold)),
      ),
      title: Column(
        children: [
          Image.asset(
            Assets.images.imgMask.path,
          ),
          Text('COVID-19 Detection',
              style: TextStyle(
                  fontSize: 30,
                  color: AppColor.lightSeaGreen,
                  fontWeight: FontWeight.bold))
        ],
      ),
      mainImage: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Image.asset(
          imgPath,
          height: Get.height * 40 / 100,
          width: Get.width - 50,
        ),
      ),
    );
  }
}
