import 'package:connect/app/modules/consts/responsive_helper.dart';
import 'package:connect/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   leading: Row(

        //   ),
        //   title: Text(
        //     'Malabar Dental College and Dheeksha ',
        //     style: TextStyle(
        //         fontSize: ResponsiveValueSet.appBarTitleFontSize(context)),
        //   ),
        //   centerTitle: true,
        //   backgroundColor: Colors.black,
        //   elevation: 0,
        //   shape: const Border(bottom: BorderSide(color: Colors.white, width: .9)),
        // ),
        body: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.8.w),
          child: SizedBox(
            height: 7.h,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 1.8.w,
                    children: [
                      Text(
                        'MDSC 2022-23',
                        style: TextStyle(
                            fontSize: ResponsiveValueSet.appBarSubTitleFontSize(
                                context),
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 7.h,
                        child: const VerticalDivider(
                          color: Colors.white,
                          thickness: 1,
                          width: 0,
                        ),
                      )
                    ],
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 1.8.w,
                    children: [
                      SizedBox(
                        height: 7.h,
                        child: const VerticalDivider(
                          color: Colors.white,
                          thickness: 1,
                          width: 0,
                        ),
                      ),
                      Text(
                        'Wed May 17 2023',
                        style: TextStyle(
                            fontSize: ResponsiveValueSet.appBarSubTitleFontSize(
                                context),
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const Divider(
          color: Colors.white,
          thickness: 1,
          height: 0,
        )
      ],
    ));
  }
}
