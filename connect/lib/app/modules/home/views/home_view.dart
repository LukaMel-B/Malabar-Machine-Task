import 'package:connect/app/modules/home/controllers/home_controller.dart';
import 'package:connect/app/modules/home/widgets/appbar.dart';
import 'package:connect/app/modules/utils/responsive_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'It\'s your special day — \nLet’s celebrate it\ntogether!',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: ResponsiveValueSet.headingFontSize(context),
                          color: Colors.white,
                          fontFamily: 'Montserrat Black'),
                    ),
                    Visibility(
                      visible:
                          ResponsiveValueSet.isVisibleAppBarLeading(context),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: const Color(0xFFF2D977),
                            padding: EdgeInsets.all(
                                ResponsiveValueSet.addButtonPadding(context))),
                        onPressed: () {},
                        child: const Text(
                          'Add Your Birthday',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat Bold'),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: const Column(children: [
                    Row(
                      children: [
                        Icon(
                          Icons.west_rounded,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.east_rounded,
                          color: Colors.white,
                        )
                      ],
                    )
                  ]),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Center(
            child: Text(
              'Woohoo! 5 of us skipped an age today...',
              style: TextStyle(
                  fontSize: ResponsiveValueSet.webTitleFontSize(context),
                  color: Colors.white),
            ),
          ),
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
                child: const Text(
                  'Add Your Birthday',
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'Montserrat Bold'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: ResponsiveValueSet.spaceAfterAppBar(context),
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
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  'MDSU 2022-23 | IT department | Macity Connect',
                  style: TextStyle(
                      fontSize: ResponsiveValueSet.footerFontSize(context),
                      color: Colors.white),
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
