import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import '../../shared/constants/colors.dart';
import 'login_controller.dart';


class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: _buildWidget(context),
      ),
    );
  }

  Widget _buildWidget(BuildContext context) {
    return const KeyboardDismissOnTap(
      child: Center(child: Text('Login Screen here'))
    );
  }
}
