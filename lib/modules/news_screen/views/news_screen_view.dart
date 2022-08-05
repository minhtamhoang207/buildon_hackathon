import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/news_screen_controller.dart';

class NewsScreenView extends GetView<NewsScreenController> {
  const NewsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: 'https://covidmaps.hanoi.gov.vn/',
      debuggingEnabled: true,
    );
  }
}
