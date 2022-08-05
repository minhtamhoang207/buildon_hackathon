import 'package:get/get.dart';

import '../modules/home/home_binding.dart';
import '../modules/home/home_screen.dart';
import '../modules/intro_screen/bindings/intro_screen_binding.dart';
import '../modules/intro_screen/views/intro_screen_view.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_screen.dart';
import '../modules/sign_up/sign_up_binding.dart';
import '../modules/sign_up/sign_up_screen.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.splash,
        page: () => const SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: Routes.login,
        page: () => const LoginScreen(),
        binding: LoginBinding()),
    GetPage(
        name: Routes.home,
        page: () => const HomePage(),
        binding: HomeBinding()),
    GetPage(
        name: Routes.singUp,
        transition: Transition.leftToRightWithFade,
        page: () => const SignUpScreen(),
        binding: SignUpBinding()),
    GetPage(
      name: Routes.INTRO_SCREEN,
      page: () => IntroScreenView(),
      binding: IntroScreenBinding(),
    ),
  ];
}
