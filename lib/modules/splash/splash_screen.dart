import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../shared/constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.darkLiver,
      child: Center(
        child: Image.asset(
          Assets.images.imgMask.path,
        ),
      ),
    );
  }
}
