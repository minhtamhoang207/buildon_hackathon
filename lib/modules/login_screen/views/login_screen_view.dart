import 'package:buildon_hackathon/routes/app_pages.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../../../gen/assets.gen.dart';
import '../../../shared/constants/colors.dart';
import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(15),
            Image.asset(
              Assets.images.imgMask.path,
            ),
            Text('COVID-19 Detection',
                style: TextStyle(
                    fontSize: 25,
                    color: AppColor.black,
                    fontWeight: FontWeight.bold)),
            const Gap(25),
            Text('Đăng nhập',
                style: TextStyle(
                    fontSize: 20,
                    color: AppColor.lightSeaGreen,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Text('Đăng nhập để bắt đầu sử dụng các chức năng của ứng dụng',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      color: AppColor.black,
                      fontWeight: FontWeight.normal)),
            ),
            const Gap(10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Số điện thoại hoặc email',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Mật khẩu',
                  suffixIcon: Icon(Icons.remove_red_eye_outlined, size: 18)
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text.rich(
                  textAlign: TextAlign.end,
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Quên mật khẩu? ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: AppColor.black,
                          )),
                      TextSpan(
                          text: 'Lấy lại mật khẩu',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {

                            },
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: AppColor.lightSeaGreen,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: (){
                Get.offAllNamed(Routes.DASHBOARD);
              },
              borderRadius: BorderRadius.circular(20),
              child: Ink(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColor.lightSeaGreen,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text('Đăng nhập',
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Chưa có tài khoản? ',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColor.black,
                        )),
                    TextSpan(
                        text: 'Đăng ký',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Get.toNamed(Routes.SIGN_UP_SCREEN);
                          },
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColor.lightSeaGreen,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
