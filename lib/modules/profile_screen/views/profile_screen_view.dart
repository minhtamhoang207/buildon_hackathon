import 'package:buildon_hackathon/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../controllers/profile_screen_controller.dart';

class ProfileScreenView extends GetView<ProfileScreenController> {
  const ProfileScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileScreenView'),
        centerTitle: true,
      ),
      body: Center(
        child: QrImage(
          data:
          """
          Sample QR
          """,
          version: QrVersions.auto,
          embeddedImage: AssetImage(Assets.images.imgMask.path),
          size: 200.0,
        ),
      ),
    );
  }
}
