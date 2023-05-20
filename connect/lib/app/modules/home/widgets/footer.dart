import 'package:connect/app/modules/home/controllers/home_controller.dart';
import 'package:connect/app/modules/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FooterWidget extends GetView<HomeController> {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: birthdayCount(context)),
        Visibility(
          visible: !ResponsiveValueSet.isVisibleAppBarLeading(context),
          child: SizedBox(
            height: ResponsiveValueSet.spaceAfterAppBar(context),
          ),
        ),
        Visibility(
          visible: !ResponsiveValueSet.isVisibleAppBarLeading(context),
          child: Center(
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFFF2D977),
                  padding: EdgeInsets.all(
                      ResponsiveValueSet.addButtonPadding(context))),
              onPressed: () {},
              child: Text(
                'Add Your Birthday',
                style: TextStyle(
                    fontSize: ResponsiveValueSet.addButtonFontSize(context),
                    color: Colors.black,
                    fontFamily: 'Montserrat Bold'),
              ),
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              ResponsiveValueSet.bgImage(context),
              width: ResponsiveValueSet.bgImageSize(context),
            ),
            const SizedBox(width: 30),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  'MDSU 2022-23 | IT department | Macity Connect',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: ResponsiveValueSet.footerFontSize(context),
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 30),
          ],
        )
      ],
    );
  }

  Widget birthdayCount(BuildContext context) {
    return Obx(() {
      final count =
          controller.countStudents.value + controller.countTeachers.value;
      // log(controller.countStudents.value.toString());
      // log(controller.countTeachers.value.toString());
      // log(count.toString());
      return Text(
        'Woohoo! $count of us skipped an age today...',
        style: TextStyle(
            fontSize: ResponsiveValueSet.footerCountFontSize(context),
            color: Colors.white),
      );
    });
  }
}

class FooterNoDataWidget extends GetView<HomeController> {
  const FooterNoDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Center(
              child: Text(
            'Nobody\'s calendar flipped today!',
            style: TextStyle(
                fontSize: ResponsiveValueSet.footerCountFontSize(context),
                color: Colors.white),
          )),
          SizedBox(
            height: ResponsiveValueSet.spaceAfterAppBar(context),
          ),
          Visibility(
            visible: !ResponsiveValueSet.isVisibleAppBarLeading(context),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: ResponsiveValueSet.spaceAfterAppBar(context),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFF2D977),
                      padding: EdgeInsets.all(
                          ResponsiveValueSet.addButtonPadding(context))),
                  onPressed: () {},
                  child: Text(
                    'Add Your Birthday',
                    style: TextStyle(
                        fontSize: ResponsiveValueSet.addButtonFontSize(context),
                        color: Colors.black,
                        fontFamily: 'Montserrat Bold'),
                  ),
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: ResponsiveValueSet.isSmallScreen(context)
                ? MainAxisAlignment.center
                : MainAxisAlignment.end,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    'MDSU 2022-23 | IT department | Macity Connect',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: ResponsiveValueSet.footerFontSize(context),
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 30),
            ],
          )
        ],
      ),
    );
  }
}
