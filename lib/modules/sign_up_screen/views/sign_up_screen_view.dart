import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../../../gen/assets.gen.dart';
import '../../../shared/constants/colors.dart';
import '../controllers/sign_up_screen_controller.dart';

class SignUpScreenView extends GetView<SignUpScreenController> {
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
              Text('Đăng ký',
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColor.lightSeaGreen,
                      fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: Text('Đăng ký tài khoản sử dụng ứng dụng',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color: AppColor.black,
                        fontWeight: FontWeight.normal)),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Số điện thoại hoặc email',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Mật khẩu',
                      suffixIcon: Icon(Icons.remove_red_eye_outlined, size: 18)
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Nhập lại mật khẩu',
                      suffixIcon: Icon(Icons.remove_red_eye_outlined, size: 18)
                  ),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(20),
                child: Ink(
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  decoration: BoxDecoration(
                      color: AppColor.lightSeaGreen,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text('Đăng ký',
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
                          text: 'Đăng nhập',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.back();
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
