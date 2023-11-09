import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seequl/app/utils/extension/colors.dart';
import 'package:badges/badges.dart' as badges;

class AppCommons {
  static setBottomDrawer(
    BuildContext context,
    int activeNumber,
  ) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: HexColor.fromHex("#2E2E2E"),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: HexColor.fromHex("#2E2E2E"),
        ),
        height: 80,
        padding: const EdgeInsets.all(8),
        width: Get.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///go to home
            GestureDetector(
              onTap: () {},
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/home icon.svg'),
                  const Text(
                    'Apps',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFDD5E),
                      fontSize: 13,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            GestureDetector(
              onTap: () {},
              child: Wrap(

                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  badges.Badge(
                      position: badges.BadgePosition.custom(top: -12, end: -16),
                      badgeStyle: badges.BadgeStyle(
                        badgeColor: HexColor.fromHex("#FA8989"),
                        shape: badges.BadgeShape.square,
                        borderRadius: BorderRadius.circular(6),
                        padding: const EdgeInsets.all(6)
                      ),
                      badgeContent: const Text(
                        '25',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      child: SvgPicture.asset('assets/icons/qucon icon.svg')),
                  const Text(
                    'Qucon',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            
            
             GestureDetector(
              onTap: () {},
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/zaady icon.svg'),
                  const Text(
                    'Zaady',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),


             GestureDetector(
              onTap: () {},
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/organize icon.svg'),
                  const Text(
                    'organize',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

             GestureDetector(
              onTap: () {},
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/Profile.svg'),
                  const Text(
                    'Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
