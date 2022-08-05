import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import '../controllers/news_screen_controller.dart';

class NewsScreenView extends GetView<NewsScreenController> {
  const NewsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      initialUrlRequest: URLRequest(url: Uri.parse('https://covidmaps.hanoi.gov.vn/')),
      onReceivedServerTrustAuthRequest: (controller, challenge) async {
        //Do some checks here to decide if CANCELS or PROCEEDS
        return ServerTrustAuthResponse(action: ServerTrustAuthResponseAction.PROCEED);
      },
    );
  }
}
