import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:seequl/app/utils/common.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
          bottomNavigationBar: controller.isWidgetVisible.value == false
              ? const SizedBox()
              : AppCommons.setBottomDrawer(context, 1),
          body: SafeArea(
              child: Stack(
            children: [
              Image.asset(
                'assets/images/image 163.png',
                fit: BoxFit.fill,
                width: Get.width,
                height: Get.height,
              ),

              //menu icon
              Visibility(
                visible: controller.isWidgetVisible.value,
                child: Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SvgPicture.asset('assets/icons/menu.svg'),
                  ),
                ),
              ),

              ///left icon
              Visibility(
                visible: !controller.isWidgetVisible.value,
                child: Positioned(
                  bottom: 32,
                  left: 1,
                  child: InkWell(
                    onTap: () => controller.changeVisibility(),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: SvgPicture.asset('assets/icons/left icon.svg'),
                    ),
                  ),
                ),
              ),

              //text
              Visibility(
                visible: controller.isWidgetVisible.value,
                child: Positioned(
                    bottom: 1,
                    left: 20,
                    right: 48,
                    child: Container(
                      decoration: ShapeDecoration(
                        color: const Color(0xA84C4243),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Color(0xFFC4C4C4)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet consectetur. Amet aenean et nunc enim ornare vulputate. Id blandit massa id dictum pellentesque. Nulla vitae aliquam massa lectus tincidunt tortor. Quisque diam.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
              Visibility(
                visible: controller.isWidgetVisible.value,
                child: Positioned(
                  bottom: 1,
                  right: 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: SvgPicture.asset('assets/icons/gallery.svg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Column(
                          children: [
                            SvgPicture.asset('assets/icons/comments.svg'),
                            const Text(
                              '45k',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.66,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Column(
                          children: [
                            SvgPicture.asset('assets/icons/love.svg'),
                            const Text(
                              '45k',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.66,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: SvgPicture.asset('assets/icons/share.svg'),
                      ),
                      InkWell(
                        onTap: () => controller.changeVisibility(),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child:
                              SvgPicture.asset('assets/icons/right icon.svg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )));
    });
  }
}
