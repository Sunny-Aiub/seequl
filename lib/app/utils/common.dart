import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AppCommons {
  static setBottomDrawer(
    BuildContext context,
    int activeNumber,
  ) {
    return Theme(
      data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: const Color.fromARGB(1, 255, 255, 255),
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          primaryColor: Colors.red,
          textTheme: Theme.of(context).textTheme.copyWith(
              bodySmall: const TextStyle(
                  color: Colors
                      .yellow))), // sets the inactive color of the `BottomNavigationBar`
      child: Container(
        height: 72,
        padding: const EdgeInsets.all(8),
        width: Get.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///go to home
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset('assets/icons/home icon.svg'),
            ),

            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset('assets/icons/qucon icon.svg'),
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset('assets/icons/zaady icon.svg'),
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset('assets/icons/organize icon.svg'),
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset('assets/icons/Profile.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
