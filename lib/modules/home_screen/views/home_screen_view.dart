import 'package:buildon_hackathon/shared/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../../../gen/assets.gen.dart';
import '../controllers/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                  child: Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 20,
                  top: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.images.imgMask.path,
                      height: 100,
                      width: 100,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Text('Xin chào, Tom',
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 18,
                                color: AppColor.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    )
                  ],
                ),
              )),
              SliverToBoxAdapter(
                  child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Việt Nam',
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColor.black,
                            fontWeight: FontWeight.bold)),
                    const Spacer(),
                    Text('21 September 2021, 18.30',
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColor.black,
                            fontWeight: FontWeight.normal)),
                  ],
                ),
              )),
              SliverToBoxAdapter(
                  child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColor.black.withOpacity(0.1)),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          const Gap(15),
                          const Icon(Icons.add),
                          Text('6760',
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: AppColor.black,
                                  fontWeight: FontWeight.bold)),
                          const Gap(5),
                          Text('Nhiễm bệnh',
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.black,
                                  fontWeight: FontWeight.bold)),
                          const Gap(15),
                        ],
                      ),
                    )),
                    const Gap(15),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColor.black.withOpacity(0.1)),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          const Gap(15),
                          const Icon(Icons.add),
                          Text('6760',
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: AppColor.black,
                                  fontWeight: FontWeight.bold)),
                          const Gap(5),
                          Text('Nhiễm bệnh',
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.black,
                                  fontWeight: FontWeight.bold)),
                          const Gap(15),
                        ],
                      ),
                    )),
                    const Gap(15),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColor.black.withOpacity(0.1)),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          const Gap(15),
                          const Icon(Icons.add),
                          Text('6760',
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: AppColor.black,
                                  fontWeight: FontWeight.bold)),
                          const Gap(5),
                          Text('Nhiễm bệnh',
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.black,
                                  fontWeight: FontWeight.bold)),
                          const Gap(15),
                        ],
                      ),
                    )),
                  ],
                ),
              )),
              SliverPersistentHeader(
                pinned: true,
                delegate: PersistentHeader(
                    widget: Container(
                  color: Colors.purple,
                )),
              ),
              SliverToBoxAdapter(
                  child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 20),
                child: Text('Chức năng',
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 18,
                        color: AppColor.black,
                        fontWeight: FontWeight.bold)),
              )),
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return HomeFunctionWidget(functionName: 'grid item $index');
                  },
                  childCount: 7,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
              ),
              SliverToBoxAdapter(
                  child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 20),
                child: Text('Khuyến nghị',
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 18,
                        color: AppColor.black,
                        fontWeight: FontWeight.bold)),
              )),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Card(
                      margin: EdgeInsets.all(15),
                      child: Container(
                        color: Colors.orange[100 * (index % 12 + 1)],
                        height: 60,
                        alignment: Alignment.center,
                        child: Text(
                          "List Item $index",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    );
                  },
                  childCount: 10,
                ),
              ),
              const SliverToBoxAdapter(child: Gap(20)),
            ],
          ),
        ));
  }
}

class PersistentHeader extends SliverPersistentHeaderDelegate {
  final Widget widget;

  PersistentHeader({required this.widget});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      width: double.infinity,
      height: 56.0,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Colors.white,
        elevation: 5.0,
        child: Center(child: widget),
      ),
    );
  }

  @override
  double get maxExtent => 56.0;

  @override
  double get minExtent => 56.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class HomeFunctionWidget extends StatelessWidget {
  final String functionName;
  const HomeFunctionWidget({Key? key, required this.functionName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const Icon(Icons.add_alarm_rounded),
          const Gap(10),
          FittedBox(child: Text(functionName))
        ],
      ),
    ));
  }
}
