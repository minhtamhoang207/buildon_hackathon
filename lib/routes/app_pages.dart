import 'package:get/get.dart';

import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home_screen/bindings/home_screen_binding.dart';
import '../modules/home_screen/views/home_screen_view.dart';
import '../modules/intro_screen/bindings/intro_screen_binding.dart';
import '../modules/intro_screen/views/intro_screen_view.dart';
import '../modules/login_screen/bindings/login_screen_binding.dart';
import '../modules/login_screen/views/login_screen_view.dart';
import '../modules/news_screen/bindings/news_screen_binding.dart';
import '../modules/news_screen/views/news_screen_view.dart';
import '../modules/sign_up_screen/bindings/sign_up_screen_binding.dart';
import '../modules/sign_up_screen/views/sign_up_screen_view.dart';
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
      name: Routes.INTRO_SCREEN,
      page: () => IntroScreenView(),
      binding: IntroScreenBinding(),
    ),
    GetPage(
      name: Routes.LOGIN_SCREEN,
      page: () => LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
        name: Routes.SIGN_UP_SCREEN,
        page: () => SignUpScreenView(),
        binding: SignUpScreenBinding(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.HOME_SCREEN,
      page: () => HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: Routes.NEWS_SCREEN,
      page: () => NewsScreenView(),
      binding: NewsScreenBinding(),
    ),
  ];
}
