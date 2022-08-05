import 'package:buildon_hackathon/modules/sign_up/sign_up_controller.dart';
import 'package:get/get.dart';

class SignUpBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController(authRepository: Get.find()));
  }
}