import 'package:get/get.dart';

import 'data/api/base_provider.dart';
import 'shared/services/storage_service.dart';


class DependencyInjection {
  static Future<void> init() async {
    await Get.putAsync(() => RestClient().init());
    await Get.putAsync(() => StorageService().init());
  }
}