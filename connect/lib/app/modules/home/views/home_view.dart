import 'package:connect/app/modules/home/controllers/home_controller.dart';
import 'package:connect/app/modules/home/widgets/appbar.dart';
import 'package:connect/app/modules/home/widgets/birthday_card_view.dart';
import 'package:connect/app/modules/home/widgets/footer.dart';
import 'package:connect/app/modules/home/widgets/header.dart';
import 'package:connect/app/modules/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import 'package:sizer/sizer.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarWidget(),
          const Divider(
            color: Colors.white,
            thickness: 1,
            height: 0,
          ),
          SizedBox(
            height: ResponsiveValueSet.spaceAfterAppBar(context),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              children: [
                const HeaderWidget(),
                SizedBox(
                  height: ResponsiveValueSet.spaceAfterAppBar(context) - 1.7.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/icons/arrow.png',
                      width: ResponsiveValueSet.arrowSize(context),
                    ),
                    SizedBox(
                      width:
                          ResponsiveValueSet.birthdayCardPaddingSides(context),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SingleChildScrollView(
                            physics: const BouncingScrollPhysics(
                                decelerationRate:
                                    ScrollDecelerationRate.normal),
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 1.w, vertical: 2.h),
                              child: Wrap(
                                spacing:
                                    ResponsiveValueSet.birthdayCardSpaceBetween(
                                        context),
                                direction: Axis.horizontal,
                                children: listViewBuilder(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: ResponsiveValueSet.spaceAfterAppBar(context),
                    ),
                    RotatedBox(
                        quarterTurns: -2,
                        child: Image.asset(
                          'assets/icons/arrow.png',
                          width: ResponsiveValueSet.arrowSize(context),
                        )),
                  ],
                )
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          const FooterWidget()
        ],
      ),
    );
  }

  List<Widget> listViewBuilder(BuildContext context) {
    HomeController controller = Get.find();
    final List<Widget> children = [];
    int index = 0;
    for (var i = 0; i < 20; i++) {
      if (i.isEven) {
        if (index > 0) {
          index = index + 1;
        }
        children.add(
          Transform.rotate(
            angle: -math.pi / 30,
            child: BirthdayCardView(
              type: 0,
              name: controller.students[index].studentName,
              data:
                  '''Age: ${DateTime.now().year - controller.students[index].dob.year}
Course: ${controller.students[index].course}
Batch: ${controller.students[index].batchYear}''',
              image: controller.students[index].profilePic,
            ),
          ),
        );
      } else {
        children.add(
          Transform.rotate(
            angle: math.pi / 30,
            child: BirthdayCardView(
              type: 1,
              name: controller.students[index].studentName,
              data:
                  '''Age: ${DateTime.now().year - controller.students[index].dob.year}
Course: ${controller.students[index].course}
Batch: ${controller.students[index].batchYear}''',
              image: '',
            ),
          ),
        );
      }
    }
    return children;
  }
}
