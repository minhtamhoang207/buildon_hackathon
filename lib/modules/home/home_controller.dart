import 'dart:developer';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import '../../data/api/repository/auth_repository.dart';

class HomeController extends GetxController {
  final AuthRepository authRepository;
  HomeController({required this.authRepository});

  final PersistentTabController tabController = PersistentTabController(initialIndex: 0);


 // var user = Rxn<UserResponse>();
  var status = RxStatus.empty();

  @override
  void onInit() {
    log('INIT HOME');
    // WorkspaceBinding().dependencies();
    super.onInit();
    // loadUsers();
  }

  // Future<void> loadUsers() async {
  //   try{
  //     user.value = await authRepository.getUser();
  //   } catch(e){
  //     status = RxStatus.error(e.toString());
  //
  //   }
  // }
}