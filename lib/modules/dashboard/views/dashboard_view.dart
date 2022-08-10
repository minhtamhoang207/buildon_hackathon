import 'package:buildon_hackathon/modules/profile_screen/views/profile_screen_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../shared/constants/colors.dart';
import '../../home_screen/views/home_screen_view.dart';
import '../../news_screen/views/news_screen_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
        context,
        controller: controller.tabController,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: AppColor.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10)
          ),
          colorBehindNavBar: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 6,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        onItemSelected: (index){
          // if(index == 1){
          //   Get.find<ProfileController>().loadUser();
          // }
        },
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style6
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomeScreenView(),
      const NewsScreenView(),
      const Text('TAB 2'),
      const Text('TAB 2'),
      const ProfileScreenView()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        activeColorPrimary: AppColor.lightSeaGreen,
        inactiveColorPrimary: Colors.grey,
        title: 'Trang chủ'
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.people_alt_outlined),
        activeColorPrimary: AppColor.lightSeaGreen,
        inactiveColorPrimary: Colors.grey,
        title: 'Kết nối'
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.news_solid),
        activeColorPrimary: AppColor.lightSeaGreen,
        inactiveColorPrimary: Colors.grey,
        title: 'Tin tức'
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.chat_bubble_text),
        activeColorPrimary: AppColor.lightSeaGreen,
        inactiveColorPrimary: Colors.grey,
        title: 'Chatbot'
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.settings),
        activeColorPrimary: AppColor.lightSeaGreen,
        inactiveColorPrimary: Colors.grey,
        title: 'Cài đặt'
      ),
    ];
  }
}
